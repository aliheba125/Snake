#!/usr/bin/env python3
"""
server_test.py — Test the production server with various z values.
Tests:
  1. Legitimate z (captured from app)
  2. Garbage z (random hex, wrong decryption)
  3. CRAFTED z (generated offline from current time using the reverse-engineered algorithm)
  4. Empty z
  5. No z
  6. Replayed z (old capture, different time bucket)
"""
import hashlib, struct, time, os, subprocess, json
from Crypto.Cipher import AES

M64 = (1 << 64) - 1
def rotl64(x, r): x &= M64; return ((x << r) | (x >> (64 - r))) & M64
def prng16(seed):
    seed &= 0xFFFFFFFF
    P1 = (seed * 0xA5A5A5A5A5A5A5A5) & M64
    P2 = (seed * 0xB4B4B4B4B4B4A000) & M64
    A = (P2 & ~0x1FFF) | ((P1 >> 51) & 0x1FFF)
    E = P1 ^ 0xA3A3A3A3A3A3A3A3
    B = rotl64(E, 7)
    return struct.pack("<QQ", A & M64, B)
def shuffle(buf, seed):
    b = bytearray(buf); n = len(b); seed &= 0xFFFFFFFF; i = 0
    while i < n:
        rem = n - i
        seed = ((seed * 0x5BD1E995) & 0xFFFFFFFF) ^ (seed >> 15)
        off = seed % rem if rem else 0
        if off: j = i + off; b[i], b[j] = b[j], b[i]
        i += 1
    return bytes(b)
def derive_key(seed):
    return hashlib.sha256(shuffle(hashlib.sha256(prng16(seed)).digest(), seed)).digest()

def craft_z(unix_seconds=None):
    """Generate a z offline from the given (or current) time."""
    if unix_seconds is None:
        unix_seconds = int(time.time())
    seed = unix_seconds >> 4
    key = derive_key(seed)
    # Build plaintext
    mask = int.from_bytes(os.urandom(4), 'little')
    ident = int.from_bytes(os.urandom(8), 'little')
    P = struct.pack('<Q', ident ^ mask) + struct.pack('<I', mask) + struct.pack('<I', unix_seconds ^ mask)
    Q = os.urandom(16)
    payload = bytearray(32)
    for i in range(16):
        payload[2*i] = P[i]
        payload[2*i+1] = Q[i]
    pt = b'\x00' * 4 + bytes(payload)
    pad = 16 - (len(pt) % 16) if len(pt) % 16 != 0 else 0
    if pad == 0: pad = 0  # no extra block needed if already aligned
    pt_padded = pt + b'\x00' * pad
    ct = AES.new(key, AES.MODE_ECB).encrypt(pt_padded)
    z = f"{pad:02x}" + ct.hex()
    return z, key.hex(), seed

def curl_test(label, url):
    """Send request and capture response."""
    result = subprocess.run(
        ["curl", "-s", "-w", "\n---HTTP_CODE:%{http_code}---", url,
         "-H", "user-agent: Dart/3.5 (dart:io)",
         "-H", "accept-encoding: gzip"],
        capture_output=True, timeout=15
    )
    body = result.stdout.decode('latin-1')
    # Parse http code
    parts = body.rsplit("---HTTP_CODE:", 1)
    code = parts[1].rstrip("-") if len(parts) > 1 else "?"
    resp_body = parts[0] if len(parts) > 1 else body
    print(f"\n{'='*60}")
    print(f"TEST: {label}")
    print(f"  HTTP code: {code}")
    print(f"  Body length: {len(resp_body)} bytes")
    print(f"  Body (hex): {resp_body.encode('latin-1').hex()[:200]}")
    print(f"  Body (ascii): {repr(resp_body[:100])}")
    return code, resp_body

BASE = "https://push-918010152455.europe-west1.run.app/"

# Test 1: Legitimate z
print("="*60)
print("Legitimate z (captured from last app run)")
legit_z = "0c9b5df1c854a4baecb9b8ffc6eca32ff370ffed7bebede503fd4a350a525a2b45487d3ed94c357979efda78882e7bf61e"
curl_test("LEGITIMATE z", f"{BASE}?z={legit_z}&v=20")

# Test 2: Garbage z
curl_test("GARBAGE z (random)", f"{BASE}?z=deadbeefcafebabe1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef01&v=20")

# Test 3: CRAFTED z (from current time)
crafted, key_used, seed_used = craft_z()
print(f"\n[crafted z: {crafted}]")
print(f"[key used: {key_used}, seed: {seed_used}]")
curl_test("CRAFTED z (offline, current time)", f"{BASE}?z={crafted}&v=20")

# Test 4: Crafted z with deliberately WRONG time (1 hour ago)
crafted_old, _, _ = craft_z(int(time.time()) - 3600)
curl_test("CRAFTED z (1 hour old)", f"{BASE}?z={crafted_old}&v=20")

# Test 5: Empty z
curl_test("EMPTY z", f"{BASE}?z=&v=20")

# Test 6: No z at all
curl_test("NO z param", f"{BASE}?v=20")

# Test 7: Different user-agent
result7 = subprocess.run(
    ["curl", "-s", "-w", "\n---HTTP_CODE:%{http_code}---",
     f"{BASE}?z={crafted}&v=20",
     "-H", "user-agent: Mozilla/5.0"],
    capture_output=True, timeout=15
)
body7 = result7.stdout.decode('latin-1')
parts7 = body7.rsplit("---HTTP_CODE:", 1)
code7 = parts7[1].rstrip("-") if len(parts7) > 1 else "?"
resp7 = parts7[0] if len(parts7) > 1 else body7
print(f"\n{'='*60}")
print(f"TEST: CRAFTED z with wrong user-agent")
print(f"  HTTP code: {code7}")
print(f"  Body length: {len(resp7)} bytes")
print(f"  Body (hex): {resp7.encode('latin-1').hex()[:200]}")
