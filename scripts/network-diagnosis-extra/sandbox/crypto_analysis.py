#!/usr/bin/env python3
"""Cryptanalysis of 5 captured z-payload samples."""

samples = [
    ("z1", "0c6da67c93688e58ee2d71b107a165569b931542170d6220ed6379450e253b6f28affa875fbf1fac36ef12a2520cf35c6a",
     "f11ac0aefb2c7ad89b10f6461fc5b034e8d73d343ceab67cbc61906c84425b5712"),
    ("z2", "0c09da02f6dd5ea80c70486c4ffb36404381d4ed99ce4f3ecb852cac3dbd49a2766c009a1d5b40031ae5b9221724be4c47",
     "6cf26bcec9f6da2322d14f369309f610b9ecc4ff894588d704106fbc9850746971"),
    ("z3", "0c3dc709ebc0e50fbd469c4240a77ae8384e22ab051ef50f1174e8f8620a01780fc5e22d218c83caf3a58b0a4b93352b98",
     "5877ae76b8338b76a8aa2a2073af765193c431533c809d4c84de501e9f7bdd9f42"),
    ("z4", "0c6df0e58dd95bb13de18ae9f502dba9ac5a46fca986c46cac30f73b699a96bf21a11d2f17d81d243423969c2e87d343a8", None),
    ("z5", "0c1c2b38fd66e0f75e1a284b3447ef5999c3fd54731da0f39892a833758191d7995a834ee1fafe9908148cc90f766e2837", None),
]

print("=" * 70)
print("  CRYPTANALYSIS: 5 z-payload samples + 3 responses")
print("=" * 70)

payloads = [bytes.fromhex(s[1])[1:] for s in samples]

print("\nStructure if AES-256-GCM (nonce=12B, ct=20B, tag=16B):")
print("-" * 60)
for i, (name, _, _) in enumerate(samples):
    p = payloads[i]
    nonce = p[:12]
    ct = p[12:32]
    tag = p[32:]
    print(f"  {name}: nonce={nonce.hex()} ct={ct.hex()} tag={tag.hex()}")

print("\n\nXOR of nonces (should be random - confirms different nonces each time):")
for i in range(len(payloads)-1):
    xor = bytes(a^b for a,b in zip(payloads[i][:12], payloads[i+1][:12]))
    print(f"  {samples[i][0]}^{samples[i+1][0]}: {xor.hex()}")

print("\n\nXOR of ciphertexts (if same plaintext, XOR reveals keystream difference):")
for i in range(len(payloads)-1):
    xor = bytes(a^b for a,b in zip(payloads[i][12:32], payloads[i+1][12:32]))
    print(f"  {samples[i][0]}^{samples[i+1][0]}: {xor.hex()}")
    # High entropy XOR = different plaintexts or different keys
    # If ALL bytes differ: either different plaintext each time OR properly different keystreams

# Response analysis
print("\n" + "=" * 70)
print("  RESPONSE STRUCTURE (33 bytes)")
print("=" * 70)
print("\nIf nonce(12B) + ciphertext(5B) + tag(16B) = 33B:")
for name, _, resp in samples:
    if resp:
        r = bytes.fromhex(resp)
        print(f"  {name}: nonce={r[:12].hex()} ct={r[12:17].hex()} tag={r[17:].hex()}")

print("\n\n=== CONCLUSION ===")
print("Request structure: version(1) + nonce(12) + ciphertext(20) + GCM_tag(16) = 49 bytes")
print("Response structure: nonce(12) + ciphertext(5) + GCM_tag(16) = 33 bytes")
print("")
print("Plaintext sizes:")
print("  Request plaintext:  20 bytes")
print("  Response plaintext: 5 bytes")
print("")
print("20-byte request plaintext likely contains:")
print("  Option A: android_id_hex[:16] (16B) + uint32_timestamp (4B) = 20B")
print("  Option B: android_id_raw (8B) + timestamp (4B) + random_nonce (8B) = 20B")
print("  Option C: device_hash[:20] (first 20 bytes of SHA-256 of device info)")
print("")
print("5-byte response plaintext likely contains:")
print("  1 byte status + 4 byte account_id (394318 = 0x0006042E)")
print("  OR: 1 byte flags + 4 byte expiry_timestamp")
print("")
print("The encryption key (32 bytes for AES-256) remains unextracted.")
print("It is embedded in Dart AOT code and used transiently during encryption.")
