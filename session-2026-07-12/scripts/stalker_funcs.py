#!/usr/bin/env python3
"""
stalker_funcs.py — Full function-level coverage of the Activate path via Stalker
(does not modify .text -> no anti-tamper). Records EVERY libengine offset executed
during the Activate window, returns the complete deduplicated set (not truncated),
so we can map exactly which functions (esp. crypto FUN_00160208/FUN_00160640) run.
"""
import frida, time, subprocess, sys, json

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var eng=null, wrapper_ra=null, stalked=false, activated=false;
var hits={};   // offset -> 1

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    var eB=eng.base, eE=eng.base.add(eng.size);
    send({t:"ready",ts:TS(),size:eng.size});
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(stalked||!activated) return;
            if(!this.returnAddress.equals(wrapper_ra)) return;
            stalked=true;
            var tid=Process.getCurrentThreadId();
            send({t:"STALK_START",ts:TS(),tid:tid});
            Stalker.follow(tid,{
                events:{compile:true},
                transform:function(iterator){
                    var instr=iterator.next();
                    while(instr!==null){
                        var a=instr.address;
                        if(a.compare(eB)>=0 && a.compare(eE)<0){
                            hits[a.sub(eB).toInt32()]=1;
                        }
                        iterator.keep();
                        instr=iterator.next();
                    }
                }
            });
            setTimeout(function(){
                try{Stalker.unfollow(tid);Stalker.flush();}catch(e){}
                send({t:"STALK_DONE",ts:TS(),n:Object.keys(hits).length});
            },400);
        }
    });
}
init();
rpc.exports={
    setact:function(){activated=true;},
    gethits:function(){ return Object.keys(hits).map(Number).sort(function(a,b){return a-b;}); }
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
msgs=[]
sc=session.create_script(SCRIPT); sc.on("message", lambda m,d: msgs.append(m.get("payload")) or print(m.get("payload") if m["type"]=="send" else m)); sc.load()
time.sleep(7)

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5); time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5); time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5); time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","135790"], timeout=5); time.sleep(1)
print("[*] Activate...")
sc.exports_sync.setact()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(3)

hits = sc.exports_sync.gethits()
print(f"\n[*] Total libengine offsets executed during Activate: {len(hits)}")
# Cluster into function ranges
ranges=[]
if hits:
    s=hits[0]; e=hits[0]
    for a in hits[1:]:
        if a-e<=16: e=a
        else: ranges.append((s,e)); s=a; e=a
    ranges.append((s,e))
print(f"[*] {len(ranges)} contiguous ranges")
with open("/tmp/stalker_funcs.json","w") as f: json.dump({"hits":hits,"ranges":ranges},f)
# print ranges (Ghidra addr = +0x100000)
for s,e in ranges:
    print(f"  0x{s:06x}-0x{e:06x}  Ghidra 0x{s+0x100000:x}-0x{e+0x100000:x}")
try: session.detach()
except: pass
