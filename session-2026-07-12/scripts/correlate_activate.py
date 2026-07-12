#!/usr/bin/env python3
"""
correlate_activate.py — In ONE session: capture (a) the beacon master key,
(b) the beacon response (DAT_009280f8), (c) the 32-byte 'reference' hex value
processed during Activate. Repeat across runs to see what is stable vs changing.
"""
import frida, time, subprocess, sys, json, hashlib

RUN_TAG = sys.argv[1] if len(sys.argv)>1 else "run"

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}
function ascii(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++){var c=a[i];s+=(c>=32&&c<127)?String.fromCharCode(c):'.';}return s;}
function rp(p){try{return p.readPointer();}catch(e){return null;}}
var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc"); var _free=libc.findExportByName("free");
var eng=null, wrapper_ra=null, capturing=false; var tracked={}; var snaps=[];
function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    Interceptor.attach(_malloc,{
        onEnter:function(args){ if(!capturing)return; if(!this.returnAddress.equals(wrapper_ra))return; var sz=args[0].toInt32(); if(sz<8||sz>512)return; this.sz=sz;this.hit=true; },
        onLeave:function(retval){ if(this.hit&&!retval.isNull()) tracked[retval.toString()]=this.sz; }
    });
    Interceptor.attach(_free,{
        onEnter:function(args){ if(!capturing)return; var k=args[0].toString(); var sz=tracked[k]; if(sz===undefined)return;
            try{snaps.push({sz:sz,hex:hx(args[0].readByteArray(sz),sz),ascii:ascii(args[0].readByteArray(sz),sz)});}catch(e){} delete tracked[k]; }
    });
    send({t:"ready"});
}
init();
rpc.exports={
    readglobals:function(){
        var out={};
        var kp=rp(eng.base.add(0x8280f0)); out.key = (kp&&!kp.isNull())?hx(kp.readByteArray(32),32):null;
        var fp=rp(eng.base.add(0x8280f8)); out.f8 = (fp&&!fp.isNull())?hx(fp.readByteArray(48),48):null;
        return out;
    },
    startcap:function(){capturing=true;snaps=[];tracked={};return TS();},
    stopcap:function(){capturing=false;return snaps;}
};
"""

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)
device=None
for i in range(90):
    time.sleep(0.06)
    try:
        d=frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        if d.enumerate_processes(): device=d; break
    except: pass
if not device: print("no gadget"); sys.exit(1)
session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message", lambda m,d: None); sc.load()
time.sleep(6)

g = sc.exports_sync.readglobals()
print(f"[{RUN_TAG}] master_key = {g.get('key')}")
print(f"[{RUN_TAG}] beacon_f8  = {g.get('f8')}")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","246810"], timeout=5)
time.sleep(1)
sc.exports_sync.startcap()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(2.5)
snaps = sc.exports_sync.stopcap()

import re
hexpat = re.compile(r'^[0-9a-f]{32,}')
refs=set()
for b in snaps:
    a=b['ascii'].rstrip('.')
    if hexpat.match(a): refs.add(a)
print(f"[{RUN_TAG}] activate reference hex-strings:")
for r in sorted(refs, key=len, reverse=True)[:5]:
    print(f"    {r}")

# Correlate: is the reference = SHA256(key)? SHA256(f8)? etc.
if g.get('key') and refs:
    longest = max(refs, key=len)
    print(f"\n[{RUN_TAG}] correlation checks for reference {longest[:32]}...")
    key_raw = bytes.fromhex(g['key'])
    f8_raw = bytes.fromhex(g['f8']) if g.get('f8') else b''
    print(f"    SHA256(master_key)      = {hashlib.sha256(key_raw).hexdigest()}")
    print(f"    SHA256(f8[:32])         = {hashlib.sha256(f8_raw[:32]).hexdigest() if f8_raw else 'n/a'}")
    print(f"    reference == SHA256(key)? {longest == hashlib.sha256(key_raw).hexdigest()}")

with open(f"/tmp/corr_{RUN_TAG}.json","w") as f: json.dump({"globals":g,"refs":list(refs)},f)
try: session.detach()
except: pass
