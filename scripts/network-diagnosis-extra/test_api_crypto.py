#!/usr/bin/env python3
"""Test Snake Engine backend API with discovered hardcoded crypto keys."""
import hashlib
import hmac
import json
import time
import base64
import sys

try:
    from Crypto.Cipher import AES
    from Crypto.Util.Padding import pad
except ImportError:
    from Cryptodome.Cipher import AES
    from Cryptodome.Util.Padding import pad

import requests

# Discovered keys from Dart object pool (next to _Bpa API builder class)
KEY_AES = bytes.fromhex("b8621122bc62a9d0b68bdac18ee7491b")  # 16 bytes = AES-128
KEY_HMAC = bytes.fromhex("d0166552cf5886ffc1fcadeffd892870dd077f45d50cccfed5e4b7")  # 28 bytes

# Device info
ANDROID_ID = "8840bf6a81679fc4"
TIMESTAMP = str(int(time.time()))

print(f"AES key (16B): {KEY_AES.hex()}")
print(f"HMAC key (28B): {KEY_HMAC.hex()}")
print(f"Android ID: {ANDROID_ID}")
print(f"Timestamp: {TIMESTAMP}")
print()

# Build plaintext payload
payload = json.dumps({"action": "init", "deviceId": ANDROID_ID, "timestamp": TIMESTAMP})
print(f"Plaintext: {payload}")
print()

# Encryption approaches
results = []

# Approach 1: AES-128-CBC with IV = HMAC_KEY[:16]
iv1 = KEY_HMAC[:16]
c1 = AES.new(KEY_AES, AES.MODE_CBC, iv1)
ct1 = base64.b64encode(c1.encrypt(pad(payload.encode(), 16))).decode()
results.append(("AES-CBC IV=HMAC[:16]", ct1))

# Approach 2: AES-128-ECB
c2 = AES.new(KEY_AES, AES.MODE_ECB)
ct2 = base64.b64encode(c2.encrypt(pad(payload.encode(), 16))).decode()
results.append(("AES-ECB", ct2))

# Approach 3: AES-128-CBC IV=zeros
c3 = AES.new(KEY_AES, AES.MODE_CBC, b'\x00'*16)
ct3 = base64.b64encode(c3.encrypt(pad(payload.encode(), 16))).decode()
results.append(("AES-CBC IV=0", ct3))

# Approach 4: AES-128-GCM (common in modern apps)
from Crypto.Cipher import AES as AES2
c4 = AES2.new(KEY_AES, AES2.MODE_GCM, nonce=KEY_HMAC[:12])
ct4_raw, tag4 = c4.encrypt_and_digest(payload.encode())
ct4 = base64.b64encode(c4.nonce + ct4_raw + tag4).decode()
results.append(("AES-GCM nonce=HMAC[:12]", ct4))

ENDPOINT = "https://rest.snakeseller.com/api/request/"

print("=" * 60)
print("Testing encrypted payloads against backend")
print("=" * 60)

for name, ct in results:
    print(f"\n--- {name} ---")
    
    # Form 1: standard fields
    r = requests.post(ENDPOINT, data={
        "encryptedData": ct,
        "deviceId": ANDROID_ID,
        "timestamp": TIMESTAMP
    })
    print(f"  form(encryptedData+deviceId+ts): {r.status_code} => {r.text[:120]}")
    
    # Form 2: action explicit
    r2 = requests.post(ENDPOINT, data={
        "action": "init",
        "encryptedData": ct,
        "deviceId": ANDROID_ID,
        "timestamp": TIMESTAMP
    })
    print(f"  form(action+enc+did+ts):         {r2.status_code} => {r2.text[:120]}")

# Also try: maybe the keys are swapped (HMAC as AES key truncated)
print("\n--- Swapped: HMAC[:16] as AES key, AES key as part of payload ---")
c5 = AES.new(KEY_HMAC[:16], AES.MODE_CBC, b'\x00'*16)
ct5 = base64.b64encode(c5.encrypt(pad(payload.encode(), 16))).decode()
r5 = requests.post(ENDPOINT, data={
    "encryptedData": ct5,
    "deviceId": ANDROID_ID,
    "timestamp": TIMESTAMP
})
print(f"  {r5.status_code} => {r5.text[:120]}")

# HMAC approach: maybe encryptedData is just HMAC-signed, not AES-encrypted
print("\n--- HMAC-only: encryptedData = base64(HMAC(payload)) ---")
sig = hmac.new(KEY_HMAC, payload.encode(), hashlib.sha256).hexdigest()
r6 = requests.post(ENDPOINT, data={
    "action": "init",
    "deviceId": ANDROID_ID,
    "timestamp": TIMESTAMP,
    "signature": sig
})
print(f"  with sig field: {r6.status_code} => {r6.text[:120]}")

r7 = requests.post(ENDPOINT, data={
    "encryptedData": sig,
    "deviceId": ANDROID_ID,
    "timestamp": TIMESTAMP
})
print(f"  encryptedData=hmac: {r7.status_code} => {r7.text[:120]}")

print("\n" + "=" * 60)
print("DONE")
