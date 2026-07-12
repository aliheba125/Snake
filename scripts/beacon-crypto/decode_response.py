#!/usr/bin/env python3
"""
decode_response.py — Decode the SEMANTICS of the server's 32-byte response record
by controlled correlation: hold (time,id) fixed or vary them and observe which
response fields change.

Tests:
  A. Same (time,id) sent repeatedly  -> is the decrypted record deterministic?
  B. Fixed time, varying id          -> which fields track id?
  C. Fixed id, real time advancing    -> which fields track time?
"""
import hashlib, struct, time, os, subprocess
from Crypto.Cipher import AES
M64 = (1 << 64) - 1
def rotl64(x, r): x &= M64; return ((x << r) | (x >> (64 - r))) & M64
def prng16(seed):
    seed &= 0xFFFFFFFF
    P1=(seed*0xA5A5A5A5A5A5A5A5)&M64; P2=(seed*0xB4B4B4B4B4B4A000)&M64
    A=(P2&~0x1FFF)|((P1>>51)&0x1FFF); E=P1^0xA3A3A3A3A3A3A3A3; B=rotl64(E,7)
    return struct.pack("<QQ",A&M64,B)
def shuffle(buf,seed):
    b=bytearray(buf);n=len(b);seed&=0xFFFFFFFF;i=0
    while i<n:
        rem=n-i;seed=((seed*0x5BD1E995)&0xFFFFFFFF)^(seed>>15);off=seed%rem if rem else 0
        if off:j=i+off;b[i],b[j]=b[j],b[i]
        i+=1
    return bytes(b)
def master_key(seed): return hashlib.sha256(shuffle(hashlib.sha256(prng16(seed)).digest(),seed)).digest()
def gen32(t,idv):
    buf=bytearray(32); u6=(t&0xFFFFFFFF)*0x9E3779B1&M64; u5=(idv&M64)*0x5F356495&M64
    for i in range(16):
        u5=((u5^((u5<<0x11)&M64))*0x9E3779B1)&M64
        u7=(u5+((u6^(u6>>0xd))*0x5F356495))&M64
        u6=0 if u7==M64 else u7
        m=(u6^u5)&M64
        buf[i]=(m>>(i&7))&0xFF; buf[i+16]=(m>>((i+4)&7))&0xFF
    return bytes(buf)
def resp_key(t,idv): return hashlib.sha256(gen32(t,idv)).digest()
def craft_z(sec,mask,ident):
    key=master_key(sec>>4)
    P=struct.pack('<Q',(ident^mask)&M64)+struct.pack('<I',mask&0xFFFFFFFF)+struct.pack('<I',(sec^mask)&0xFFFFFFFF)
    Q=os.urandom(16); pay=bytearray(32)
    for i in range(16): pay[2*i]=P[i]; pay[2*i+1]=Q[i]
    pt=b'\x00'*4+bytes(pay); pad=(16-len(pt)%16)%16
    ct=AES.new(key,AES.MODE_ECB).encrypt(pt+b'\x00'*pad)
    return f"{pad:02x}"+ct.hex()
def send(z):
    r=subprocess.run(["curl","-s",f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20","-H","user-agent: Dart/3.5 (dart:io)"],capture_output=True,timeout=15)
    return r.stdout.decode().strip()
def decrypt_resp(resp, t, idv):
    rb=bytes.fromhex(resp)
    return rb[0], AES.new(resp_key(t,idv),AES.MODE_ECB).decrypt(rb[1:33])

def spaced(pt):
    return ' '.join(pt[i:i+1].hex() for i in range(len(pt)))

print("="*74)
print("A. SAME (time,id) x4 rapidly — is the decrypted record deterministic?")
print("="*74)
t0=int(time.time()); id0=0x1122334455667788; mask0=0xdeadbeef
recs=[]
for k in range(4):
    z=craft_z(t0,mask0,id0); r=send(z)
    if r and len(r)>=66:
        pfx,pt=decrypt_resp(r,t0,id0); recs.append(pt)
        print(f"  #{k} prefix=0x{pfx:02x} rec={pt.hex()}")
    time.sleep(0.4)
if len(recs)>1:
    const=sum(1 for i in range(32) if len(set(r[i] for r in recs))==1)
    print(f"  -> constant positions across identical (time,id): {const}/32")
    print(f"  -> {'DETERMINISTic' if const==32 else 'has server-side varying fields (counter/nonce/time)'}")

print()
print("="*74)
print("B. FIXED time, VARYING id — which response fields track id?")
print("="*74)
base=None
for k in range(4):
    idk=0x1000000000000000+k
    z=craft_z(t0,mask0,idk); r=send(z)
    if r and len(r)>=66:
        pfx,pt=decrypt_resp(r,t0,idk)
        print(f"  id=..{idk&0xffff:04x} rec={pt.hex()}")

print()
print("="*74)
print("C. Interpret constant markers as little-endian integers")
print("="*74)
if recs:
    rec=recs[0]
    print(f"  sample record: {rec.hex()}")
    print(f"  [1:4]  9c1400   -> LE u24 = {int.from_bytes(rec[1:4],'little')}")
    print(f"  [16:20] {rec[16:20].hex()} -> LE u32 = {int.from_bytes(rec[16:20],'little')}")
    print(f"  [20:22] {rec[20:22].hex()} -> LE u16 = {int.from_bytes(rec[20:22],'little')}")
    print(f"  [28:32] {rec[28:32].hex()} -> LE u32 = {int.from_bytes(rec[28:32],'little')}")
    # Try interpreting field [4:8] or [6:16] as an echoed id / timestamp
    for off in range(0,28,4):
        v=int.from_bytes(rec[off:off+4],'little')
        print(f"    [{off:2d}:{off+4}] LE u32 = {v:#010x} ({v})")
