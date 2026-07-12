#!/usr/bin/env python3
"""
discriminating_test.py — Distinguish "server responds" from "server actually processes z".

Rigorous tests to separate:
  (A) generic 200 for anything (server ignores z)  vs
  (B) server parses/validates z (different behavior for malformed input)

We measure: HTTP code, body length, body content, response time, and whether the
response is decryptable/correlated with the request. We vary z length, charset,
v-value, and repetition.
"""
import subprocess, time, os, json, hashlib, struct
from Crypto.Cipher import AES

BASE = "https://push-918010152455.europe-west1.run.app/"
UA = "user-agent: Dart/3.5 (dart:io)"

def req(qs, extra_headers=None, timeout=15):
    cmd = ["curl", "-s", "-w", "\n---CODE:%{http_code}:TIME:%{time_total}:SIZE:%{size_download}---", BASE + qs, "-H", UA]
    if extra_headers:
        for h in extra_headers:
            cmd += ["-H", h]
    r = subprocess.run(cmd, capture_output=True, timeout=timeout)
    out = r.stdout.decode('latin-1')
    if "---CODE:" in out:
        body, meta = out.rsplit("---CODE:", 1)
        meta = meta.rstrip("-")
        parts = dict(zip(["code","time","size"], [meta.split(":TIME:")[0]] + meta.split(":TIME:")[1].split(":SIZE:")))
        code = meta.split(":TIME:")[0]
        rest = meta.split(":TIME:")[1]
        tt = rest.split(":SIZE:")[0]
        sz = rest.split(":SIZE:")[1]
        return {"code": code, "time": float(tt), "size": int(sz), "body": body.strip()}
    return {"code":"?","time":0,"size":0,"body":out.strip()}

def show(label, qs, **kw):
    r = req(qs, **kw)
    b = r["body"]
    print(f"  {label:42s} code={r['code']} size={r['size']:4d} time={r['time']:.3f}s body={b[:70]}{'...' if len(b)>70 else ''}")
    return r

print("="*90)
print("GROUP 1 — z LENGTH variations (does server care about the 98-hex structure?)")
print("="*90)
show("valid length (98 hex)",         f"?z=0c{'ab'*48}&v=20")
show("too short (10 hex)",            f"?z=0c{'ab'*4}&v=20")
show("too long (200 hex)",            f"?z=0c{'ab'*99}&v=20")
show("1 char",                        f"?z=a&v=20")
show("odd length (97 hex)",           f"?z=0c{'ab'*47}a&v=20")
show("512 hex",                       f"?z=0c{'ab'*255}&v=20")
show("very long (4000 hex)",          f"?z=0c{'ab'*2000}&v=20")

print()
print("="*90)
print("GROUP 2 — CHARSET variations (does server require hex?)")
print("="*90)
show("non-hex letters (zzz...)",      f"?z={'zz'*49}&v=20")
show("special chars",                 f"?z=!!!@@@###$$$&v=20")
show("URL-encoded spaces",            f"?z=%20%20%20%20&v=20")
show("SQL-ish",                       f"?z=0c'OR'1'='1&v=20")
show("mixed hex+text",                f"?z=0cABCDEFhello123&v=20")

print()
print("="*90)
print("GROUP 3 — v PARAM variations (does server validate version?)")
print("="*90)
Z = f"0c{'ab'*48}"
show("v=20 (normal)",                 f"?z={Z}&v=20")
show("v=1",                           f"?z={Z}&v=1")
show("v=999",                         f"?z={Z}&v=999")
show("v=abc",                         f"?z={Z}&v=abc")
show("no v",                          f"?z={Z}")
show("v empty",                       f"?z={Z}&v=")

print()
print("="*90)
print("GROUP 4 — RESPONSE STRUCTURE: is it correlated to z or purely random?")
print("="*90)
# Send the SAME z many times; measure response uniqueness
same_z = f"0c{'ab'*48}"
resps = [req(f"?z={same_z}&v=20")["body"] for _ in range(6)]
uniq = len(set(resps))
print(f"  same z x6 -> {uniq} unique responses (all-random if =6, deterministic if =1)")
for i,rr in enumerate(resps): print(f"    #{i}: {rr}")

# Response length distribution across very different inputs
print()
lengths = {}
for _ in range(10):
    rz = "0c" + os.urandom(48).hex()
    b = req(f"?z={rz}&v=20")["body"]
    lengths[len(b)] = lengths.get(len(b),0)+1
print(f"  response-length histogram over 10 random z: {lengths}")

print()
print("="*90)
print("GROUP 5 — Is the 33-byte response the app's registration token? (structural)")
print("="*90)
b = req(f"?z={same_z}&v=20")["body"]
print(f"  response: {b}")
print(f"  hex chars: {len(b)}  raw bytes: {len(b)//2 if all(c in '0123456789abcdef' for c in b) else 'NOT-HEX'}")
print(f"  all hex: {all(c in '0123456789abcdefABCDEF' for c in b)}")
