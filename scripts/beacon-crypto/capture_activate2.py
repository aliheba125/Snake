#!/usr/bin/env python3
"""
capture_activate2.py — Capture crypto buffers during Activate by snapshotting their
content JUST BEFORE free() (when they're fully populated). Hook malloc (wrapper-
filtered) to track addrs; hook free to snapshot + emit.
"""
import frida, time, subprocess, sys, json

CODE = "135790"

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}
function ascii(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++){var c=a[i];s+=(c>=32&&c<127)?String.fromCharCode(c):'.';}return s;}

var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var _free=libc.findExportByName("free");
var eng=null, wrapper_ra=null, capturing=false;
var tracked={};   // addr -> sz
var snaps=[];

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
            tracked[retval.toString()]=this.sz;
        }
    });
    Interceptor.attach(_free,{
        onEnter:function(args){
            if(!capturing) return;
            var key=args[0].toString();
            var sz=tracked[key];
            if(sz===undefined) return;
            try{
                var h=hx(args[0].readByteArray(sz), sz);
                var a=ascii(args[0].readByteArray(sz), sz);
                snaps.push({sz:sz, ts:TS(), hex:h, ascii:a});
            }catch(e){}
            delete tracked[key];
        }
    });
    send({t:"ready",ts:TS()});
}
init();

rpc.exports={
    startcap:function(){ capturing=true; snaps=[]; tracked={}; return TS(); },
    stopcap:function(){ capturing=false; return snaps; }
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
sc.on("message", lambda m,d: None)
sc.load()
time.sleep(6)
print("[*] Boot done. Navigating + entering code...")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
time.sleep(1)

print(f"[*] Code {CODE} entered. Capturing during Activate...")
sc.exports_sync.startcap()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(2.5)
snaps = sc.exports_sync.stopcap()
print(f"[*] Snapshotted {len(snaps)} buffers (content-before-free)\n")

code_hex = CODE.encode().hex()
interesting=[]
for b in snaps:
    tags=[]
    if CODE in b['ascii']: tags.append("CODE_ASCII")
    if "394318" in b['ascii']: tags.append("DEVID_ASCII")
    if code_hex in b['hex']: tags.append("CODE_HEX")
    # code as integer 135790 = 0x21286 (LE little)
    if "86210200" in b['hex'] or "21286" in b['hex']: tags.append("CODE_INT")
    if tags: interesting.append((b,tags))

print(f"=== Buffers referencing code/devid: {len(interesting)} ===")
for b,tags in interesting[:25]:
    print(f"  +{b['ts']}ms sz={b['sz']} {tags}")
    print(f"      ascii='{b['ascii'][:60]}'")
    print(f"      hex={b['hex'][:80]}")

# Show all non-empty 16/32/48 buffers (AES blocks)
print(f"\n=== Non-empty 16/32/48-byte buffers (AES candidates) ===")
seen=set()
for b in snaps:
    if b['sz'] in (16,32,48) and b['hex'] and b['hex'].strip('0'):
        if b['hex'] in seen: continue
        seen.add(b['hex'])
        print(f"  +{b['ts']}ms sz={b['sz']} hex={b['hex']} ascii='{b['ascii']}'")

with open("/tmp/capture_activate2.json","w") as f: json.dump(snaps,f)
try: session.detach()
except: pass
