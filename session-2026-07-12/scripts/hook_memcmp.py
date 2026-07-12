#!/usr/bin/env python3
"""
hook_memcmp.py — THE DECISIVE TEST. Hook libc memcmp (safe — no .text modification
of libengine). During Activate, the validator calls memcmp to compare the
user-derived value against the expected value. By capturing both arguments,
we learn EXACTLY what a valid key should produce — and we can extract the
expected value directly.
"""
import frida, time, subprocess, sys, json

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(p,n){try{var a=new Uint8Array(p.readByteArray(n));var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}catch(e){return null;}}
var libc=Process.getModuleByName("libc.so");
var _memcmp=libc.findExportByName("memcmp");
var eng=null; var capturing=false; var comparisons=[];

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    var engBase=eng.base; var engEnd=eng.base.add(eng.size);
    Interceptor.attach(_memcmp,{
        onEnter:function(args){
            if(!capturing) return;
            // Only log memcmp calls from within libengine
            var ra=this.returnAddress;
            if(ra.compare(engBase)<0 || ra.compare(engEnd)>=0) return;
            var s1=args[0]; var s2=args[1]; var n=args[2].toInt32();
            if(n<1 || n>512) return; // capture ALL sizes
            var h1=hx(s1,n); var h2=hx(s2,n);
            var offset=ra.sub(engBase).toInt32();
            comparisons.push({ts:TS(), n:n, ra_offset:offset, s1:h1, s2:h2});
        },
        onLeave:function(retval){
            if(!capturing) return;
            if(comparisons.length>0){
                comparisons[comparisons.length-1].result=retval.toInt32();
            }
        }
    });
    send({t:"ready",ts:TS()});
}
init();
rpc.exports={
    startcap:function(){capturing=true;comparisons=[];},
    stopcap:function(){capturing=false;return comparisons;}
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
time.sleep(7)

# Navigate + enter code
print("[*] Entering code 246810...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","246810"], timeout=5)
time.sleep(1)

print("[*] Starting memcmp capture + Activate...")
sc.exports_sync.startcap()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(3)
comps = sc.exports_sync.stopcap()

print(f"\n[*] Captured {len(comps)} memcmp calls from libengine during Activate\n")
for i,c in enumerate(comps):
    match = "MATCH" if c.get('result')==0 else "DIFF"
    print(f"  #{i} +{c.get('ts')}ms ra=eng+0x{c.get('ra_offset'):x} n={c.get('n')} {match}")
    print(f"      s1={c.get('s1')}")
    print(f"      s2={c.get('s2')}")
    print()

with open("/tmp/memcmp_activate.json","w") as f: json.dump(comps,f,indent=2)
try: session.detach()
except: pass
