#!/usr/bin/env python3
"""
decode_mask.py — Confirm the response echoes the client-supplied mask, and map
which response bytes track mask vs id vs server-random.
mask is NOT an input to resp_key; if response bytes track mask, the server parsed
z's full plaintext structure (not just time,id).
"""
import hashlib, struct, time, os, subprocess
from Crypto.Cipher import AES
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
def mkey(s): return hashlib.sha256(shuffle(hashlib.sha256(prng16(s)).digest(),s)).digest()
def gen32(t,idv):
    buf=bytearray(32);u6=(t&0xFFFFFFFF)*0x9E3779B1&M64;u5=(idv&M64)*0x5F356495&M64
    for i in range(16):
        u5=((u5^((u5<<0x11)&M64))*0x9E3779B1)&M64
        u7=(u5+((u6^(u6>>0xd))*0x5F356495))&M64
        u6=0 if u7==M64 else u7;m=(u6^u5)&M64
        buf[i]=(m>>(i&7))&0xFF;buf[i+16]=(m>>((i+4)&7))&0xFF
    return bytes(buf)
def rkey(t,idv): return hashlib.sha256(gen32(t,idv)).digest()
def craft(sec,mask,ident):
    key=mkey(sec>>4)
    P=struct.pack('<Q',(ident^mask)&M64)+struct.pack('<I',mask&0xFFFFFFFF)+struct.pack('<I',(sec^mask)&0xFFFFFFFF)
    Q=os.urandom(16);pay=bytearray(32)
    for i in range(16):pay[2*i]=P[i];pay[2*i+1]=Q[i]
    pt=b'\x00'*4+bytes(pay);pad=(16-len(pt)%16)%16
    return f"{pad:02x}"+AES.new(key,AES.MODE_ECB).encrypt(pt+b'\x00'*pad).hex()
def send(z):
    return subprocess.run(["curl","-s",f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20","-H","user-agent: Dart/3.5 (dart:io)"],capture_output=True,timeout=15).stdout.decode().strip()
def dec(resp,t,idv):
    rb=bytes.fromhex(resp);return AES.new(rkey(t,idv),AES.MODE_ECB).decrypt(rb[1:33])

t=int(time.time()); idv=0x1122334455667788
print("Vary ONLY mask (fixed time,id). Watch which record bytes change.\n")
masks=[0x00000000,0xffffffff,0xdeadbeef,0x11111111,0xaabbccdd]
recs={}
for mk in masks:
    z=craft(t,mk,idv);r=send(z)
    if r and len(r)>=66:
        pt=dec(r,t,idv);recs[mk]=pt
        print(f"  mask={mk:#010x}: {pt.hex()}")
    time.sleep(0.3)

# Which positions vary with mask?
if len(recs)>=2:
    pts=list(recs.values())
    varying=[i for i in range(32) if len({p[i] for p in pts})>1]
    print(f"\n  positions that change with mask: {varying}")
    # Check hypothesis: positions 0,4,8,12 == mask bytes (LE)
    for mk,pt in recs.items():
        mb=[pt[0],pt[4],pt[8],pt[12]]
        le=mb[0]|(mb[1]<<8)|(mb[2]<<16)|(mb[3]<<24)
        print(f"    mask={mk:#010x} -> bytes[0,4,8,12]={' '.join(f'{b:02x}' for b in mb)} = LE {le:#010x}  match={le==mk}")
