#!/usr/bin/env python3
"""
Robust dynamic emulation of libengine.so (ARM64 Android) via Qiling/Unicorn.
Strategy:
  * register a GENERIC handler for every syscall number so the obfuscated
    inline `svc #0` (with computed x8) never aborts as "unhandled";
  * log the REAL syscall number (from x8) each time -> accurate behavior profile;
  * manually drive each ELF init_array constructor with an instruction cap and
    catch all faults, so heavy/anti-emulation code cannot hang the run.
"""
import sys, os, collections, shutil

ROOT = "/projects/sandbox/snake_decompile"
ROOTFS = ROOT + "/tools/qiling_rootfs/arm64_android"
LIB = ROOT + "/extracted_lib/lib/arm64-v8a/libengine.so"
os.makedirs(ROOTFS + "/data", exist_ok=True)
shutil.copy(LIB, ROOTFS + "/data/libengine.so")

from qiling import Qiling
from qiling.const import QL_VERBOSE
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

SYS = {17:"getcwd",25:"fcntl",29:"ioctl",34:"mkdirat",35:"unlinkat",48:"faccessat",
 56:"openat",57:"close",61:"getdents64",62:"lseek",63:"read",64:"write",78:"readlinkat",
 79:"newfstatat",80:"fstat",93:"exit",94:"exit_group",96:"set_tid_address",98:"futex",
 113:"clock_gettime",117:"ptrace",129:"kill",131:"tgkill",134:"rt_sigaction",
 135:"rt_sigprocmask",160:"uname",167:"prctl",172:"getpid",173:"getppid",174:"getuid",
 178:"gettid",198:"socket",200:"bind",203:"connect",206:"sendto",207:"recvfrom",
 214:"brk",215:"munmap",216:"mremap",220:"clone",221:"execve",222:"mmap",226:"mprotect",
 233:"madvise",260:"wait4",261:"prlimit64",278:"getrandom",279:"memfd_create",
 281:"execveat",293:"rseq",53:"fchmodat",96:"set_tid_address",226:"mprotect"}

syscalls = collections.Counter()
events = []
exec_prot = [0]
insn = [0]
CAP_PER_CTOR = 2_000_000

def note(s):
    events.append(s)
    if len([e for e in events if e.startswith('!')])<200:
        pass

def get_ctors():
    e = ELFFile(open(LIB,'rb'))
    ia = e.get_section_by_name('.init_array')
    lo,hi = ia['sh_addr'], ia['sh_addr']+ia['sh_size']
    out=[]
    for sec in e.iter_sections():
        if isinstance(sec, RelocationSection):
            for r in sec.iter_relocations():
                if lo<=r['r_offset']<hi and r.is_RELA():
                    out.append(r['r_addend'])
    return sorted(set(out))

def main():
    print(f"[*] Qiling load of libengine.so (ARM64 Android bionic rootfs)")
    ql = Qiling([ROOTFS + "/data/libengine.so"], ROOTFS, verbose=QL_VERBOSE.OFF)

    # find load base of our library
    base = None
    for img in ql.loader.images:
        if "libengine" in str(img.path):
            base = img.base
    if base is None:
        base = ql.loader.load_address
    print(f"[*] libengine load base = {hex(base)}")

    # generic syscall handler for EVERY number -> log real x8, return benign 0
    def generic(ql, *a):
        n = ql.arch.regs.read("x8")
        nm = SYS.get(n, f"sys_{n}")
        syscalls[nm]+=1
        try:
            if nm in ("openat","newfstatat","faccessat","readlinkat","execve","execveat","mkdirat","statfs"):
                for reg in ("x1","x0"):
                    p=ql.arch.regs.read(reg)
                    if p:
                        s=ql.mem.string(p)
                        if s and 32<=ord(s[0])<127:
                            note(f"!{nm}('{s}')"); break
            elif nm=="mprotect":
                prot=ql.arch.regs.read("x2")
                if prot & 4:
                    exec_prot[0]+=1; note(f"!mprotect PROT_EXEC {hex(prot)}")
            elif nm=="mmap":
                length=ql.arch.regs.read("x1"); prot=ql.arch.regs.read("x2")
                if prot & 4:
                    exec_prot[0]+=1; note(f"!mmap len={hex(length)} prot={hex(prot)} (PROT_EXEC=RWX/RX exec alloc)")
        except Exception:
            pass
        ql.arch.regs.write("x0", 0)
        return 0
    for n in range(0, 520):
        try: ql.os.set_syscall(n, generic)
        except Exception: pass

    def ch(ql, a, s):
        insn[0]+=1
    ql.hook_code(ch)

    # On-demand map any unmapped access so emulation can proceed further.
    mapped_pages = set()
    def on_unmapped(ql, access, addr, size, value):
        page = addr & ~0xFFF
        if page in mapped_pages or page==0:
            return False
        try:
            ql.mem.map(page, 0x1000)
            ql.mem.write(page, b"\x00"*0x1000)
            mapped_pages.add(page)
            if len(mapped_pages) <= 60:
                note(f"!auto-mapped page {hex(page)} (access={access})")
            return True   # continue execution
        except Exception:
            return False
    try:
        ql.hook_mem_unmapped(on_unmapped)
    except Exception as e:
        print("[!] mem hook:", e)

    # Set up a TLS block so `tpidr_el0 + 0x28` (stack guard) reads don't fault.
    TLS = 0x7ff000000000
    try:
        ql.mem.map(TLS, 0x4000)
        ql.mem.write(TLS, b"\x00"*0x4000)
        # write a nonzero stack-guard cookie at +0x28
        ql.mem.write(TLS+0x28, (0xDEADBEEFCAFEBABE).to_bytes(8,'little'))
        ql.arch.regs.write("tpidr_el0", TLS)
        print(f"[*] TLS mapped @ {hex(TLS)}, tpidr_el0 set")
    except Exception as e:
        print("[!] TLS setup:", e)

    ctors = get_ctors()
    print(f"[*] {len(ctors)} init constructors; driving each (cap {CAP_PER_CTOR} insns)")
    # small helper: run one function with a fresh return trap
    STACK = ql.arch.regs.read("sp")
    RET_MAGIC = 0x0  # returning to 0 will fault -> caught
    ran=0
    for i,off in enumerate(ctors):
        addr = base + off
        insn_start = insn[0]
        try:
            ql.arch.regs.write("sp", STACK)
            # set LR to a magic address we hook to stop cleanly
            ql.arch.regs.write("x30", base)  # will re-enter; we cap by count anyway
            ql.run(begin=addr, count=CAP_PER_CTOR)
            ran+=1
        except Exception as e:
            note(f"!ctor[{i}]@{hex(off)} fault: {type(e).__name__}")
        used = insn[0]-insn_start
        if i < 6 or used>0:
            print(f"   ctor[{i}] @ {hex(off)} ran ~{used} insns")


    print("\n================ REAL SYSCALLS OBSERVED (runtime x8) ================")
    for nm,c in syscalls.most_common():
        print(f"  {nm:16} {c}")
    print(f"\nTotal instructions emulated: {insn[0]}")
    print(f"PROT_EXEC (code-gen/self-modify) events: {exec_prot[0]}")
    fileacc=[e for e in events if e.startswith('!') and ('(' in e)]
    print(f"File/exec path accesses captured: {len(fileacc)}")
    for e in fileacc[:40]: print("   ", e[1:])

    with open(ROOT+"/ghidra_out/emulation_trace.txt","w") as f:
        f.write("Qiling/Unicorn emulation of libengine.so init constructors\n")
        f.write("REAL syscalls (resolved x8 at runtime):\n")
        for nm,c in syscalls.most_common(): f.write(f"  {nm}\t{c}\n")
        f.write(f"\nInstructions emulated: {insn[0]}\nPROT_EXEC events: {exec_prot[0]}\n\n")
        f.write("Captured path/exec accesses & notable events:\n")
        for e in events:
            if e.startswith('!'): f.write("  "+e[1:]+"\n")
    print("[*] saved -> ghidra_out/emulation_trace.txt")

if __name__=="__main__":
    main()
