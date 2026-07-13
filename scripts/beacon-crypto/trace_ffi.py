#!/usr/bin/env python3
"""
trace_ffi.py — Trace Dart→libengine FFI calls by hooking JNI_OnLoad's registered
native methods. Since libengine only exports JNI_OnLoad and registers methods
dynamically, we hook RegisterNatives to discover them, then monitor which get called.

Alternative approach: hook the known FFI entry points by their runtime addresses:
- FUN_00189774 (decrypt-and-store response) = libengine+0x89774
- The z-encrypt orchestrator FUN_0015fdec = libengine+0x5fdec
- The code-validation function (unknown offset)

We can't hook .text directly. But we CAN monitor the globals that these functions
write to (DAT_009280f0 = key, DAT_009280f8 = decrypted response) and detect WHEN
they change — which tells us when the corresponding FFI function ran.
"""
import frida, time, subprocess, sys

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS(){return Date.now()-t0;}
function hx(p,n){try{var a=new Uint8Array(p.readByteArray(n));var s='';for(var i=0;i<n;i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}catch(e){return null;}}
function rp(p){try{return p.readPointer();}catch(e){return null;}}

var eng=null;
var last_key=null, last_f8=null, last_f8_content=null;

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    send({t:"eng_found",ts:TS()});
    // Start polling key globals every 50ms
    setInterval(function(){
        // Master key (0x8280f0)
        var kp=rp(eng.base.add(0x8280f0));
        var kh = (kp && !kp.isNull()) ? hx(kp,32) : null;
        if(kh && kh!==last_key){last_key=kh; send({t:"KEY_CHANGED",ts:TS(),hex:kh});}
        // Decrypt store (0x8280f8)  
        var fp=rp(eng.base.add(0x8280f8));
        if(fp && !fp.isNull()){
            var fh=hx(fp,48);
            if(fh && fh!==last_f8_content){
                last_f8_content=fh;
                send({t:"F8_CHANGED",ts:TS(),hex:fh});
            }
        } else if(last_f8!==null && fp && fp.isNull()){
            last_f8=null; send({t:"F8_CLEARED",ts:TS()});
        }
        if(!last_f8 && fp && !fp.isNull()){last_f8=fp.toString();}
    }, 50);
}
init();
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

events=[]
def on_msg(m,data):
    if m["type"]=="send":
        p=m["payload"]
        events.append(p)
        t=p.get("t","")
        if t in ("KEY_CHANGED","F8_CHANGED","F8_CLEARED"):
            print(f"[+{p.get('ts')}ms] {t}: {p.get('hex','')[:64]}")
            sys.stdout.flush()

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message",on_msg); sc.load()
print("[*] Monitoring globals during boot + code entry...")
time.sleep(6)
print(f"\n--- BOOT DONE ({len(events)} events) ---")
print("[*] Entering code '555555' and activating...")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","555555"], timeout=5)
time.sleep(1)

n_before = len(events)
print(f"\n--- PRE-ACTIVATE ({n_before} events) ---")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(4)
n_after = len(events)
print(f"\n--- POST-ACTIVATE ({n_after} events, +{n_after-n_before} new) ---")

try: session.detach()
except: pass
