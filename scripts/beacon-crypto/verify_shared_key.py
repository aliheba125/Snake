#!/usr/bin/env python3
"""Verify: all 4 same-bucket launches' z reproduce with the SINGLE shared time-derived key."""
from Crypto.Cipher import AES

KEY = bytes.fromhex("40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24")
ZS = [
 "0c2584e0f33c2005db93f37f205612a2bb92dbfd2e05b315ec7f2135d1d97900a3980f3826665807fe0b382286b5af746b",
 "0c20a559497f2573770e4c1bfaf2d4c84ef2eca81b492d591477a77e92670e3772d7d22b5483913ed5c79bb82440525e21",
 "0ca6bb3e2c8814396cf2b11e5990b4854cdaacb938d911db3392a9a35b452ba4000fe56479a588e62c218f956775140327",
 "0c7e56215e13a06ad2f652e0b8a740212c27d2c3bb92a7d0dafb8bc41ca3bc9d600a9751e8492ca0a25de5deb7852da229",
]

print(f"Shared key (all 4 launches): {KEY.hex()}\n")
all_ok = True
for i, z in enumerate(ZS):
    pad = int(z[:2], 16)
    ct = bytes.fromhex(z[2:])
    pt = AES.new(KEY, AES.MODE_ECB).decrypt(ct)
    pad_ok = pt[-pad:] == b'\x00' * pad
    re_ct = AES.new(KEY, AES.MODE_ECB).encrypt(pt)
    repro = f"{pad:02x}" + re_ct.hex()
    ok = (repro.lower() == z.lower()) and pad_ok
    all_ok = all_ok and ok
    print(f"launch {i}: pad={pad} pad_ok={pad_ok} z_reproduced={repro.lower()==z.lower()}  plaintext={pt[:-pad].hex()}")

print(f"\n{'='*60}")
print(f"ALL 4 z REPRODUCED WITH SINGLE TIME-DERIVED KEY: {'YES' if all_ok else 'NO'}")
print(f"{'='*60}")
