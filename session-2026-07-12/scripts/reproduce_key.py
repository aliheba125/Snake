#!/usr/bin/env python3
"""
reproduce_key.py — Reproduce the AES-256 master key OFFLINE from the time seed alone.

Derivation (reverse-engineered from libengine.so):
  P1  = (seed * 0xA5A5A5A5A5A5A5A5) mod 2^64
  P2  = (seed * 0xB4B4B4B4B4B4A000) mod 2^64
  A   = (P2 & ~0x1FFF) | ((P1 >> 51) & 0x1FFF)
  E   = P1 ^ 0xA3A3A3A3A3A3A3A3
  B   = rotl64(E, 7)
  b16 = LE64(A) || LE64(B)                       # FUN_001614a4
  d1  = SHA256(b16)                              # FUN_00161428 (verified standard SHA-256)
  shuffle(d1, seed)                              # FUN_00161598 Fisher-Yates, MurmurHash2 mix
  key = SHA256(d1_shuffled)                      # FUN_00161428 again
seed = (unix_seconds - baseline) >> 4            # ~16s time bucket (FUN_0016169c)
"""
import hashlib, struct

M64 = (1 << 64) - 1

def rotl64(x, r):
    x &= M64
    return ((x << r) | (x >> (64 - r))) & M64

def prng16(seed):
    seed &= 0xFFFFFFFF
    P1 = (seed * 0xA5A5A5A5A5A5A5A5) & M64
    P2 = (seed * 0xB4B4B4B4B4B4A000) & M64
    A = (P2 & ~0x1FFF) | ((P1 >> 51) & 0x1FFF)
    A &= M64
    E = P1 ^ 0xA3A3A3A3A3A3A3A3
    B = rotl64(E, 7)
    return struct.pack("<QQ", A, B)   # LE64(A) || LE64(B)

def shuffle(buf, seed):
    b = bytearray(buf)
    n = len(b)                 # 32
    seed &= 0xFFFFFFFF
    i = 0
    while i < n:
        remaining = n - i
        seed = ((seed * 0x5BD1E995) & 0xFFFFFFFF) ^ (seed >> 15)
        if remaining != 0:
            off = seed % remaining
        else:
            off = 0
        if off != 0:
            j = i + off
            b[i], b[j] = b[j], b[i]
        i += 1
    return bytes(b)

def derive_key(seed):
    b16 = prng16(seed)
    d1 = hashlib.sha256(b16).digest()
    d1s = shuffle(d1, seed)
    key = hashlib.sha256(d1s).digest()
    return key

if __name__ == "__main__":
    TARGET = bytes.fromhex("40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24")
    # Candidate seed from recorded wall time (baseline=0): floor(1783873638/16)
    for guess in [1783873638 >> 4, 1783873643 >> 4]:
        k = derive_key(guess)
        print(f"seed={guess}: {k.hex()}  match={k==TARGET}")

    # If none match, brute-force a window around the candidate (covers unknown baseline/rounding)
    if not any(derive_key(s) == TARGET for s in [1783873638 >> 4, 1783873643 >> 4]):
        print("\nBrute-forcing seed window ...")
        center = 1783873640 >> 4
        found = None
        for delta in range(-200000, 200001):
            s = center + delta
            if s < 0: continue
            if derive_key(s) == TARGET:
                found = s; break
        if found is not None:
            print(f"FOUND seed = {found}  (delta {found-center} from time-bucket center)")
            print(f"  unix_seconds range implied: [{found*16}, {found*16+15}]")
        else:
            print("no match in +/-200000 window")
