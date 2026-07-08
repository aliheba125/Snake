#!/usr/bin/env python3
# محاكاة جراحية بـ unicorn خام لـ libengine.so:
# - تحمّل صورة الملف كاملة (RWX) لدعم الكود ذاتي التعديل
# - تحيّد جدار مقاومة المحاكاة: clock_gettime يعيد زمناً متصاعداً واقعياً،
#   وكل svc يُعالَج دون تعطّل (mmap يخصّص، البقية تعيد قيمة حميدة)
# - تلتقط كل كتابات الذاكرة وتمسحها بحثاً عن سلاسل مفكوكة
import sys, struct, re
from unicorn import *
from unicorn.arm64_const import *
from elftools.elf.elffile import ELFFile

LIB="/projects/sandbox/Snake/raw/lib/arm64-v8a/libengine.so"
raw=open(LIB,'rb').read()
e=ELFFile(open(LIB,'rb'))

IMG_BASE=0x0
IMG_SIZE=0xA00000          # يغطي الملف كله (~10MB) مع هامش
STACK=0x100000000; STACK_SZ=0x200000
HEAP=0x200000000; HEAP_SZ=0x4000000   # لتخصيصات mmap
heap_cur=[HEAP]
writes=[]                 # (addr,size,value)
clock=[1000, 0]           # ثوانٍ, نانو - يتصاعد

def align(x,a=0x1000): return (x+a-1)&~(a-1)

def hook_mem_invalid(uc,access,address,size,value,user):
    # عيّن الصفحة عند أي وصول غير معيّن (كود ذاتي التعديل / مؤشرات عشوائية)
    base=address & ~0xFFF
    try: uc.mem_map(base, 0x4000, UC_PROT_ALL)
    except UcError: pass
    return True

def hook_write(uc,access,address,size,value,user):
    writes.append((address,size,value))

def hook_intr(uc,intno,user):
    # svc -> اقرأ رقم النظام من x8
    x8=uc.reg_read(UC_ARM64_REG_X8)
    if x8==222 or x8==215:      # mmap / old mmap
        length=uc.reg_read(UC_ARM64_REG_X1)
        a=align(heap_cur[0]); heap_cur[0]=a+align(length or 0x1000)
        try: uc.mem_map(a, align(length or 0x1000), UC_PROT_ALL)
        except UcError: pass
        uc.reg_write(UC_ARM64_REG_X0, a)
    elif x8==113:               # clock_gettime -> اكتب timespec متصاعد
        ptr=uc.reg_read(UC_ARM64_REG_X1)
        clock[1]+=1500000; 
        if clock[1]>=1_000_000_000: clock[0]+=1; clock[1]-=1_000_000_000
        try: uc.mem_write(ptr, struct.pack("<qq", clock[0], clock[1]))
        except UcError: pass
        uc.reg_write(UC_ARM64_REG_X0, 0)
    elif x8 == 226:             # mprotect
        uc.reg_write(UC_ARM64_REG_X0, 0)
    else:
        uc.reg_write(UC_ARM64_REG_X0, 0)

def run(va, sz, max_ins=8_000_000):
    global writes; writes=[]
    uc=Uc(UC_ARCH_ARM64, UC_MODE_LITTLE_ENDIAN)
    uc.mem_map(IMG_BASE, IMG_SIZE, UC_PROT_ALL)
    uc.mem_write(IMG_BASE, raw)                    # صورة الملف كاملة
    uc.mem_map(STACK, STACK_SZ, UC_PROT_ALL)
    uc.mem_map(HEAP, HEAP_SZ, UC_PROT_ALL)
    uc.reg_write(UC_ARM64_REG_SP, STACK+STACK_SZ//2)
    # هيّئ سجلات الوسائط بمؤشرات صالحة للقراءة/الكتابة
    for r in (UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2,UC_ARM64_REG_X3):
        uc.reg_write(r, HEAP+0x1000000)
    uc.hook_add(UC_HOOK_MEM_READ_UNMAPPED|UC_HOOK_MEM_WRITE_UNMAPPED|UC_HOOK_MEM_FETCH_UNMAPPED, hook_mem_invalid)
    uc.hook_add(UC_HOOK_MEM_WRITE, hook_write)
    uc.hook_add(UC_HOOK_INTR, hook_intr)
    end=va+sz
    try:
        uc.emu_start(va, end, count=max_ins)
    except UcError as ex:
        pass
    return len(writes)

def scan_writes():
    # اجمع البايتات المكتوبة في خريطة عنوان->بايت ثم امسح السلاسل
    mem={}
    for addr,size,val in writes:
        for k in range(size):
            mem[addr+k]=(val>>(8*k))&0xff
    # حوّل إلى مقاطع متجاورة
    if not mem: return []
    addrs=sorted(mem)
    segs=[]; cur=[addrs[0], bytearray([mem[addrs[0]]])]
    for a in addrs[1:]:
        if a==cur[0]+len(cur[1]): cur[1].append(mem[a])
        else: segs.append(cur); cur=[a, bytearray([mem[a]])]
    segs.append(cur)
    found=[]
    for base,b in segs:
        for m in re.finditer(rb'[\x20-\x7e]{5,}', bytes(b)):
            found.append((base+m.start(), m.group()))
    return found

if __name__=="__main__":
    va=int(sys.argv[1],16); sz=int(sys.argv[2]); name=sys.argv[3] if len(sys.argv)>3 else hex(va)
    n=run(va,sz)
    print(f"[{name}] كتابات ذاكرة ملتقطة: {n}")
    strs=scan_writes()
    # رشّح المتكرّر والضجيج
    uniq={}
    for a,s in strs: uniq.setdefault(s, a)
    print(f"سلاسل فريدة في المكتوب: {len(uniq)}")
    for s,a in list(uniq.items())[:60]:
        print(f"  {a:#010x}: {s.decode(errors='replace')!r}")
