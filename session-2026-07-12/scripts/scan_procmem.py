#!/usr/bin/env python3
"""
Proper /proc/PID/mem scanner: parse /proc/PID/maps, seek to each readable region,
read it, and search for the given byte pattern. Runs INSIDE the container via docker exec.
"""
import subprocess, sys, os, re

def scan_pid_for(pid, patterns_dict, max_hits_per_pattern=20):
    """Scan /proc/PID/mem for each raw byte pattern. Returns dict pattern_name -> list of (region, offset, context)."""
    # Get maps (via docker exec to reach the redroid container's proc)
    cmd = ["sudo", "docker", "exec", "redroid14", "cat", f"/proc/{pid}/maps"]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        print(f"Failed to read /proc/{pid}/maps: {r.stderr}")
        return {}
    maps_txt = r.stdout

    # Parse maps
    regions = []
    for line in maps_txt.split("\n"):
        m = re.match(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+', line)
        if not m: continue
        start = int(m.group(1), 16)
        end = int(m.group(2), 16)
        perm = m.group(3)
        if 'r' not in perm: continue  # need readable
        # keep path
        rest = line[m.end():].strip().split()
        path = rest[-1] if len(rest) >= 4 else ""
        regions.append((start, end, perm, path))
    print(f"Total readable regions: {len(regions)}")

    # Group patterns by minimum length to skip small regions
    results = {name: [] for name in patterns_dict}

    for i, (start, end, perm, path) in enumerate(regions):
        size = end - start
        if size == 0: continue
        # skip files that are huge and unlikely to hold ephemeral data
        if size > 500 * 1024 * 1024: continue

        # Read the region using dd inside container
        # We use head to prevent overreading if region is unreadable partway
        try:
            r = subprocess.run(
                ["sudo", "docker", "exec", "redroid14", "sh", "-c",
                 f"dd if=/proc/{pid}/mem bs=4096 skip={start//4096} count={size//4096+1} 2>/dev/null | head -c {size}"],
                capture_output=True, timeout=60
            )
            if r.returncode != 0 and len(r.stdout) == 0: continue
            data = r.stdout
        except Exception as e:
            continue

        # Search each pattern
        for name, pat in patterns_dict.items():
            if len(results[name]) >= max_hits_per_pattern: continue
            if len(data) < len(pat): continue
            off = 0
            while True:
                off = data.find(pat, off)
                if off < 0: break
                addr = start + off
                # Read context
                ctx_start = max(0, off-48)
                ctx_end = min(len(data), off + len(pat) + 96)
                context = data[ctx_start:ctx_end].hex()
                results[name].append({
                    "region_start": hex(start),
                    "region_end": hex(end),
                    "region_perm": perm,
                    "region_path": path,
                    "addr": hex(addr),
                    "off_in_region": off,
                    "context_hex": context,
                    "region_size": size,
                })
                off += 1
                if len(results[name]) >= max_hits_per_pattern: break

    return results

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("usage: scan_procmem.py PID Z48_HEX [ADDITIONAL_HEX...]")
        sys.exit(1)
    pid = sys.argv[1]
    z48 = sys.argv[2]

    z48_bytes = bytes.fromhex(z48)
    iv = z48_bytes[:16]
    ct = z48_bytes[16:]
    ct_first16 = ct[:16]

    # Also check ASCII hex form (0c<hex>) as string
    hex_ascii = ("0c" + z48).encode('ascii')

    patterns = {
        "full_z48_raw":       z48_bytes,
        "iv_raw":             iv,
        "ct_first16_raw":     ct_first16,
        "z48_prefix_8":       z48_bytes[:8],
        "hex_ascii_prefix":   hex_ascii[:32],  # first 16 hex chars as ASCII
        "url_prefix":         b"z=0c" + z48[:16].encode('ascii'),
    }
    for arg in sys.argv[3:]:
        try: patterns["extra_"+arg[:16]] = bytes.fromhex(arg)
        except: pass

    print(f"Scanning PID {pid} for {len(patterns)} patterns...")
    for name, pat in patterns.items():
        print(f"  {name}: {pat[:32].hex()}{'...' if len(pat) > 32 else ''} ({len(pat)} bytes)")

    results = scan_pid_for(pid, patterns)

    print("\n=== RESULTS ===")
    for name, hits in results.items():
        print(f"\n{name}: {len(hits)} hits")
        for h in hits[:10]:
            print(f"  addr={h['addr']} region={h['region_perm']} path={h['region_path']}")
            print(f"    context_hex[:180]: {h['context_hex'][:180]}")
