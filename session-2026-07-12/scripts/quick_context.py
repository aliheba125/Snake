#!/usr/bin/env python3
"""
Quick context reader: read only the POI regions from prior scan. No full scan.
"""
import subprocess, sys, re

pid = "26433"
poi_addrs = [
    ("iv_and_ct16_A",     0xe1cd66dc5940 - 128, 384, "iv+ct16 raw"),
    ("ct16_libapp_A",     0xe1ca224dc970 - 128, 384, "libapp Dart heap ct A"),
    ("ct16_libapp_B",     0xe1ca224dc9a0 - 128, 384, "libapp Dart heap ct B"),
    ("url_scudo",         0xe1cbe0c3fb41 - 96,  384, "URL in scudo"),
]

def get_maps(pid):
    r = subprocess.run(["sudo","docker","exec","redroid14","cat",f"/proc/{pid}/maps"],
                       capture_output=True, text=True, timeout=10)
    regions = []
    for line in r.stdout.split("\n"):
        m = re.match(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+(\S+)\s+\S+\s+\S+\s*(.*)?$', line)
        if not m: continue
        regions.append({"start":int(m.group(1),16),"end":int(m.group(2),16),
                        "perm":m.group(3),"path":(m.group(5) or "").strip()})
    return regions

def containing_region(addr, maps):
    for r in maps:
        if r["start"] <= addr < r["end"]: return r
    return None

def read_bytes(pid, start, size):
    aligned_start = start & ~4095
    offset = start - aligned_start
    pages = ((offset + size) + 4095) // 4096
    cmd = ["sudo","docker","exec","redroid14","sh","-c",
           f"dd if=/proc/{pid}/mem bs=4096 skip={aligned_start//4096} count={pages} 2>/dev/null | head -c $(({offset}+{size})) | tail -c +{offset+1} | head -c {size}"]
    r = subprocess.run(cmd, capture_output=True, timeout=10)
    return r.stdout

maps = get_maps(pid)
print(f"Regions: {len(maps)}")

for name, start, size, desc in poi_addrs:
    reg = containing_region(start, maps)
    print(f"\n=== {name} :: {desc} ===")
    if reg:
        print(f"  region: 0x{reg['start']:x}-0x{reg['end']:x} perm={reg['perm']} path='{reg['path']}' size={reg['end']-reg['start']}")
        read_sz = min(size, reg["end"] - start)
        data = read_bytes(pid, start, read_sz)
        print(f"  read {len(data)} bytes:")
        for i in range(0, min(len(data), 400), 32):
            addr = start + i
            print(f"    0x{addr:012x}: {data[i:i+32].hex()}")
    else:
        print(f"  no region for 0x{start:x}")
