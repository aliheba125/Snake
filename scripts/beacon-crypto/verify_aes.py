#!/usr/bin/env python3
"""Verify: decrypt z with captured master_key using AES-256-ECB"""
try:
    from Crypto.Cipher import AES
except ImportError:
    import subprocess, sys
    subprocess.check_call([sys.executable, "-m", "pip", "install", "--quiet", "pycryptodome"])
    from Crypto.Cipher import AES

# Captured data (run 1)
z_hex = "0ca4bddde6cc907e770920b54393bba0740a1a164ff6d8843c3da18da6ca7f1d8a65aa21788626ab09573127ea5f168429"
master_key_hex = "1c1a34ce2dedce083555142ba944090516ff75fc1427a81f56983a6e15c9d1ea"

pad_len = int(z_hex[:2], 16)
ct = bytes.fromhex(z_hex[2:])
key = bytes.fromhex(master_key_hex)
print(f"z: {z_hex}")
print(f"pad_len: 0x{pad_len:02x} = {pad_len}")
print(f"ciphertext ({len(ct)} bytes): {ct.hex()}")
print(f"key ({len(key)} bytes): {key.hex()}")
print()

# Try AES-256-ECB decrypt with captured key
c = AES.new(key, AES.MODE_ECB)
pt = c.decrypt(ct)
print(f"decrypted plaintext ({len(pt)} bytes): {pt.hex()}")
print(f"                                        : {pt}")
print(f"last 12 bytes (should be zero padding): {pt[-12:].hex()}")
zeros = pt[-12:] == b'\x00' * 12
print(f"padding is 12 zeros: {zeros}")
print()

# Also try with ZERO key
zero_key = b'\x00' * 32
c = AES.new(zero_key, AES.MODE_ECB)
pt0 = c.decrypt(ct)
print(f"decrypted with zero-key: {pt0.hex()}")
print(f"last 12 bytes: {pt0[-12:].hex()}")

# Also try if the encryption is AES-CBC with 16-byte IV = last block or first block
# ... skip for now
