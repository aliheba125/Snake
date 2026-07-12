#!/usr/bin/env python3
"""
plaintext_decode.py — Decode the 36-byte plaintext structure built by FUN_00165b70.

Layout (from decompile):
  plaintext[0:4]   = 0x00000000                       (zero prefix)
  plaintext[4:36]  = 32 bytes, byte-interleaved from two 16-byte blocks:
       even output bytes  <- block P (16 B): [ id^mask : 8 ][ mask : 4 ][ time^mask : 4 ]
       odd  output bytes  <- block Q (16 B): pure random (2x64-bit Mersenne-Twister draws)
  where mask (local_70), id (param_2, 64-bit random), time (param_3 = seconds-baseline)
"""
import struct

def decode(plaintext_hex, label):
    pt = bytes.fromhex(plaintext_hex)
    assert len(pt) == 36, len(pt)
    prefix = pt[:4]
    payload = pt[4:]                      # 32 bytes
    P = bytes(payload[i] for i in range(0, 32, 2))   # even -> block P (16)
    Q = bytes(payload[i] for i in range(1, 32, 2))   # odd  -> block Q (16, random)
    id_xor_mask = struct.unpack("<Q", P[0:8])[0]
    mask        = struct.unpack("<I", P[8:12])[0]
    time_xor    = struct.unpack("<I", P[12:16])[0]
    mask64      = mask | (mask << 32)
    ident       = id_xor_mask ^ (mask & 0xFFFFFFFF)   # mask is 32-bit; XOR low word
    time_val    = time_xor ^ mask
    all_zero = prefix == bytes(4)
    print(f"=== {label} ===")
    print(f"  zero prefix     : {prefix.hex()}  (all zero: {all_zero})")
    print(f"  block Q (random): {Q.hex()}")
    print(f"  mask  (local_70): 0x{mask:08x}")
    print(f"  id^mask (8B LE) : 0x{id_xor_mask:016x}")
    print(f"  recovered ident : 0x{id_xor_mask ^ mask:016x}  (low word un-masked)")
    print(f"  time^mask (4B)  : 0x{time_xor:08x}")
    print(f"  recovered time  : 0x{time_val:08x} = {time_val} (unsigned)")
    return time_val

# Fresh capture: wall unix ~1783874056
t = decode("00000000719601d07d7125d76ff1ded08b11f8d9e5c6ac7259e187f6ed286ed80ab9eddb",
           "fresh capture (unix ~1783874056)")
print(f"\n  capture unix seconds : 1783874056 (0x{1783874056:08x})")
print(f"  recovered time field : {t} (0x{t:08x})")
print(f"  difference (s)       : {1783874056 - t}")
