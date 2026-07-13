#!/usr/bin/env python3
"""Scan blutter asm/ for references (incl. split ADD+LDR) to target PP offsets."""
import os, re, sys

ASM_DIR = sys.argv[1] if len(sys.argv) > 1 else os.path.expanduser("~/blutter_work/out/asm")
TARGETS = {
    0x139d8: "API endpoint rest.snakeseller.com/api/request/",
    0xf6c0:  "BANNED (EN)",
    0xf6f0:  "not enough balance (EN)",
    0xf718:  "Wala kang sapat na balanse (TL)",
    0xf720:  "Tier not same (EN)",
    0xf780:  "target already has subscription (EN)",
    0x10d20: "Congratulations activated successfully (EN)",
    0x10d48: "Congratulations activated (TL)",
    0x114d8: "no active subscription for this game",
}

# Patterns:
#  direct:  ldr Xn, [PP, #0xOFF]
#  split :  add Xn, PP, #0xHI, lsl #12   then  ldr Xm, [Xn, #0xLO]
re_direct = re.compile(r'\[PP, #(0x[0-9a-fA-F]+)\]')
re_add_hi = re.compile(r'add\s+(\w+), PP, #(0x[0-9a-fA-F]+), lsl #12')
re_ldr_lo = re.compile(r'ldr\s+\w+, \[(\w+), #(0x[0-9a-fA-F]+)\]')
re_addr   = re.compile(r'0x[0-9a-fA-F]+:')
re_func   = re.compile(r'^\s*(//\s*\*\* addr: (0x[0-9a-fA-F]+)|(\[closure\].*|[\w<> ,]+\(.*\)) \{)')

def scan(path):
    hits = []  # (offset, lineno, current_func_addr, current_class, snippet)
    cur_func = None
    cur_class = None
    pending = {}  # reg -> hi_base
    with open(path, errors="replace") as f:
        lines = f.readlines()
    for i, ln in enumerate(lines):
        m = re.match(r'^(abstract\s+)?class\s+(\S+)', ln)
        if m:
            cur_class = m.group(2)
        m = re.search(r'\*\* addr: (0x[0-9a-fA-F]+)', ln)
        if m:
            cur_func = m.group(1)
            pending = {}
        # split load tracking
        ma = re_add_hi.search(ln)
        if ma:
            reg = ma.group(1); hi = int(ma.group(2), 16) << 12
            pending[reg] = hi
        ml = re_ldr_lo.search(ln)
        if ml:
            reg = ml.group(1); lo = int(ml.group(2), 16)
            if reg in pending:
                off = pending[reg] + lo
                if off in TARGETS:
                    hits.append((off, i+1, cur_func, cur_class, ln.strip()))
        # direct load
        for md in re_direct.finditer(ln):
            off = int(md.group(1), 16)
            if off in TARGETS:
                hits.append((off, i+1, cur_func, cur_class, ln.strip()))
    return hits

allhits = []
for fn in os.listdir(ASM_DIR):
    if not fn.endswith(".dart"): continue
    p = os.path.join(ASM_DIR, fn)
    for h in scan(p):
        allhits.append((fn,) + h)

if not allhits:
    print("NO direct/split refs found to target offsets in asm.")
else:
    for fn, off, lineno, func, cls, snip in allhits:
        print(f"{fn}:{lineno}  func={func} class={cls}  off=0x{off:x} ({TARGETS[off]})")
        print(f"    {snip}")
