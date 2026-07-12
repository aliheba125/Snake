#!/usr/bin/env python3
"""Attempt to decrypt the z payload from Snake Engine API using candidate keys."""
from Crypto.Cipher import AES, ChaCha20_Poly1305

# Captured z payloads (remove 0c prefix)
z1 = bytes.fromhex("6da67c93688e58ee2d71b107a165569b931542170d6220ed6379450e253b6f28affa875fbf1fac36ef12a2520cf35c6a")
z2 = bytes.fromhex("09da02f6dd5ea80c70486c4ffb36404381d4ed99ce4f3ecb852cac3dbd49a2766c009a1d5b40031ae5b9221724be4c47")

# Candidate keys from Dart pool
keys = {
    "K1_b730": bytes.fromhex("f18ae90baf16074899d5979d955d8a6002e56e75ac2ab6a0e81176467772f8ae"),
    "K2_131b0": bytes.fromhex("be4fdfa1984fcac6820271017ecd63e543069a6e582d5452e088b48cd288ae50"),
    "K3_14010": bytes.fromhex("85be3b1a485a84359d7d2ead462f09b7cbcd2f33ba93d776dbb91c7d2b739b8c"),
    "K4_16B": bytes.fromhex("b8621122bc62a9d0b68bdac18ee7491b"),
    "K5_28B": bytes.fromhex("d0166552cf5886ffc1fcadeffd892870dd077f45d50cccfed5e4b7"),
}

print("Attempting decryption of z payload (48 bytes each)")
print("=" * 60)

success = False
for z_name, z_data in [("Z1", z1), ("Z2", z2)]:
    print(f"\n{z_name}: {z_data.hex()[:40]}... ({len(z_data)}B)")
    
    for kname, key in keys.items():
        # Pad key to 32 if shorter (for AES-256)
        k32 = (key + b"\x00" * 32)[:32]
        k16 = key[:16]
        
        # === AES-256-GCM variations ===
        # Variation A: nonce(12) + ct(20) + tag(16) = 48
        for nonce_len in [12, 8, 16]:
            tag_len = 16
            if nonce_len + tag_len > len(z_data):
                continue
            nonce = z_data[:nonce_len]
            tag = z_data[-tag_len:]
            ct = z_data[nonce_len:-tag_len]
            for k, kl in [(k32, "256"), (k16, "128")]:
                if len(k) not in [16, 24, 32]:
                    continue
                try:
                    c = AES.new(k, AES.MODE_GCM, nonce=nonce)
                    pt = c.decrypt_and_verify(ct, tag)
                    print(f"  *** {kname} AES-{kl}-GCM nonce={nonce_len}B: {pt.hex()}")
                    print(f"      ASCII: {pt}")
                    success = True
                except (ValueError, KeyError):
                    pass
        
        # Variation B: tag(16) + nonce(12) + ct(20) 
        try:
            tag = z_data[:16]
            nonce = z_data[16:28]
            ct = z_data[28:]
            c = AES.new(k32, AES.MODE_GCM, nonce=nonce)
            pt = c.decrypt_and_verify(ct, tag)
            print(f"  *** {kname} AES-GCM tag-first: {pt.hex()} ASCII: {pt}")
            success = True
        except:
            pass
        
        # === AES-256-CBC ===
        # IV(16) + ct(32)
        try:
            iv = z_data[:16]
            ct = z_data[16:]
            c = AES.new(k32, AES.MODE_CBC, iv=iv)
            pt = c.decrypt(ct)
            pad = pt[-1]
            if 1 <= pad <= 16 and all(b == pad for b in pt[-pad:]):
                pt = pt[:-pad]
                if any(32 <= b < 127 for b in pt[:8]):
                    print(f"  *** {kname} AES-CBC: {pt.hex()} ASCII: {pt}")
                    success = True
        except:
            pass
        
        # === AES-256-ECB (no IV, raw decrypt) ===
        if len(z_data) % 16 == 0:
            try:
                c = AES.new(k32, AES.MODE_ECB)
                pt = c.decrypt(z_data)
                if any(32 <= b < 127 for b in pt[:16]):
                    print(f"  *** {kname} AES-ECB: {pt[:32].hex()}... ASCII: {pt[:32]}")
                    success = True
            except:
                pass
        
        # === ChaCha20-Poly1305 ===
        if len(k32) == 32:
            try:
                nonce = z_data[:12]
                tag = z_data[-16:]
                ct = z_data[12:-16]
                c = ChaCha20_Poly1305.new(key=k32, nonce=nonce)
                pt = c.decrypt_and_verify(ct, tag)
                print(f"  *** {kname} ChaCha20: {pt.hex()} ASCII: {pt}")
                success = True
            except:
                pass

if not success:
    print("\n" + "=" * 60)
    print("NO DECRYPTION SUCCEEDED with any candidate key/mode combination.")
    print("The encryption key is NOT among the pool constants tested.")
    print("It must be derived at runtime or stored in a different form.")
    print("=" * 60)
else:
    print("\n*** DECRYPTION SUCCESSFUL! ***")
