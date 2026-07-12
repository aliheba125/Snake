#!/usr/bin/env python3
"""
capture_activate3.py — Capture crypto buffers during Activate for a GIVEN code
(passed as argv). Snapshot content before free over a longer window. Prints all
hex-ASCII string buffers to compare across different codes.
"""
import frida, time, subprocess, sys, json

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}
function ascii(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++){var c=a[i];s+=(c>=32&&c<127)?String.fromCharCode(c):'.';}return s;}
var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var _free=libc.findExportByName("free");
var eng=null, wrapper_ra=null, capturing=false;
var tracked={}; var snaps=[];
function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(!capturing) return;
            if(!this.returnAddress.equals(wrapper_ra)) return;
            var sz=args[0].toInt32();
            if(sz<8||sz>512) return;
            this.sz=sz; this.hit=true;
        },
        onLeave:function(retval){ if(this.hit&&!retval.isNull()) tracked[retval.toString()]=this.sz; }
    });
    Interceptor.attach(_free,{
        onEnter:function(args){
            if(!capturing) return;
            var key=args[0].toString(); var sz=tracked[key];
            if(sz===undefined) return;
            try{ snaps.push({sz:sz,ts:TS(),hex:hx(args[0].readByteArray(sz),sz),ascii:ascii(args[0].readByteArray(sz),sz)}); }catch(e){}
            delete tracked[key];
        }
    });
    send({t:"ready",ts:TS()});
}
init();
rpc.exports={ startcap:function(){capturing=true;snaps=[];tracked={};return TS();}, stopcap:function(){capturing=false;return snaps;} };
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

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
time.sleep(1)

sc.exports_sync.startcap()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(3)
snaps = sc.exports_sync.stopcap()

# Print all buffers whose ASCII looks like a hex string (>=16 hex chars)
import re
hexpat = re.compile(r'^[0-9a-f]{16,}')
print(f"CODE={CODE}  captured={len(snaps)}")
hexstrings=[]
for b in snaps:
    a=b['ascii'].rstrip('.')
    if hexpat.match(a):
        hexstrings.append(a)
        print(f"  HEXSTR sz={b['sz']} +{b['ts']}ms: {a}")
# Also dump distinct raw hex of 16/32/48 buffers
print("  --- binary 16/32/48 ---")
seen=set()
for b in snaps:
    if b['sz'] in (16,32,48) and b['hex'].strip('0') and b['hex'] not in seen:
        seen.add(b['hex']); print(f"    sz={b['sz']} {b['hex']}")
with open(f"/tmp/cap_{CODE}.json","w") as f: json.dump(snaps,f)
try: session.detach()
except: pass
