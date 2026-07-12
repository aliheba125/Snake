#!/usr/bin/env python3
"""
poll_decrypt_global.py — Test whether the server response is decrypted and stored.
Statically, FUN_00189774 decrypts an incoming hex value and stores the plaintext in
DAT_009280f8 (libengine + 0x8280f8). If the app decrypts the beacon response, this
global should become populated shortly AFTER the beacon (~400ms) response arrives.

We poll *(libengine+0x8280f8) over the launch window (read-only global access; no
code hook -> no anti-tamper trigger). We also poll the master key (0x8280f0) as a
positive control (known to populate).
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(p,n){try{var a=new Uint8Array(p.readByteArray(n));var s='';for(var i=0;i<n;i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}catch(e){return null;}}
function rp(p){try{return p.readPointer();}catch(e){return null;}}
var eng=null;
var seen_key=null, seen_f8=null;
function poll(){
  if(!eng){eng=Process.findModuleByName("libengine.so"); if(!eng){setTimeout(poll,8);return;} send({t:"eng",ts:TS()});}
  // master key control
  var kp=rp(eng.base.add(0x8280f0));
  if(kp&&!kp.isNull()){var h=hx(kp,32); if(h&&h!==seen_key){seen_key=h; send({t:"KEY_0x8280f0",ts:TS(),ptr:kp.toString(),hex:h});}}
  // decrypt-store target
  var fp=rp(eng.base.add(0x8280f8));
  if(fp&&!fp.isNull()){var h2=hx(fp,48); if(h2&&h2!==seen_f8){seen_f8=h2; send({t:"DECR_0x8280f8",ts:TS(),ptr:fp.toString(),hex:h2});}}
  setTimeout(poll,8);
}
poll();
"""

results=[]
def on_msg(msg,data):
    if msg['type']=='send':
        p=msg['payload']; results.append(p); t=p.get('t','')
        if t.startswith('KEY') or t.startswith('DECR'):
            print(f"[+{p.get('ts')}ms] {t} ptr={p.get('ptr')}")
            print(f"           hex={p.get('hex')}")
        else:
            print(f"[+{p.get('ts',0)}ms] {t}")
        sys.stdout.flush()

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
sc=session.create_script(SCRIPT); sc.on('message',on_msg); sc.load()
print("[*] Polling globals for 15s...")
time.sleep(15)
with open("/tmp/poll_decrypt_global.json","w") as f: json.dump(results,f,indent=2,default=str)
f8=[r for r in results if r.get('t','').startswith('DECR')]
print(f"\n[*] DAT_009280f8 (decrypt-store) populated events: {len(f8)}")
try: session.detach()
except: pass
