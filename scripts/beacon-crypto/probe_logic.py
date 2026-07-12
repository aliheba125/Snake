#!/usr/bin/env python3
"""
probe_logic.py — Map the server's actual z-processing logic precisely.
Findings so far:
  - odd-length or non-hex -> HTTP 500 (server tries to hex-decode: real parsing)
  - short valid-hex -> 200 but size=0 (no token)
  - long-enough valid-hex -> 200 + 66-hex token
Now: find the exact length threshold, and whether decryptability matters.
"""
import subprocess, os, hashlib, struct, time
from Crypto.Cipher import AES

BASE = "https://push-918010152455.europe-west1.run.app/"
UA = "user-agent: Dart/3.5 (dart:io)"

def req(qs):
    cmd = ["curl","-s","-w","\n---CODE:%{http_code}:SIZE:%{size_download}---",BASE+qs,"-H",UA]
    r = subprocess.run(cmd, capture_output=True, timeout=15)
    out = r.stdout.decode('latin-1')
    body, meta = out.rsplit("---CODE:",1) if "---CODE:" in out else (out,"?:SIZE:0")
    code = meta.split(":SIZE:")[0]
    size = int(meta.split(":SIZE:")[1].rstrip("-"))
    return code, size, body.strip()

print("="*80)
print("A) EXACT LENGTH THRESHOLD for getting a token (valid hex, even length)")
print("="*80)
for nbytes in [1,2,4,8,16,20,24,28,31,32,33,40,48,49,64]:
    z = os.urandom(nbytes).hex()
    code,size,body = req(f"?z={z}&v=20")
    print(f"  z={nbytes:3d} bytes ({len(z):3d} hex): code={code} size={size}")

print()
print("="*80)
print("B) Does the FIRST byte (pad_length) matter? (48-byte ct + varying prefix)")
print("="*80)
for pad in [0x00, 0x0c, 0x10, 0x0f, 0xff]:
    z = f"{pad:02x}" + ("ab"*48)
    code,size,body = req(f"?z={z}&v=20")
    print(f"  pad=0x{pad:02x}: code={code} size={size} body={body[:40]}")

print()
print("="*80)
print("C) Does DECRYPTABILITY matter? Valid-key z vs random-48 z (both 49 bytes)")
print("="*80)
# Craft a properly-decryptable z
M64=(1<<64)-1
def rotl64(x,r): x&=M64; return ((x<<r)|(x>>(64-r)))&M64
def prng16(s):
    s&=0xFFFFFFFF;P1=(s*0xA5A5A5A5A5A5A5A5)&M64;P2=(s*0xB4B4B4B4B4B4A000)&M64
    A=(P2&~0x1FFF)|((P1>>51)&0x1FFF);E=P1^0xA3A3A3A3A3A3A3A3;B=rotl64(E,7)
    return struct.pack("<QQ",A&M64,B)
def shuffle(buf,s):
    b=bytearray(buf);n=len(b);s&=0xFFFFFFFF;i=0
    while i<n:
        rem=n-i;s=((s*0x5BD1E995)&0xFFFFFFFF)^(s>>15);off=s%rem if rem else 0
        if off:j=i+off;b[i],b[j]=b[j],b[i]
        i+=1
    return bytes(b)
def dkey(s): return hashlib.sha256(shuffle(hashlib.sha256(prng16(s)).digest(),s)).digest()

now=int(time.time());key=dkey(now>>4)
mask=int.from_bytes(os.urandom(4),'little');ident=int.from_bytes(os.urandom(8),'little')
P=struct.pack('<Q',ident^mask)+struct.pack('<I',mask)+struct.pack('<I',now^mask);Q=os.urandom(16)
pay=bytearray(32)
for i in range(16):pay[2*i]=P[i];pay[2*i+1]=Q[i]
pt=b'\x00'*4+bytes(pay)
pt=pt+b'\x00'*((16-len(pt)%16)%16)  # pad to block boundary (48 bytes)
ct=AES.new(key,AES.MODE_ECB).encrypt(pt)
valid_z=f"0c{ct.hex()}"
rand_z="0c"+os.urandom(48).hex()
c1,s1,b1=req(f"?z={valid_z}&v=20")
c2,s2,b2=req(f"?z={rand_z}&v=20")
print(f"  valid decryptable z : code={c1} size={s1} body={b1[:50]}")
print(f"  random undecryptable: code={c2} size={s2} body={b2[:50]}")
print(f"  => if both size=66, server does NOT verify decryptability")

print()
print("="*80)
print("D) Is the 33-byte response deterministic given z + time bucket? (decrypt attempt)")
print("="*80)
# Try: is response = AES-ECB(key, something)? 33 bytes = 1 + 32. Try padlen||ct.
resp_hex = b1
if all(c in '0123456789abcdef' for c in resp_hex) and len(resp_hex)==66:
    rb=bytes.fromhex(resp_hex)
    pl=rb[0]; ctr=rb[1:]
    for delta in [-2,-1,0,1,2]:
        k=dkey((now>>4)+delta)
        dec=AES.new(k,AES.MODE_ECB).decrypt(ctr)
        ok = pl>0 and pl<=32 and dec[-pl:]==b'\x00'*pl
        if ok:
            print(f"  RESPONSE DECRYPTS with key seed{delta:+d}! padlen={pl} pt={dec.hex()}")
            break
    else:
        print(f"  response does not decrypt as padlen||ct with time-bucket key (likely server-random nonce)")

print()
print("="*80)
print("E) HTTP 500 on malformed = server-side exception (proves real parsing)")
print("="*80)
for label,z in [("odd-length","0c"+"ab"*47+"a"),("non-hex","zz"*49),("has-space","0c ab"),("has-G","0cGG"+"ab"*47)]:
    code,size,body=req(f"?z={z}&v=20")
    print(f"  {label:15s}: code={code} size={size}")
