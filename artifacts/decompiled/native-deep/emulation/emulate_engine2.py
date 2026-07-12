#!/usr/bin/env python3
"""
Advanced dynamic emulation of libengine.so (ARM64) via Qiling/Unicorn with a
REAL syscall layer:
  * mmap actually allocates & maps memory (bump allocator) and returns a valid ptr
    -> the obfuscated code can write its runtime-generated stubs and PROCEED,
  * mprotect/munmap succeed, openat/connect/execve/etc. are logged (path capture),
  * every other number returns a benign 0 (never "unhandled").
After running the init constructors we scan freshly-allocated memory for
runtime-DECRYPTED strings (defeating the compile-time string encryption).
"""
import os, sys, collections, shutil, string
ROOT="/projects/sandbox/snake_decompile"
ROOTFS=ROOT+"/tools/qiling_rootfs/arm64_android"
LIB=ROOT+"/extracted_lib/lib/arm64-v8a/libengine.so"
os.makedirs(ROOTFS+"/data",exist_ok=True); shutil.copy(LIB,ROOTFS+"/data/libengine.so")

from qiling import Qiling
from qiling.const import QL_VERBOSE
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

SYS={17:"getcwd",24:"dup3",25:"fcntl",29:"ioctl",34:"mkdirat",35:"unlinkat",
 48:"faccessat",56:"openat",57:"close",59:"pipe2",61:"getdents64",62:"lseek",
 63:"read",64:"write",78:"readlinkat",79:"newfstatat",80:"fstat",93:"exit",
 94:"exit_group",96:"set_tid_address",98:"futex",99:"set_robust_list",
 113:"clock_gettime",115:"clock_nanosleep",117:"ptrace",122:"sched_setaffinity",
 123:"sched_getaffinity",129:"kill",131:"tgkill",134:"rt_sigaction",
 135:"rt_sigprocmask",137:"rt_sigtimedwait",160:"uname",167:"prctl",172:"getpid",
 173:"getppid",174:"getuid",175:"geteuid",176:"getgid",177:"getegid",178:"gettid",
 179:"sysinfo",198:"socket",200:"bind",203:"connect",206:"sendto",207:"recvfrom",
 214:"brk",215:"munmap",216:"mremap",220:"clone",221:"execve",222:"mmap",
 226:"mprotect",233:"madvise",260:"wait4",261:"prlimit64",278:"getrandom",
 279:"memfd_create",281:"execveat",293:"rseq",53:"fchmodat",226:"mprotect"}

syscalls=collections.Counter()
paths=[]           # openat/exec/connect targets (real file/host access)
exec_allocs=[]     # mmap PROT_EXEC regions (code-gen)
alloc_regions=[]   # (addr,len) of all mmap allocations -> scan for decrypted data
writes=[]          # write() buffers (possible decrypted output)
insn=[0]
CAP=6_000_000

ALLOC=[0x7f0000000000]  # bump allocator cursor
PAGE=0x1000
def roundup(n): return (n+PAGE-1)&~(PAGE-1)

def main():
    print("[*] loading libengine.so")
    ql=Qiling([ROOTFS+"/data/libengine.so"],ROOTFS,verbose=QL_VERBOSE.OFF)
    base=ql.loader.load_address
    for img in ql.loader.images:
        if "libengine" in str(img.path): base=img.base
    print(f"[*] base={hex(base)}")

    def rd(r): return ql.arch.regs.read(r)
    def cstr(p):
        try:
            s=ql.mem.string(p); return s if s and all(c in string.printable for c in s[:1]) else ""
        except: return ""

    def dispatch(ql,*a):
        n=rd("x8"); nm=SYS.get(n,f"sys_{n}"); syscalls[nm]+=1
        x0,x1,x2=rd("x0"),rd("x1"),rd("x2")
        ret=0
        try:
            if nm=="mmap":
                length=roundup(x1 if x1 else PAGE)
                addr=ALLOC[0]; ALLOC[0]+=length+PAGE
                ql.mem.map(addr,length)
                # fill executable allocations with ARM64 RET so jumps into
                # not-yet-written stubs return gracefully instead of faulting
                ql.mem.write(addr, (b"\xc0\x03\x5f\xd6")*(length//4))
                alloc_regions.append((addr,length))
                if x2 & 4: exec_allocs.append((addr,length,x2))
                ret=addr
            elif nm in ("mprotect","munmap","madvise","mremap"): ret=0
            elif nm=="openat":
                p=cstr(x1) or cstr(x0)
                if p: paths.append(("openat",p))
                ret=100+len(paths)   # fake fd
            elif nm in ("newfstatat","faccessat","readlinkat","statfs"):
                p=cstr(x1) or cstr(x0)
                if p: paths.append((nm,p))
                ret=0
            elif nm in ("connect","sendto","bind"):
                paths.append((nm,f"sockaddr@{hex(x1)}")); ret=0
            elif nm in ("execve","execveat"):
                p=cstr(x0) or cstr(x1); paths.append((nm,p)); ret=0
            elif nm=="write":
                try:
                    buf=ql.mem.read(x1,min(x2,256))
                    if buf and sum(32<=c<127 for c in buf)>len(buf)*0.6:
                        writes.append((x0,bytes(buf)))
                except: pass
                ret=x2
            elif nm=="read": ret=0
            elif nm in ("getpid","getppid"): ret=12345
            elif nm in ("getuid","geteuid","getgid","getegid"): ret=10123
            elif nm=="gettid": ret=12346
            elif nm=="getrandom":
                try: ql.mem.write(x0,bytes([(i*7+13)&0xff for i in range(x1)])); 
                except: pass
                ret=x1
            elif nm=="set_tid_address": ret=12346
            elif nm in ("clock_gettime","gettimeofday"):
                try: ql.mem.write(x1,b"\x00"*16)
                except: pass
                ret=0
            elif nm in ("exit","exit_group"): ql.emu_stop(); ret=0
            elif nm=="brk": ret=x0 if x0 else 0x600000000
            else: ret=0
        except Exception:
            ret=0
        ql.arch.regs.write("x0",ret & 0xffffffffffffffff)
        return ret
    for i in range(0,460):
        try: ql.os.set_syscall(i,dispatch)
        except: pass

    # TLS (stack-guard read at tpidr_el0+0x28)
    TLS=0x7ff000000000
    ql.mem.map(TLS,0x8000); ql.mem.write(TLS,b"\x11"*0x8000)
    ql.arch.regs.write("tpidr_el0",TLS)

    def ch(ql,a,s): insn[0]+=1
    ql.hook_code(ch)
    seen=set()
    def unmapped(ql,acc,addr,size,val):
        pg=addr&~0xFFF
        if pg in seen or pg==0: return False
        try: ql.mem.map(pg,0x1000); ql.mem.write(pg,(b"\xc0\x03\x5f\xd6")*0x400); seen.add(pg); return True
        except: return False
    ql.hook_mem_unmapped(unmapped)

    # constructors
    e=ELFFile(open(LIB,'rb')); ia=e.get_section_by_name('.init_array')
    lo,hi=ia['sh_addr'],ia['sh_addr']+ia['sh_size']; ctors=[]
    for sec in e.iter_sections():
        if isinstance(sec,RelocationSection):
            for r in sec.iter_relocations():
                if lo<=r['r_offset']<hi and r.is_RELA(): ctors.append(r['r_addend'])
    ctors=sorted(set(ctors))
    SP=rd("sp")
    print(f"[*] running {len(ctors)} constructors (real syscall layer)")
    for i,off in enumerate(ctors):
        s=insn[0]
        try:
            ql.arch.regs.write("sp",SP)
            ql.arch.regs.write("x30",base+off)  # benign LR
            ql.run(begin=base+off,count=CAP)
        except Exception as ex:
            pass
        if i<12: print(f"   ctor[{i}] @ {hex(off)} ran {insn[0]-s} insns")

    print(f"\n=== REAL SYSCALLS (runtime) ===")
    for nm,c in syscalls.most_common(20): print(f"  {nm:16}{c}")
    print(f"\ninstructions emulated: {insn[0]}")
    print(f"mmap allocations: {len(alloc_regions)}  | PROT_EXEC (code-gen): {len(exec_allocs)}")
    print(f"file/host/exec accesses: {len(paths)}")
    for k,p in paths[:60]: print(f"    {k}: {p}")
    print(f"write() printable buffers: {len(writes)}")
    for fd,b in writes[:20]: print(f"    write(fd={fd}): {b[:120]}")

    # scan allocated memory for decrypted strings
    print("\n=== scanning allocated memory for runtime-decrypted strings ===")
    found=set()
    for addr,length in alloc_regions:
        try: data=ql.mem.read(addr,length)
        except: continue
        cur=b""
        for byte in data:
            if 32<=byte<127: cur+=bytes([byte])
            else:
                if len(cur)>=5: found.add(cur.decode('latin1'))
                cur=b""
        if len(cur)>=5: found.add(cur.decode('latin1'))
    interesting=sorted(s for s in found if any(ch.isalpha() for ch in s))
    print(f"  distinct strings in allocated mem: {len(interesting)}")
    for s in interesting[:80]: print("   ", s)

    with open(ROOT+"/ghidra_out/emulation_trace2.txt","w") as f:
        f.write("Advanced Qiling emulation (real syscall layer)\n\nSYSCALLS:\n")
        for nm,c in syscalls.most_common(): f.write(f"  {nm}\t{c}\n")
        f.write(f"\ninstructions={insn[0]} mmap={len(alloc_regions)} exec_alloc={len(exec_allocs)}\n")
        f.write("\nFILE/HOST/EXEC ACCESSES:\n")
        for k,p in paths: f.write(f"  {k}: {p}\n")
        f.write("\nWRITE BUFFERS:\n")
        for fd,b in writes: f.write(f"  fd={fd}: {b}\n")
        f.write(f"\nDECRYPTED-CANDIDATE STRINGS IN ALLOCATED MEM ({len(interesting)}):\n")
        for s in interesting: f.write("  "+s+"\n")
    print("[*] saved -> ghidra_out/emulation_trace2.txt")

if __name__=="__main__": main()
