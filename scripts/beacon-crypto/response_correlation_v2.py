#!/usr/bin/env python3
"""
response_correlation_v2.py — Systematic correlation of server response fields.

Methodology (controlled experiments):
  Test A: Same (time, id, mask) sent 5x rapidly → which bytes are DETERMINISTIC?
  Test B: Fixed time, fixed mask, VARYING id → which bytes track id?
  Test C: Fixed id, fixed mask, VARYING time (advancing) → which bytes track time?
  Test D: Fixed time, fixed id, VARYING mask → which bytes track mask?
  Test E: All random (baseline entropy measurement)

For each test, we decrypt the 32-byte response record and compare byte-by-byte.
Output: per-byte classification (constant/echo/varies-with-X/random).

SAFE: This script only sends crafted beacons to the server and reads responses.
No modification of any files or running processes.
"""
import hashlib, struct, time, os, subprocess, json, sys, math
from collections import Counter

# ---- Crypto primitives (proven, from scripts/beacon-crypto/prove_cr2.py) ----
M64 = (1 << 64) - 1

def rotl64(x, r):
    x &= M64
    return ((x << r) | (x >> (64 - r))) & M64

def prng16(seed):
    seed &= 0xFFFFFFFF
    P1 = (seed * 0xA5A5A5A5A5A5A5A5) & M64
    P2 = (seed * 0xB4B4B4B4B4B4A000) & M64
    A = (P2 & ~0x1FFF) | ((P1 >> 51) & 0x1FFF)
    E = P1 ^ 0xA3A3A3A3A3A3A3A3
    B = rotl64(E, 7)
    return struct.pack("<QQ", A & M64, B)

def shuffle(buf, seed):
    b = bytearray(buf)
    n = len(b)
    seed &= 0xFFFFFFFF
    i = 0
    while i < n:
        rem = n - i
        seed = ((seed * 0x5BD1E995) & 0xFFFFFFFF) ^ (seed >> 15)
        off = seed % rem if rem else 0
        if off:
            j = i + off
            b[i], b[j] = b[j], b[i]
        i += 1
    return bytes(b)

def master_key(seed):
    return hashlib.sha256(shuffle(hashlib.sha256(prng16(seed)).digest(), seed)).digest()

def gen32(t, idv):
    buf = bytearray(32)
    u6 = (t & 0xFFFFFFFF) * 0x9E3779B1 & M64
    u5 = (idv & M64) * 0x5F356495 & M64
    for i in range(16):
        u5 = ((u5 ^ ((u5 << 0x11) & M64)) * 0x9E3779B1) & M64
        u7 = (u5 + ((u6 ^ (u6 >> 0xd)) * 0x5F356495)) & M64
        u6 = 0 if u7 == M64 else u7
        m = (u6 ^ u5) & M64
        buf[i] = (m >> (i & 7)) & 0xFF
        buf[i + 16] = (m >> ((i + 4) & 7)) & 0xFF
    return bytes(buf)

def resp_key(t, idv):
    return hashlib.sha256(gen32(t, idv)).digest()

def craft_z(sec, mask, ident):
    key = master_key(sec >> 4)
    P = (struct.pack('<Q', (ident ^ mask) & M64) +
         struct.pack('<I', mask & 0xFFFFFFFF) +
         struct.pack('<I', (sec ^ mask) & 0xFFFFFFFF))
    Q = os.urandom(16)
    pay = bytearray(32)
    for i in range(16):
        pay[2*i] = P[i]
        pay[2*i+1] = Q[i]
    pt = b'\x00' * 4 + bytes(pay)
    pad = (16 - len(pt) % 16) % 16
    from Crypto.Cipher import AES
    ct = AES.new(key, AES.MODE_ECB).encrypt(pt + b'\x00' * pad)
    return f"{pad:02x}" + ct.hex()

def send_beacon(z):
    """Send a beacon and return the raw hex response."""
    r = subprocess.run(
        ["curl", "-s", "--max-time", "15",
         f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20",
         "-H", "user-agent: Dart/3.5 (dart:io)"],
        capture_output=True, timeout=20
    )
    resp = r.stdout.decode().strip()
    if resp and len(resp) >= 66 and all(c in '0123456789abcdef' for c in resp):
        return resp
    return None

def decrypt_response(resp_hex, t, idv):
    """Decrypt server response → (prefix_byte, 32-byte record)."""
    from Crypto.Cipher import AES
    rb = bytes.fromhex(resp_hex)
    prefix = rb[0]
    ct = rb[1:33]
    key = resp_key(t, idv)
    pt = AES.new(key, AES.MODE_ECB).decrypt(ct)
    return prefix, pt

def entropy(data):
    if not data:
        return 0.0
    c = Counter(data)
    n = len(data)
    return -sum((v/n) * math.log2(v/n) for v in c.values())

def byte_hex(b):
    return ' '.join(f'{x:02x}' for x in b)

# ---- Main experiments ----
OUTDIR = "/tmp/resp_correlation"
os.makedirs(OUTDIR, exist_ok=True)

def run_test(name, params_list, desc):
    """
    params_list: list of (time, mask, id) tuples.
    Send each, decrypt, return list of 32-byte records.
    """
    print(f"\n{'='*70}")
    print(f"TEST {name}: {desc}")
    print(f"{'='*70}")
    records = []
    for i, (t, mask, ident) in enumerate(params_list):
        z = craft_z(t, mask, ident)
        resp = send_beacon(z)
        if resp is None:
            print(f"  [{i}] FAILED (no valid response)")
            continue
        prefix, pt = decrypt_response(resp, t, ident)
        records.append({"t": t, "mask": mask, "id": ident, "prefix": prefix, "record": pt})
        print(f"  [{i}] prefix=0x{prefix:02x} rec={pt.hex()}")
        time.sleep(0.3)  # small delay to avoid rate limiting
    return records

def analyze_constancy(records, name):
    """Identify which byte positions are constant across all records."""
    if len(records) < 2:
        print(f"  [!] Not enough records for analysis ({len(records)})")
        return {}
    pts = [r["record"] for r in records]
    n = 32
    result = {}
    for i in range(n):
        values = set(p[i] for p in pts)
        if len(values) == 1:
            result[i] = {"type": "CONSTANT", "value": pts[0][i]}
        else:
            result[i] = {"type": "VARIES", "values": [p[i] for p in pts]}
    const_count = sum(1 for v in result.values() if v["type"] == "CONSTANT")
    print(f"  -> Constant positions: {const_count}/32")
    return result

def analyze_echo(records, field_name, extract_fn):
    """Check if any byte positions echo a specific input field."""
    if len(records) < 2:
        return {}
    echoes = {}
    for i in range(32):
        # Check LE u32 at position i (if within bounds)
        match_count = 0
        for r in records:
            field_bytes = extract_fn(r)
            rec_byte = r["record"][i]
            # Check if this byte matches any byte of the field
            if rec_byte in field_bytes:
                match_count += 1
        if match_count == len(records):
            echoes[i] = field_name
    return echoes

def main():
    print("response_correlation_v2.py — Systematic server response analysis")
    print(f"Time: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}")
    print(f"Endpoint: push-918010152455.europe-west1.run.app")

    now = int(time.time())
    all_results = {}

    # TEST A: Same (time, id, mask) x5
    fixed_t = now
    fixed_mask = 0xDEADBEEF
    fixed_id = 0x1122334455667788
    params_a = [(fixed_t, fixed_mask, fixed_id)] * 5
    recs_a = run_test("A", params_a, "Same (time,id,mask) x5 — determinism check")
    analysis_a = analyze_constancy(recs_a, "A")
    all_results["A"] = {"desc": "determinism", "records": len(recs_a),
                        "constant_positions": sum(1 for v in analysis_a.values() if v["type"] == "CONSTANT")}

    time.sleep(1)

    # TEST B: Fixed time+mask, VARYING id
    params_b = [(fixed_t, fixed_mask, 0x1000000000000000 + k) for k in range(5)]
    recs_b = run_test("B", params_b, "Fixed time+mask, varying id — id dependency")
    analysis_b = analyze_constancy(recs_b, "B")
    all_results["B"] = {"desc": "id_dependency", "records": len(recs_b),
                        "constant_positions": sum(1 for v in analysis_b.values() if v["type"] == "CONSTANT")}

    time.sleep(1)

    # TEST C: Fixed id+mask, VARYING time (each 17s apart = different time bucket)
    params_c = [(now + k * 17, fixed_mask, fixed_id) for k in range(5)]
    recs_c = run_test("C", params_c, "Fixed id+mask, varying time (+17s buckets) — time dependency")
    analysis_c = analyze_constancy(recs_c, "C")
    all_results["C"] = {"desc": "time_dependency", "records": len(recs_c),
                        "constant_positions": sum(1 for v in analysis_c.values() if v["type"] == "CONSTANT")}

    time.sleep(1)

    # TEST D: Fixed time+id, VARYING mask
    params_d = [(fixed_t, 0xAAAA0000 + k, fixed_id) for k in range(5)]
    recs_d = run_test("D", params_d, "Fixed time+id, varying mask — mask echo check")
    analysis_d = analyze_constancy(recs_d, "D")
    all_results["D"] = {"desc": "mask_dependency", "records": len(recs_d),
                        "constant_positions": sum(1 for v in analysis_d.values() if v["type"] == "CONSTANT")}

    # Check mask echo: does mask appear as LE u32 at positions [0,4,8,12]?
    if recs_d:
        print("\n  Mask echo check (documented: mask echoed at bytes [0,4,8,12] LE):")
        for r in recs_d[:3]:
            mask_le = struct.pack('<I', r["mask"] & 0xFFFFFFFF)
            rec = r["record"]
            for pos in [0, 4, 8, 12]:
                chunk = rec[pos:pos+4]
                match = "MATCH" if chunk == mask_le else f"no (got {chunk.hex()} vs {mask_le.hex()})"
                print(f"    mask=0x{r['mask']:08x} rec[{pos}:{pos+4}]={chunk.hex()} -> {match}")

    time.sleep(1)

    # TEST E: All random (entropy baseline)
    params_e = [(now + k*17, int.from_bytes(os.urandom(4), 'little'),
                 int.from_bytes(os.urandom(8), 'little')) for k in range(5)]
    recs_e = run_test("E", params_e, "All random — entropy baseline")
    analysis_e = analyze_constancy(recs_e, "E")
    all_results["E"] = {"desc": "entropy_baseline", "records": len(recs_e),
                        "constant_positions": sum(1 for v in analysis_e.values() if v["type"] == "CONSTANT")}

    # ---- FINAL SYNTHESIS ----
    print("\n" + "="*70)
    print("SYNTHESIS — Per-byte classification")
    print("="*70)
    print(f"{'Byte':>4} | {'A(same)':>8} | {'B(id)':>8} | {'C(time)':>8} | {'D(mask)':>8} | {'E(rand)':>8} | Classification")
    print("-"*70)

    classifications = []
    for i in range(32):
        a_const = analysis_a.get(i, {}).get("type") == "CONSTANT"
        b_const = analysis_b.get(i, {}).get("type") == "CONSTANT"
        c_const = analysis_c.get(i, {}).get("type") == "CONSTANT"
        d_const = analysis_d.get(i, {}).get("type") == "CONSTANT"
        e_const = analysis_e.get(i, {}).get("type") == "CONSTANT"

        # Classification logic
        if a_const and b_const and c_const and d_const and e_const:
            cls = "FIXED_MARKER"
        elif a_const and not d_const:
            cls = "MASK_DEPENDENT"
        elif a_const and not b_const:
            cls = "ID_DEPENDENT"
        elif a_const and not c_const:
            cls = "TIME_DEPENDENT"
        elif not a_const:
            cls = "SERVER_NONCE/COUNTER"
        else:
            cls = "UNKNOWN_STABLE"

        classifications.append(cls)
        a_s = "const" if a_const else "varies"
        b_s = "const" if b_const else "varies"
        c_s = "const" if c_const else "varies"
        d_s = "const" if d_const else "varies"
        e_s = "const" if e_const else "varies"
        print(f"  [{i:2d}] | {a_s:>8} | {b_s:>8} | {c_s:>8} | {d_s:>8} | {e_s:>8} | {cls}")

    all_results["classifications"] = classifications
    all_results["summary"] = {
        "FIXED_MARKER": classifications.count("FIXED_MARKER"),
        "MASK_DEPENDENT": classifications.count("MASK_DEPENDENT"),
        "ID_DEPENDENT": classifications.count("ID_DEPENDENT"),
        "TIME_DEPENDENT": classifications.count("TIME_DEPENDENT"),
        "SERVER_NONCE/COUNTER": classifications.count("SERVER_NONCE/COUNTER"),
        "UNKNOWN_STABLE": classifications.count("UNKNOWN_STABLE"),
    }

    print(f"\n  Summary: {json.dumps(all_results['summary'], indent=2)}")

    # Save
    # Convert bytes to hex for JSON serialization
    def serialize_records(recs):
        out = []
        for r in recs:
            out.append({
                "t": r["t"], "mask": r["mask"], "id": r["id"],
                "prefix": r["prefix"], "record_hex": r["record"].hex()
            })
        return out

    save_data = {
        "timestamp": time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime()),
        "results": all_results,
        "raw": {
            "A": serialize_records(recs_a),
            "B": serialize_records(recs_b),
            "C": serialize_records(recs_c),
            "D": serialize_records(recs_d),
            "E": serialize_records(recs_e),
        }
    }
    outfile = os.path.join(OUTDIR, "response_correlation.json")
    with open(outfile, "w") as f:
        json.dump(save_data, f, indent=2)
    print(f"\n[*] Full results saved to {outfile}")

if __name__ == "__main__":
    main()
