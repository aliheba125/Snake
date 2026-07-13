#!/usr/bin/env python3
"""
response_correlation_extended.py — Extended version with 20+ samples per test.
Adds: varied time bucket offsets (17s, 30s, 60s, 120s, 300s), statistical summary.
"""
import hashlib, struct, time, os, subprocess, json, sys, math
from collections import Counter
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
        u6=0 if u7==M64 else u7; m=(u6^u5)&M64
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
def send_beacon(z):
    r=subprocess.run(["curl","-s","--max-time","15",
        f"https://push-918010152455.europe-west1.run.app/?z={z}&v=20",
        "-H","user-agent: Dart/3.5 (dart:io)"],capture_output=True,timeout=20)
    resp=r.stdout.decode().strip()
    if resp and len(resp)>=66 and all(c in '0123456789abcdef' for c in resp): return resp
    return None
def decrypt_response(resp_hex, t, idv):
    rb=bytes.fromhex(resp_hex); prefix=rb[0]; ct=rb[1:33]
    pt=AES.new(resp_key(t,idv),AES.MODE_ECB).decrypt(ct)
    return prefix, pt

def run_test(name, params, desc):
    print(f"\n{'='*70}\nTEST {name} ({len(params)} samples): {desc}\n{'='*70}")
    records = []
    for i,(t,mask,ident) in enumerate(params):
        z=craft_z(t,mask,ident); resp=send_beacon(z)
        if resp is None: print(f"  [{i}] FAILED"); continue
        prefix,pt=decrypt_response(resp,t,ident)
        records.append({"t":t,"mask":mask,"id":ident,"prefix":prefix,"record":pt})
        if i<3 or i==len(params)-1: print(f"  [{i}] prefix=0x{prefix:02x} rec={pt.hex()[:32]}...")
        time.sleep(0.25)
    return records

def classify(records):
    if len(records)<2: return [None]*32
    pts=[r["record"] for r in records]
    result=[]
    for i in range(32):
        vals=set(p[i] for p in pts)
        result.append("CONST" if len(vals)==1 else "VARIES")
    return result

now=int(time.time())
fixed_mask=0xDEADBEEF; fixed_id=0x1122334455667788

# TEST A: Determinism — 20 identical requests
params_a=[(now,fixed_mask,fixed_id)]*20
recs_a=run_test("A",params_a,"Determinism: same (time,id,mask) x20")
cls_a=classify(recs_a)

time.sleep(1)

# TEST B: Vary ID — 20 different IDs
params_b=[(now,fixed_mask,0x2000000000000000+k) for k in range(20)]
recs_b=run_test("B",params_b,"Vary ID x20, fixed time+mask")
cls_b=classify(recs_b)

time.sleep(1)

# TEST C: Vary time — offsets: 17,30,34,51,60,68,85,102,119,120,136,153,170,187,204,221,238,255,272,300
offsets=[17,30,34,51,60,68,85,102,119,120,136,153,170,187,204,221,238,255,272,300]
params_c=[(now+off,fixed_mask,fixed_id) for off in offsets]
recs_c=run_test("C",params_c,f"Vary time x20 (offsets: {offsets[:5]}...{offsets[-3:]})")
cls_c=classify(recs_c)

time.sleep(1)

# TEST D: Vary mask — 20 different masks
params_d=[(now,0xBB000000+k,fixed_id) for k in range(20)]
recs_d=run_test("D",params_d,"Vary mask x20, fixed time+id")
cls_d=classify(recs_d)

time.sleep(1)

# TEST E: All random — 20
params_e=[(now+k*17,int.from_bytes(os.urandom(4),'little'),int.from_bytes(os.urandom(8),'little')) for k in range(20)]
recs_e=run_test("E",params_e,"All random x20")
cls_e=classify(recs_e)

# TEST F: Future time (disambiguate time-rejection vs key-mismatch)
# Use current time (should work) then +3600s, +86400s, then PAST -300s, -3600s
time_offsets_f = [0, -300, -3600, +60, +300, +3600, +86400, +604800]
params_f = [(now+off, fixed_mask, fixed_id) for off in time_offsets_f]
recs_f = run_test("F", params_f, f"Time offsets: {time_offsets_f} (disambiguate rejection)")
# For test F, check which prefixes are 0x00 (valid) vs non-0x00 (noise)
print("\n  Time offset → prefix (0x00 = valid structured response):")
for i,r in enumerate(recs_f):
    off = time_offsets_f[i] if i < len(time_offsets_f) else "?"
    valid = "VALID" if r["prefix"]==0 else "NOISE"
    print(f"    offset={off:+7d}s  prefix=0x{r['prefix']:02x}  → {valid}")

# SYNTHESIS
print(f"\n{'='*70}\nSYNTHESIS (20 samples per test)\n{'='*70}")
print(f"{'Byte':>4} | {'A(same)':>8} | {'B(id)':>8} | {'C(time)':>8} | {'D(mask)':>8} | {'E(rand)':>8} | Class")
print("-"*72)
classifications=[]
for i in range(32):
    a=cls_a[i]; b=cls_b[i]; c=cls_c[i]; d=cls_d[i]; e=cls_e[i]
    if a=="CONST" and b=="CONST" and c=="CONST" and d=="CONST" and e=="CONST":
        cls="FIXED_MARKER"
    elif a=="CONST" and d=="VARIES" and b=="CONST" and c=="CONST":
        cls="MASK_ONLY"
    elif a=="CONST" and b=="VARIES" and c=="CONST" and d=="CONST":
        cls="ID_ONLY"
    elif a=="CONST" and c=="VARIES" and b=="CONST" and d=="CONST":
        cls="TIME_ONLY"
    elif a=="CONST" and c=="VARIES" and d=="VARIES":
        cls="TIME+MASK"
    elif a=="VARIES":
        cls="SERVER_VARYING"
    else:
        cls=f"OTHER(a={a},b={b},c={c},d={d})"
    classifications.append(cls)
    print(f"  [{i:2d}] | {a:>8} | {b:>8} | {c:>8} | {d:>8} | {e:>8} | {cls}")

summary=Counter(classifications)
print(f"\n  Summary: {dict(summary)}")

# Statistics
const_in_a = sum(1 for c in cls_a if c=="CONST")
print(f"  Constant positions in A (determinism): {const_in_a}/32")
valid_prefixes_f = sum(1 for r in recs_f if r["prefix"]==0)
print(f"  Valid (prefix=0x00) responses in Test F: {valid_prefixes_f}/{len(recs_f)}")

# Save
outfile="/tmp/resp_correlation/response_correlation_extended.json"
os.makedirs("/tmp/resp_correlation",exist_ok=True)
def ser(recs):
    return [{"t":r["t"],"mask":r["mask"],"id":r["id"],"prefix":r["prefix"],"record_hex":r["record"].hex()} for r in recs]
save={"timestamp":time.strftime('%Y-%m-%d %H:%M:%S UTC',time.gmtime()),
      "samples_per_test":20, "classifications":classifications, "summary":dict(summary),
      "test_F_time_offsets":time_offsets_f,
      "test_F_results":[{"offset":time_offsets_f[i] if i<len(time_offsets_f) else None,
                         "prefix":recs_f[i]["prefix"],"valid":recs_f[i]["prefix"]==0} for i in range(len(recs_f))],
      "raw":{"A":ser(recs_a),"B":ser(recs_b),"C":ser(recs_c),"D":ser(recs_d),"E":ser(recs_e),"F":ser(recs_f)}}
with open(outfile,"w") as f: json.dump(save,f,indent=2)
print(f"\n[*] Saved to {outfile}")
