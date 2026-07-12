#!/usr/bin/env python3
"""
Verify whether the earlier hits are real z buffers or just Frida scratch.
Requires: no active Frida script attached to the process.
Method: scan the process memory now (via /proc/mem, not Frida) for the exact patterns.
If same hits appear, they are real. If they vanish, they were Frida scratch.
"""
import subprocess, sys, re

pid = "26433"
z48 = bytes.fromhex("ad78fa57ac111a64e6719b4fd3a1b482d2ada646c90e99a90b53da5039ea62b2a7f9a4792bafa1967fe57c816314045a")
iv = z48[:16]; ct = z48[16:]

patterns = {
    "iv_raw":            iv,
    "ct_first16":        ct[:16],
    "ct_last16":         ct[16:32],
    "ct_middle_8":       ct[8:16],
    "full_48":           z48,
    "url_ascii":         b"z=0c" + z48.hex()[:32].encode(),
}

# Read maps
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

def read_region(pid, start, size):
    if size > 200*1024*1024: return None
    cmd = ["sudo","docker","exec","redroid14","sh","-c",
           f"dd if=/proc/{pid}/mem bs=4096 skip={start//4096} count={size//4096 + 1} 2>/dev/null | head -c {size}"]
    r = subprocess.run(cmd, capture_output=True, timeout=60)
    return r.stdout if r.stdout else None

maps = get_maps(pid)
readable = [m for m in maps if 'r' in m["perm"]]
print(f"Readable regions: {len(readable)}")

results = {name: [] for name in patterns}

for i, m in enumerate(readable):
    size = m["end"] - m["start"]
    if size == 0: continue
    data = read_region(pid, m["start"], size)
    if not data: continue
    for name, pat in patterns.items():
        if len(results[name]) >= 30: continue
        idx = 0
        while True:
            idx = data.find(pat, idx)
            if idx < 0: break
            addr = m["start"] + idx
            ctx_pre = data[max(0, idx-48):idx].hex()
            ctx_at = data[idx:min(len(data), idx+len(pat)+32)].hex()
            results[name].append({
                "addr": hex(addr), "perm": m["perm"], "path": m["path"],
                "region_start": hex(m["start"]), "region_end": hex(m["end"]),
                "ctx_pre_48": ctx_pre[-96:], "ctx_at": ctx_at[:200]
            })
            idx += 1
            if len(results[name]) >= 30: break

for name, hits in results.items():
    print(f"\n=== {name} ({len(hits)} hits) ===")
    for h in hits[:15]:
        print(f"  addr={h['addr']} perm={h['perm']} path='{h['path']}' region={h['region_start']}-{h['region_end']}")
        print(f"    pre_hex: ...{h['ctx_pre_48']}")
        print(f"    at_hex : {h['ctx_at']}")
