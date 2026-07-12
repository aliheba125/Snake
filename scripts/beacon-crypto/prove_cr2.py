#!/usr/bin/env python3
"""
prove_cr2.py — Rigorous confirmation that the server encrypts its response with
resp_key = SHA256(gen32(time,id)), i.e. it DECRYPTED our z to recover (time,id).

Success criterion (corrected): decrypting the response with the CORRECT resp_key
yields a consistent, structured 32-byte record; decrypting with a WRONG key yields
high-entropy noise with no shared template. We quantify this.
"""
import hashlib, struct, time, os, subprocess, math
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
def entropy(b):
    if not b: return 0
    from collections import Counter
    c=Counter(b); n=len(b)
    return -sum((v/n)*math.log2(v/n) for v in c.values())

print("Sending 5 crafted z with known (id,time); decrypting responses with correct vs wrong resp_key.\n")
correct_pts=[]; wrong_pts=[]
for k in range(5):
    now=int(time.time()); mask=int.from_bytes(os.urandom(4),'little'); ident=int.from_bytes(os.urandom(8),'little')
    z=craft_z(now,mask,ident); resp=send(z)
    if not(resp and all(c in '0123456789abcdef' for c in resp) and len(resp)>=66):
        print(f"trial {k}: bad resp"); continue
    rb=bytes.fromhex(resp); ct=rb[1:33]
    ck=resp_key(now,ident); wk=resp_key(now^0xABCD, ident^0xDEADBEEF)
    cpt=AES.new(ck,AES.MODE_ECB).decrypt(ct); wpt=AES.new(wk,AES.MODE_ECB).decrypt(ct)
    correct_pts.append(cpt); wrong_pts.append(wpt)
    print(f"trial {k}: prefix=0x{rb[0]:02x}")
    print(f"  correct-key pt: {cpt.hex()}  entropy={entropy(cpt):.2f}")
    print(f"  wrong-key   pt: {wpt.hex()}  entropy={entropy(wpt):.2f}")

# Analyze positional constancy: how many byte positions are identical across all correct decrypts?
def const_positions(pts):
    if not pts: return 0
    n=len(pts[0]); cnt=0
    for i in range(n):
        if len(set(p[i] for p in pts))==1: cnt+=1
    return cnt

print("\n=== ANALYSIS ===")
print(f"correct-key: identical byte positions across {len(correct_pts)} trials = {const_positions(correct_pts)}/32")
print(f"wrong-key:   identical byte positions across {len(wrong_pts)} trials = {const_positions(wrong_pts)}/32")
print(f"avg entropy correct: {sum(entropy(p) for p in correct_pts)/len(correct_pts):.2f} bits/byte")
print(f"avg entropy wrong:   {sum(entropy(p) for p in wrong_pts)/len(wrong_pts):.2f} bits/byte")
print()
print("If correct-key shows MANY constant positions (structured template) and wrong-key")
print("shows ~0 constant positions (noise), the server encrypted its response with")
print("resp_key(time,id) => it DECRYPTED our z to recover (time,id). Proven downstream")
print("cryptographic processing of z.")
