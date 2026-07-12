#!/usr/bin/env python3
"""Find any z=0c URL in clean (no Frida) snake process memory."""
import subprocess, re, sys

pid = sys.argv[1] if len(sys.argv) > 1 else "111169"

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

# Search for the z=0c...&v=20 URL pattern
url_re = re.compile(rb'z=0c([0-9a-f]{96})')
maps = get_maps(pid)
print(f"Total readable regions: {sum(1 for m in maps if 'r' in m['perm'])}")

found_urls = []
found_iv_locs = []

for m in maps:
    if 'r' not in m["perm"]: continue
    size = m["end"] - m["start"]
    if size == 0 or size > 200*1024*1024: continue
    data = read_region(pid, m["start"], size)
    if not data: continue
    for match in url_re.finditer(data):
        z_hex = match.group(1).decode('ascii')
        offset = match.start()
        found_urls.append({"z_hex": z_hex, "addr": hex(m["start"]+offset), "perm": m["perm"], "path": m["path"]})
        if len(found_urls) >= 5: break
    if len(found_urls) >= 5: break

print(f"\nFound {len(found_urls)} URL instances:")
for u in found_urls[:5]:
    print(f"  z=0c{u['z_hex']} @ {u['addr']} perm={u['perm']} path='{u['path']}'")

# For the FIRST z found, search for the RAW binary of z48
if found_urls:
    z_hex = found_urls[0]["z_hex"]
    z48 = bytes.fromhex(z_hex)
    print(f"\n=== Now searching for RAW binary z48 = {z48.hex()} ===")
    patterns = {
        "iv_raw": z48[:16],
        "ct_first16": z48[16:32],
        "ct_last16": z48[32:48],
        "full_z48": z48,
        "iv_plus_ct_first16": z48[:32],
    }
    results = {name: [] for name in patterns}
    for m in maps:
        if 'r' not in m["perm"]: continue
        size = m["end"] - m["start"]
        if size == 0 or size > 200*1024*1024: continue
        data = read_region(pid, m["start"], size)
        if not data: continue
        for name, pat in patterns.items():
            if len(results[name]) >= 20: continue
            idx = 0
            while True:
                idx = data.find(pat, idx)
                if idx < 0: break
                addr = m["start"] + idx
                ctx_pre = data[max(0, idx-32):idx].hex()
                ctx_at = data[idx:min(len(data), idx+len(pat)+48)].hex()
                results[name].append({"addr": hex(addr), "perm": m["perm"], "path": m["path"],
                                       "region_start": hex(m["start"]), "region_end": hex(m["end"]),
                                       "ctx_pre": ctx_pre, "ctx_at": ctx_at})
                idx += 1
                if len(results[name]) >= 20: break

    for name, hits in results.items():
        print(f"\n=== {name} ({len(hits)} hits) ===")
        for h in hits[:8]:
            print(f"  addr={h['addr']} perm={h['perm']} path='{h['path']}'")
            print(f"    pre: ...{h['ctx_pre'][-64:]}")
            print(f"    at : {h['ctx_at'][:180]}")
