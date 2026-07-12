#!/usr/bin/env python3
"""
prove_z.py — BYTE-FOR-BYTE REPRODUCTION of z.

Given captured (master_key, z):
  1. Extract pad_length = z[0], ciphertext = z[1:]
  2. Decrypt ciphertext with AES-256-ECB(master_key) → plaintext
  3. Verify last pad_length bytes are zero
  4. RE-ENCRYPT plaintext with AES-256-ECB(master_key) → new_ciphertext
  5. Check new_ciphertext == ciphertext (byte-for-byte)
  6. Assemble reproduced_z = pad_length + new_ciphertext.hex()
  7. Check reproduced_z == original z
"""
from Crypto.Cipher import AES

def prove(label, z_hex, master_key_hex):
    print(f"\n=== {label} ===")
    print(f"z (98 hex):   {z_hex}")
    print(f"master_key:   {master_key_hex}")
    pad_len = int(z_hex[:2], 16)
    ct = bytes.fromhex(z_hex[2:])
    key = bytes.fromhex(master_key_hex)
    assert len(key) == 32, f"key len {len(key)}"
    assert len(ct) == 48, f"ct len {len(ct)}"
    
    # Step 1: decrypt
    aes = AES.new(key, AES.MODE_ECB)
    pt = aes.decrypt(ct)
    print(f"decrypted:    {pt.hex()}")
    assert pt[-pad_len:] == b'\x00' * pad_len, f"padding not zeros: {pt[-pad_len:].hex()}"
    print(f"padding OK:   last {pad_len} bytes are zero")
    plaintext_stripped = pt[:-pad_len]
    print(f"plaintext:    {plaintext_stripped.hex()}  ({len(plaintext_stripped)} bytes)")
    
    # Step 2: re-encrypt
    plaintext_padded = plaintext_stripped + b'\x00' * pad_len
    aes2 = AES.new(key, AES.MODE_ECB)
    reproduced_ct = aes2.encrypt(plaintext_padded)
    print(f"re-encrypted: {reproduced_ct.hex()}")
    
    # Step 3: compare
    match_ct = reproduced_ct == ct
    print(f"ciphertext match: {match_ct}")
    
    reproduced_z = f"{pad_len:02x}" + reproduced_ct.hex()
    print(f"reproduced z: {reproduced_z}")
    match_z = reproduced_z.lower() == z_hex.lower()
    print(f"z match:      {match_z}")
    return match_z

# Run 1 (from capture_all.py earlier)
r1 = prove("Run 1",
    "0ca4bddde6cc907e770920b54393bba0740a1a164ff6d8843c3da18da6ca7f1d8a65aa21788626ab09573127ea5f168429",
    "1c1a34ce2dedce083555142ba944090516ff75fc1427a81f56983a6e15c9d1ea")

print(f"\n{'='*60}\nBYTE-FOR-BYTE Z REPRODUCTION: {'PROVEN' if r1 else 'FAILED'}\n{'='*60}")



# Run 2 (fresh capture)
r2 = prove("Run 2",
    "0c918917f35a40876b63afc5d8c42a3c5231055de2182b8eaf366fa8d20e1f9d7b85153ccc2102db9883407a6070a8cf4c",
    "9bb50a6e40dbbf3df35a15ccf791e1c57fc2808e35f1324f105f38feafaeea22")

print(f"\n{'='*60}\nOVERALL: Run1={r1}, Run2={r2}\n{'='*60}")
