#!/usr/bin/env python3
"""
trace_interact.py — Trace hosts AND capture SSL_write while interacting with the UI.
Launches, hooks getaddrinfo + SSL_write, then injects tap/swipe events to navigate
(e.g., toward the seller login screen) to see if additional services are contacted
and whether the z-token appears in any later request.
"""
import frida, json, time, sys, subprocess, threading

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS(){ return Date.now()-t0; }
var libc = Process.getModuleByName("libc.so");
var gai = libc.findExportByName("getaddrinfo");
if (gai) Interceptor.attach(gai, { onEnter:function(a){ try{ var h=a[0].isNull()?"(null)":a[0].readCString(); send({t:"DNS",ts:TS(),host:h}); }catch(e){} } });

function toP(bytes,max){max=max||500;var o='';var n=Math.min(bytes.length,max);for(var i=0;i<n;i++){var c=bytes[i];o+=(c>=32&&c<127)?String.fromCharCode(c):'.';}return o;}
var flut=null;
function initFlut(){
    flut=Process.findModuleByName("libflutter.so");
    if(!flut){setTimeout(initFlut,10);return;}
    Interceptor.attach(flut.base.add(0x6d4be8),{
        onEnter:function(args){
            try{var num=args[2].toInt32(); if(num<=0||num>65536)return;
                var arr=new Uint8Array(Memory.readByteArray(args[1],Math.min(num,600)));
                var s=toP(arr,600);
                if(s.indexOf("HTTP")!==-1||s.indexOf("GET ")!==-1||s.indexOf("POST ")!==-1)
                    send({t:"WRITE",ts:TS(),num:num,data:s});
            }catch(e){}
        }
    });
    send({t:"flut_ready",ts:TS()});
}
initFlut();
send({t:"ready",ts:TS()});
"""

results=[]
def on_msg(msg,data):
    if msg['type']=='send':
        p=msg['payload']; results.append(p); t=p.get('t','')
        if t=='DNS': print(f"[+{p.get('ts')}ms] DNS: {p.get('host')}")
        elif t=='WRITE':
            d=p.get('data','')
            first=d.split('\\r\\n')[0][:100] if '\\r\\n' in d else d[:100]
            print(f"[+{p.get('ts')}ms] SSL_WRITE {p.get('num')}B: {first}")
        sys.stdout.flush()

def inject_events():
    """Tap around to navigate the UI toward login."""
    time.sleep(7)
    dev="localhost:5555"
    seq=[
        ("tap","540 1900"),  # bottom area (nav)
        ("tap","540 1000"),  # center
        ("tap","900 100"),   # top-right (menu/settings)
        ("tap","100 100"),   # top-left
        ("swipe","540 1500 540 400 300"),
        ("tap","540 1600"),  # possible login button
    ]
    for kind,coords in seq:
        try:
            subprocess.run(["adb","-s",dev,"shell","input",kind]+coords.split(), timeout=5)
        except: pass
        time.sleep(2.5)

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
print("[*] Tracing 35s with UI interaction...")
threading.Thread(target=inject_events,daemon=True).start()
time.sleep(35)

with open("/tmp/trace_interact.json","w") as f: json.dump(results,f,indent=2,default=str)
dns=sorted(set(r.get('host') for r in results if r.get('t')=='DNS' and r.get('host') and r.get('host')!='(null)'))
writes=[r for r in results if r.get('t')=='WRITE']
print(f"\n[*] Distinct hosts: {dns}")
print(f"[*] SSL_WRITE app-data calls: {len(writes)}")
try: session.detach()
except: pass
