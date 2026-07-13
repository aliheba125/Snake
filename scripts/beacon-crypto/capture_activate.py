#!/usr/bin/env python3
"""
capture_activate.py — Capture the crypto buffers processed during code Activation.
Technique (same as z-capture): hook libc malloc filtered by the libengine wrapper
return-address (0x800290), capture 16/32/48/64-byte buffers during the Activate
window, and look for the entered code, device id, or comparison values.
"""
import frida, time, subprocess, sys

CODE = "135790"   # distinctive digits to spot in buffers

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}
function ascii(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++){var c=a[i];s+=(c>=32&&c<127)?String.fromCharCode(c):'.';}return s;}

var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var eng=null, wrapper_ra=null, capturing=false;
var caps=[];

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(!capturing) return;
            if(!this.returnAddress.equals(wrapper_ra)) return;
            var sz=args[0].toInt32();
            if(sz<8||sz>256) return;
            this.sz=sz; this.hit=true;
        },
        onLeave:function(retval){
            if(!this.hit||retval.isNull()) return;
            // snapshot shortly after (content filled by caller) — record addr+sz now,
            // read at report time
            caps.push({addr:retval, sz:this.sz, ts:TS()});
            if(caps.length>4000) caps.shift();
        }
    });
    send({t:"ready",ts:TS()});
}
init();

rpc.exports={
    startcap:function(){ capturing=true; caps=[]; return TS(); },
    stopcap:function(){
        capturing=false;
        var out=[];
        for(var i=0;i<caps.length;i++){
            try{
                var c=caps[i];
                var h=hx(c.addr.readByteArray(c.sz), c.sz);
                var a=ascii(c.addr.readByteArray(c.sz), c.sz);
                out.push({sz:c.sz, ts:c.ts, hex:h, ascii:a});
            }catch(e){}
        }
        return out;
    }
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
sc=session.create_script(SCRIPT)
ready=[]
sc.on("message", lambda m,d: ready.append(m))
sc.load()
time.sleep(6)
print("[*] Boot done. Navigating to Entry Key dialog...")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
time.sleep(1)

print(f"[*] Code {CODE} entered. Starting capture + tapping Activate...")
sc.exports_sync.startcap()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(2)
buffers = sc.exports_sync.stopcap()
print(f"[*] Captured {len(buffers)} crypto buffers during Activate\n")

# Analyze: look for the code, device id, and repeated/interesting buffers
code_bytes = CODE.encode()
devid = b"394318"
interesting = []
for b in buffers:
    tags=[]
    if CODE in b['ascii']: tags.append("HAS_CODE_ASCII")
    if "394318" in b['ascii']: tags.append("HAS_DEVID_ASCII")
    # code as hex digits packed?
    if code_bytes.hex() in b['hex']: tags.append("CODE_HEX")
    if tags:
        interesting.append((b, tags))

print(f"=== Buffers referencing the code or device id: {len(interesting)} ===")
for b,tags in interesting[:20]:
    print(f"  sz={b['sz']} {tags} ascii='{b['ascii'][:48]}' hex={b['hex'][:64]}")

# Also show distribution of sizes and the last few 16/32-byte buffers (likely the compare)
from collections import Counter
print(f"\n=== Size distribution: {dict(Counter(b['sz'] for b in buffers))}")
print(f"\n=== Last 10 buffers of size 16/32/48 (likely AES blocks/compare) ===")
blk=[b for b in buffers if b['sz'] in (16,32,48)]
for b in blk[-10:]:
    print(f"  +{b['ts']}ms sz={b['sz']} hex={b['hex']} ascii='{b['ascii']}'")

import json
with open("/tmp/capture_activate.json","w") as f: json.dump(buffers,f)
try: session.detach()
except: pass
