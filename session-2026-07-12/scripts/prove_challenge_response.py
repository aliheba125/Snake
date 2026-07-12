#!/usr/bin/env python3
"""
prove_challenge_response.py — DECISIVE test: does the server cryptographically
process z (decrypt it, extract id+time), or just echo a random token?

Method:
  1. Craft z with KNOWN (id, time) using the time-bucket master key.
  2. Derive resp_key = SHA256(gen32(time, id))  [reverse of FUN_00161788].
  3. Send z, capture the 33-byte response.
  4. Decrypt response[1:] with AES-256-ECB(resp_key); response[0] = pad_length.
  5. If the plaintext shows valid zero-padding matching pad_length -> the server
     MUST have decrypted our z to recover (id,time) to derive resp_key.
     => proves downstream cryptographic processing of z (not a blind echo).

Control: also try decrypting with a resp_key from a WRONG (id,time) -> should fail.
"""
import hashlib, struct, time, os, subprocess
from Crypto.Cipher import AES

M64 = (1 << 64) - 1

# --- z encryption key (time-bucket master key) ---
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
def master_key(seed):
    return hashlib.sha256(shuffle(hashlib.sha256(prng16(seed)).digest(), seed)).digest()

# --- response key (reverse of FUN_00161788): key from (time, id) ---
def gen32(time_u32, id_u64):
    buf = bytearray(32)
    uVar6 = (time_u32 & 0xFFFFFFFF) * 0x9E3779B1 & M64      # time * const
    uVar5 = (id_u64 & M64) * 0x5F356495 & M64               # id * const
    for i in range(16):
        uVar8 = i & 7
        uVar5 = ((uVar5 ^ ((uVar5 << 0x11) & M64)) * 0x9E3779B1) & M64
        uVar7 = (uVar5 + ((uVar6 ^ (uVar6 >> 0xd)) * 0x5F356495)) & M64
        uVar6 = 0 if uVar7 == M64 else uVar7
        mixed = (uVar6 ^ uVar5) & M64
        buf[i]      = (mixed >> uVar8) & 0xFF
        buf[i + 16] = (mixed >> ((i + 4) & 7)) & 0xFF
    return bytes(buf)
def resp_key(time_u32, id_u64):
    return hashlib.sha256(gen32(time_u32, id_u64)).digest()

def craft_z(unix_seconds, mask, ident):
    seed = unix_seconds >> 4
    key = master_key(seed)
    P = struct.pack('<Q', (ident ^ mask) & M64) + struct.pack('<I', mask & 0xFFFFFFFF) + struct.pack('<I', (unix_seconds ^ mask) & 0xFFFFFFFF)
    Q = os.urandom(16)
    payload = bytearray(32)
    for i in range(16):
        payload[2*i] = P[i]; payload[2*i+1] = Q[i]
    pt = b'\x00' * 4 + bytes(payload)          # 36 bytes
    pad = (16 - (len(pt) % 16)) % 16            # 12
    pt_padded = pt + b'\x00' * pad
    ct = AES.new(key, AES.MODE_ECB).encrypt(pt_padded)
    return f"{pad:02x}" + ct.hex()

def try_decrypt_response(resp_hex, key):
    rb = bytes.fromhex(resp_hex)
    if len(rb) < 33:
        return None
    padlen = rb[0]
    ct = rb[1:33]                                # 32 bytes = 2 blocks
    if len(ct) % 16 != 0:
        return None
    pt = AES.new(key, AES.MODE_ECB).decrypt(ct)
    return padlen, pt

def send(z):
    url = f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20"
    r = subprocess.run(["curl","-s",url,"-H","user-agent: Dart/3.5 (dart:io)"], capture_output=True, timeout=15)
    return r.stdout.decode().strip()

print("="*72)
print("DECISIVE TEST: does the server decrypt z and key its response to (id,time)?")
print("="*72)

for trial in range(3):
    now = int(time.time())
    mask = int.from_bytes(os.urandom(4), 'little')
    ident = int.from_bytes(os.urandom(8), 'little')
    z = craft_z(now, mask, ident)
    rk = resp_key(now, ident)
    resp = send(z)
    print(f"\n--- Trial {trial} ---")
    print(f"  time={now}  id={ident:#018x}")
    print(f"  z (sent): {z}")
    print(f"  resp_key(correct id,time): {rk.hex()}")
    print(f"  server response: {resp}  ({len(resp)} hex)")
    if resp and all(c in '0123456789abcdef' for c in resp) and len(resp) >= 66:
        r = try_decrypt_response(resp, rk)
        if r:
            padlen, pt = r
            zeros_ok = 0 < padlen <= 32 and pt[-padlen:] == b'\x00' * padlen
            print(f"  DECRYPT with correct resp_key: padlen=0x{padlen:02x} pt={pt.hex()}")
            print(f"    valid zero-padding: {zeros_ok}  <<< {'STRUCTURED (server processed z!)' if zeros_ok else 'not structured'}")
        # Control: wrong key
        wrong = resp_key(now ^ 0x1234, ident ^ 0x9999)
        rc = try_decrypt_response(resp, wrong)
        if rc:
            pl2, pt2 = rc
            zeros2 = 0 < pl2 <= 32 and pt2[-pl2:] == b'\x00' * pl2
            print(f"  DECRYPT with WRONG resp_key: padlen=0x{pl2:02x} valid-padding={zeros2} (should be False)")
    else:
        print("  (empty/non-hex response)")
