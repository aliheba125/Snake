#!/usr/bin/env python3
"""
stalker_activate.py — Use Frida Stalker to trace libengine execution during
Activate WITHOUT modifying .text (Stalker uses dynamic recompilation, not
inline hooks, so it should not trigger the integrity check).

Strategy: start Stalker on the CURRENT THREAD right after the Dart FFI call
enters libengine (detected by malloc-wrapper hit), trace for a short window,
then dump the executed libengine addresses → reveals the exact function path
of the validator.
"""
import frida, time, subprocess, sys, json

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var eng=null, wrapper_ra=null;
var stalked=false, trace_addrs=[];
var activated=false;

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    var engBase=eng.base; var engEnd=eng.base.add(eng.size);
    send({t:"ready",ts:TS()});

    // When the app calls libengine crypto (detected by malloc wrapper hit),
    // if we haven't stalked yet AND it's during the "activate" window,
    // start Stalker on this thread for a brief window.
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(stalked||!activated) return;
            if(!this.returnAddress.equals(wrapper_ra)) return;
            stalked=true;
            var tid=Process.getCurrentThreadId();
            send({t:"STALKER_START",ts:TS(),tid:tid});
            Stalker.follow(tid,{
                events:{call:false,ret:false,exec:false,block:false,compile:true},
                transform:function(iterator){
                    var instr;
                    while((instr=iterator.next())!==null){
                        var addr=instr.address;
                        if(addr.compare(engBase)>=0 && addr.compare(engEnd)<0){
                            trace_addrs.push(addr.sub(engBase).toInt32());
                        }
                        iterator.keep();
                    }
                }
            });
            // Unfollow after 200ms
            setTimeout(function(){
                try{Stalker.unfollow(tid);}catch(e){}
                Stalker.flush();
                send({t:"STALKER_DONE",ts:TS(),n_addrs:trace_addrs.length});
                // Deduplicate and sort
                var uniq={};
                for(var i=0;i<trace_addrs.length;i++) uniq[trace_addrs[i]]=1;
                var sorted=Object.keys(uniq).map(Number).sort(function(a,b){return a-b;});
                send({t:"TRACE_BLOCKS",blocks:sorted.slice(0,200)});
            },200);
        }
    });
}
init();

rpc.exports={
    setactivate:function(){ activated=true; }
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

results=[]
def on_msg(m,data):
    if m["type"]=="send":
        p=m["payload"]; results.append(p)
        t=p.get("t","")
        if t in ("ready","STALKER_START","STALKER_DONE"):
            print(f"[+{p.get('ts',0)}ms] {t} {json.dumps({k:v for k,v in p.items() if k!='blocks'},default=str)[:120]}")
        elif t=="TRACE_BLOCKS":
            blocks=p.get("blocks",[])
            print(f"[*] TRACE: {len(blocks)} unique libengine blocks visited during Activate")
            for b in blocks[:40]:
                print(f"    libengine+0x{b:x}")
        sys.stdout.flush()

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message",on_msg); sc.load()
time.sleep(7)

# Navigate to Entry Key and enter code
print("[*] Navigating to Entry Key...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","246810"], timeout=5)
time.sleep(1)

print("[*] Setting activate flag + tapping Activate...")
sc.exports_sync.setactivate()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(4)

# Check if app survived Stalker
try:
    procs=device.enumerate_processes()
    print(f"\n[*] App alive after Stalker: {bool(procs)}")
except: print("[!] App died (Stalker triggered anti-tamper)")

with open("/tmp/stalker_activate.json","w") as f: json.dump(results,f,indent=2,default=str)
try: session.detach()
except: pass
