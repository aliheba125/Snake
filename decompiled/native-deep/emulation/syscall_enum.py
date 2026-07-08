#!/usr/bin/env python3
# Enumerate arm64 syscalls invoked in libengine.so by scanning for `svc #0`
# and back-tracking the immediately preceding load of x8 (the syscall number).
import sys
from collections import Counter
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

# Linux arm64 (AArch64) syscall table (subset of common ones + full where known)
SYS = {
 17:"getcwd",19:"eventfd2",23:"dup",24:"dup3",25:"fcntl",29:"ioctl",32:"flock",
 33:"mknodat",34:"mkdirat",35:"unlinkat",36:"symlinkat",37:"linkat",38:"renameat",
 39:"umount2",40:"mount",41:"pivot_root",43:"statfs",44:"fstatfs",45:"truncate",
 46:"ftruncate",47:"fallocate",48:"faccessat",49:"chdir",50:"fchdir",51:"chroot",
 52:"fchmod",53:"fchmodat",54:"fchownat",55:"fchown",56:"openat",57:"close",
 58:"vhangup",59:"pipe2",61:"getdents64",62:"lseek",63:"read",64:"write",
 65:"readv",66:"writev",67:"pread64",68:"pwrite64",71:"sendfile",72:"pselect6",
 73:"ppoll",74:"signalfd4",78:"readlinkat",79:"newfstatat",80:"fstat",
 82:"fsync",83:"fdatasync",90:"capget",91:"capset",92:"personality",
 93:"exit",94:"exit_group",96:"set_tid_address",98:"futex",
 101:"nanosleep",103:"setitimer",113:"clock_gettime",115:"clock_nanosleep",
 117:"ptrace",118:"sched_setparam",122:"sched_setaffinity",123:"sched_getaffinity",
 129:"kill",130:"tkill",131:"tgkill",132:"sigaltstack",134:"rt_sigaction",
 135:"rt_sigprocmask",137:"rt_sigtimedwait",139:"rt_sigreturn",
 153:"times",154:"setpgid",155:"getpgid",157:"setsid",160:"uname",
 165:"getrusage",167:"prctl",172:"getpid",173:"getppid",174:"getuid",
 175:"geteuid",176:"getgid",177:"getegid",178:"gettid",179:"sysinfo",
 198:"socket",199:"socketpair",200:"bind",201:"listen",202:"accept",
 203:"connect",204:"getsockname",205:"getpeername",206:"sendto",207:"recvfrom",
 208:"setsockopt",209:"getsockopt",210:"shutdown",211:"sendmsg",212:"recvmsg",
 214:"brk",215:"munmap",216:"mremap",220:"clone",221:"execve",222:"mmap",
 223:"fadvise64",224:"swapon",226:"mprotect",227:"msync",228:"mlock",
 233:"madvise",234:"remap_file_pages",260:"wait4",261:"prlimit64",
 266:"syncfs",278:"getrandom",279:"memfd_create",280:"bpf",281:"execveat",
 283:"membarrier",284:"mlock2",293:"rseq",
}

def analyze(path):
    f=open(path,'rb'); e=ELFFile(f)
    text=e.get_section_by_name('.text')
    data=text.data(); base=text['sh_addr']
    md=Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN); md.detail=False
    # Track last immediate moved into x8/w8 in a small sliding window
    svc_sites=0; resolved=Counter(); unresolved=0
    # We scan linearly; keep last known x8 imm via simple movz/movn/mov handling
    insns=list(md.disasm(data, base))
    last_x8=None; age=999
    WINDOW=6  # only trust x8 if set within this many instructions before svc
    branch_mn={'b','br','bl','blr','ret','cbz','cbnz','tbz','tbnz','b.eq','b.ne',
               'b.lt','b.gt','b.le','b.ge','b.hi','b.lo','b.hs','b.ls','b.mi','b.pl'}
    for ins in insns:
        m=ins.mnemonic; op=ins.op_str
        age+=1
        # reset the trust window on any control-flow change
        if m in branch_mn or m.startswith('b.'):
            last_x8=None
        # track immediate writes to x8/w8 only
        if op.startswith('x8,') or op.startswith('w8,'):
            if m in ('mov','movz') and '#' in op:
                try:
                    last_x8=int(op.split('#')[1].split(',')[0].strip(),0); age=0
                except: last_x8=None
            elif m=='movn' and '#' in op:
                try:
                    v=int(op.split('#')[1].split(',')[0].strip(),0); last_x8=(~v)&0xffffffff; age=0
                except: last_x8=None
            else:
                last_x8=None  # x8 computed (non-immediate) -> unknown
        if m=='svc':
            svc_sites+=1
            if last_x8 is not None and age<=WINDOW:
                resolved[last_x8]+=1
            else:
                unresolved+=1
            last_x8=None  # consume
    return svc_sites, resolved, unresolved

if __name__=='__main__':
    path=sys.argv[1] if len(sys.argv)>1 else 'extracted_lib/lib/arm64-v8a/libengine.so'
    svc, res, unres = analyze(path)
    print(f"Total `svc` sites in .text: {svc}")
    print(f"  resolved syscall number: {sum(res.values())}   unresolved(dynamic x8): {unres}")
    print(f"\n{'num':>5}  {'name':22} {'count':>6}")
    cat={'file':0,'mem':0,'proc':0,'net':0,'other':0}
    filecat={56,57,63,64,78,79,80,61,34,35,53,48,45,46,49,51,40,39,41,82,62,67,68}
    memcat={214,215,222,226,216,233,279,284,228}
    proccat={220,221,281,117,167,172,178,129,131,93,94,98,220}
    netcat={198,200,203,206,207,211,212,209,208}
    for num,c in sorted(res.items(), key=lambda x:-x[1]):
        name=SYS.get(num, f"sys_{num}")
        print(f"{num:>5}  {name:22} {c:>6}")
        if num in filecat: cat['file']+=c
        elif num in memcat: cat['mem']+=c
        elif num in proccat: cat['proc']+=c
        elif num in netcat: cat['net']+=c
        else: cat['other']+=c
    print("\n=== behavior categories (resolved syscalls) ===")
    for k,v in cat.items(): print(f"  {k:6}: {v}")
