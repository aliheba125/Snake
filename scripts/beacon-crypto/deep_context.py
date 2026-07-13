#!/usr/bin/env python3
"""
Read 1KB of context around each match. Also find and read the memory range
containing each hit, and search for the last 16 bytes of z (ct[16:32]).
"""
import subprocess, sys, re

pid = "26433"
z48_hex = "ad78fa57ac111a64e6719b4fd3a1b482d2ada646c90e99a90b53da5039ea62b2a7f9a4792bafa1967fe57c816314045a"
z48 = bytes.fromhex(z48_hex)

# Points of interest from prior scan
poi_addrs = [
    ("iv_and_ct16_A", 0xe1cd66dc5940 - 128, 512, "rw-p region with iv+ct16 raw"),
    ("ct16_libapp_dart_heap_A", 0xe1ca224dc970 - 128, 512, "libapp Dart heap ct hit A"),
    ("ct16_libapp_dart_heap_B", 0xe1ca224dc9a0 - 128, 512, "libapp Dart heap ct hit B"),
    ("url_scudo", 0xe1cbe0c3fb41 - 128, 512, "assembled URL in scudo heap"),
]

# Also search for last 16 bytes of z48 (ct[16:32])
ct_last16 = z48[32:48]
ct_middle_16 = z48[16:32]  # already located
iv = z48[:16]

print(f"IV (16):      {iv.hex()}")
print(f"CT middle 16: {ct_middle_16.hex()}")  
print(f"CT last 16:   {ct_last16.hex()}")

# Read maps to find containing region for each addr
def get_maps(pid):
    r = subprocess.run(["sudo", "docker", "exec", "redroid14", "cat", f"/proc/{pid}/maps"],
                       capture_output=True, text=True)
    regions = []
    for line in r.stdout.split("\n"):
        m = re.match(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+(\S+)\s+\S+\s+\S+\s*(.*)?$', line)
        if not m: continue
        regions.append({
            "start": int(m.group(1), 16), "end": int(m.group(2), 16),
            "perm": m.group(3), "offset": m.group(4), "path": (m.group(5) or "").strip()
        })
    return regions

maps = get_maps(pid)
print(f"\nProcess has {len(maps)} regions")

def containing_region(addr, maps):
    for r in maps:
        if r["start"] <= addr < r["end"]: return r
    return None

# Read specific chunks
def read_bytes(pid, start, size):
    """Read `size` bytes starting at `start` from /proc/pid/mem via dd inside container."""
    # dd bs=1 count=size can be slow; try bs=size count=1 with skip via python
    # Use python inside container? Simpler: use dd with page-aligned skip
    aligned_start = start & ~4095
    offset = start - aligned_start
    aligned_end = (start + size + 4095) & ~4095
    pages = (aligned_end - aligned_start) // 4096
    cmd = ["sudo", "docker", "exec", "redroid14", "sh", "-c",
           f"dd if=/proc/{pid}/mem bs=4096 skip={aligned_start//4096} count={pages} 2>/dev/null | head -c $(({offset}+{size})) | tail -c {size}"]
    r = subprocess.run(cmd, capture_output=True, timeout=15)
    return r.stdout

for name, start, size, desc in poi_addrs:
    r = containing_region(start, maps)
    print(f"\n=== POI: {name} ({desc}) ===")
    if r:
        print(f"  Region: 0x{r['start']:x}-0x{r['end']:x} perm={r['perm']} path='{r['path']}' size={r['end']-r['start']}")
    else:
        print(f"  No containing region found for start=0x{start:x}")
        continue
    # Cap size to region
    read_size = min(size, r["end"] - start)
    data = read_bytes(pid, start, read_size)
    if not data:
        print(f"  Could not read {read_size} bytes")
        continue
    print(f"  Read {len(data)} bytes:")
    # Print hexdump-like format
    for i in range(0, min(len(data), 512), 32):
        chunk = data[i:i+32]
        hex_str = chunk.hex()
        addr = start + i
        print(f"  0x{addr:012x}: {hex_str}")

# Also search for the LAST 16 bytes of z48 (ct_last16) in ALL rw regions
print(f"\n\n=== Searching for CT LAST 16 bytes: {ct_last16.hex()} ===")
for r in maps:
    if 'r' not in r["perm"]: continue
    size = r["end"] - r["start"]
    if size == 0 or size > 300*1024*1024: continue
    data = read_bytes(pid, r["start"], size)
    if not data: continue
    idx = 0
    hits = 0
    while hits < 5:
        idx = data.find(ct_last16, idx)
        if idx < 0: break
        addr = r["start"] + idx
        print(f"  HIT at 0x{addr:x} region={r['perm']} path='{r['path']}' size={size}")
        # Read context
        ctx_start = max(0, idx-48)
        ctx_end = min(len(data), idx + 16 + 96)
        print(f"    context: {data[ctx_start:ctx_end].hex()}")
        idx += 1
        hits += 1

print("\n\n=== Also searching for iv+ct pattern (32 bytes: iv||ct_middle16) ===")
pat = iv + ct_middle_16  # 32 bytes
for r in maps:
    if 'r' not in r["perm"]: continue
    size = r["end"] - r["start"]
    if size == 0 or size > 300*1024*1024: continue
    data = read_bytes(pid, r["start"], size)
    if not data: continue
    idx = 0; hits = 0
    while hits < 5:
        idx = data.find(pat, idx)
        if idx < 0: break
        addr = r["start"] + idx
        print(f"  32-byte HIT at 0x{addr:x} region={r['perm']} path='{r['path']}' size={size}")
        # Long context before and after
        ctx_start = max(0, idx-96)
        ctx_end = min(len(data), idx + 32 + 128)
        print(f"    context: {data[ctx_start:ctx_end].hex()}")
        idx += 1; hits += 1
