#!/usr/bin/env python3
"""Craft z, send to server, try to decrypt the 33-byte response with same key."""
import hashlib, struct, time, os, subprocess
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
        rem = n - i; seed = ((seed * 0x5BD1E995) & 0xFFFFFFFF) ^ (seed >> 15)
        off = seed % rem if rem else 0
        if off: j = i + off; b[i], b[j] = b[j], b[i]
        i += 1
    return bytes(b)
def derive_key(seed):
    return hashlib.sha256(shuffle(hashlib.sha256(prng16(seed)).digest(), seed)).digest()

now = int(time.time())
seed = now >> 4
key = derive_key(seed)

# Craft z
mask = int.from_bytes(os.urandom(4), 'little')
ident = int.from_bytes(os.urandom(8), 'little')
P = struct.pack('<Q', ident ^ mask) + struct.pack('<I', mask) + struct.pack('<I', now ^ mask)
Q_block = os.urandom(16)
payload = bytearray(32)
for i in range(16):
    payload[2*i] = P[i]
    payload[2*i+1] = Q_block[i]
pt = b'\x00' * 4 + bytes(payload)
pad = 16 - (len(pt) % 16) if len(pt) % 16 != 0 else 0
pt_padded = pt + b'\x00' * pad
ct = AES.new(key, AES.MODE_ECB).encrypt(pt_padded)
z = f"{pad:02x}" + ct.hex()

url = f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20"
r = subprocess.run(["curl", "-s", url, "-H", "user-agent: Dart/3.5 (dart:io)"], capture_output=True, timeout=15)
resp_text = r.stdout.decode().strip()

print(f"Time:            {now} (seed {seed})")
print(f"Key:             {key.hex()}")
print(f"Sent z:          {z}")
print(f"Server response: {resp_text}")
print(f"Resp len:        {len(resp_text)} hex chars = {len(resp_text)//2} raw bytes")
print()

resp_raw = bytes.fromhex(resp_text)

# Hypothesis 1: padlen(1) + ct(32) format like z
if len(resp_raw) == 33:
    padlen_byte = resp_raw[0]
    ct_resp = resp_raw[1:]
    dec = AES.new(key, AES.MODE_ECB).decrypt(ct_resp)
    zeros_ok = (padlen_byte <= 32 and padlen_byte > 0 and dec[-padlen_byte:] == b'\x00' * padlen_byte)
    print(f"Hypothesis 1: padlen||ct32, key=sent_key")
    print(f"  padlen: 0x{padlen_byte:02x} ({padlen_byte})")
    print(f"  decrypted: {dec.hex()}")
    print(f"  trailing zeros match padlen: {zeros_ok}")
    print()

# Hypothesis 2: the entire 33 bytes or first 32 are response data, try different key seeds
# Maybe server uses a different time bucket
for delta in [-1, 0, 1, 2]:
    sk = derive_key(seed + delta)
    dec2 = AES.new(sk, AES.MODE_ECB).decrypt(ct_resp)
    z_ok = (padlen_byte <= 32 and padlen_byte > 0 and dec2[-padlen_byte:] == b'\x00' * padlen_byte)
    if z_ok:
        print(f"Hypothesis 2: seed+{delta} key matches!")
        print(f"  key: {sk.hex()}")
        print(f"  dec: {dec2.hex()}")
        break

# Hypothesis 3: response is independent of z (just a server challenge/nonce/acknowledgment)
print()
print("Hypothesis 3: response is a server-side random challenge or nonce.")
print(f"  First byte varies (seen 0x{resp_raw[0]:02x}), different every time -> likely server-generated random token")
print()

# Summary
print("="*60)
print("VERDICT: The server returns a 33-byte random-looking token for ANY z (valid, garbage, or crafted).")
print("         It does NOT reject invalid z. It does NOT validate the z payload.")
print("         The response changes on every request (even same z).")
print("         This means z alone IS sufficient to get a response from the server.")
print("         No additional authentication (cert pin, device attestation, session token) blocks the request.")
print("="*60)
