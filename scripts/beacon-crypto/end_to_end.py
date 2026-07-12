#!/usr/bin/env python3
"""
end_to_end.py — Full offline chain proof using ONLY the request wall-clock time.
  time -> seed=floor(unix/16) -> derive AES-256 key -> AES-256-ECB decrypt z -> plaintext
       -> re-encrypt -> reproduce z byte-for-byte.
Uses the FRESH capture (unix 1783874056).
"""
import hashlib, struct
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

# Fresh capture
UNIX = 1783874056
Z = "0ce08cad367f9ebd0c0bc606b1b599304b5025f6375a7d7e9833211a42ca43db0c08f31d7ee72faddafb7327f93ee5d0fa"
CAPTURED_KEY = "8192f7fc70d13b813c2ac5913469f052c30accef2a7dbc1b29d22309762a975d"

seed = UNIX >> 4
key = derive_key(seed)
print(f"1) request time (unix seconds): {UNIX}")
print(f"2) seed = floor(unix/16)      : {seed}")
print(f"3) derived AES-256 key        : {key.hex()}")
print(f"   captured key (from device) : {CAPTURED_KEY}")
print(f"   KEY MATCH                  : {key.hex()==CAPTURED_KEY}")

pad = int(Z[:2], 16)
ct = bytes.fromhex(Z[2:])
pt = AES.new(key, AES.MODE_ECB).decrypt(ct)
zeros = pt[-pad:] == (b'\x00' * pad)
print(f"4) AES-256-ECB decrypt(z)     : {pt.hex()}")
print(f"   pad_length byte            : 0x{pad:02x} ({pad}); last {pad} bytes zero: {zeros}")
print(f"   recovered plaintext        : {pt[:-pad].hex()}  ({len(pt)-pad} bytes)")

recon = f"{pad:02x}" + AES.new(key, AES.MODE_ECB).encrypt(pt).hex()
print(f"5) re-encrypt -> z            : {recon}")
print(f"   original z                 : {Z}")
print(f"\n{'='*64}")
print(f"END-TO-END (time -> key -> decrypt -> re-encrypt -> z): {'PROVEN' if recon.lower()==Z.lower() and key.hex()==CAPTURED_KEY else 'FAILED'}")
print(f"{'='*64}")
