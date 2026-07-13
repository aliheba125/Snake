#!/usr/bin/env python3
"""
isolate_validator.py — Isolate the Entry-Key validator path using Stalker

IMPROVEMENT over stalker_activate.py:
- Wait for beacon to finish FIRST (cold-launch beacon fires once at ~2-5s)
- Wait an additional 10s for stability
- THEN enable Stalker trigger on the NEXT malloc-wrapper hit ONLY
- This way we catch the Activate path, NOT the beacon serialization

Also captures the crypto buffers (like capture_activate3) simultaneously
to correlate which data flows through which functions.

Method notes (from docs/11):
- Use .data/libc/Stalker instrumentation only; never Interceptor.attach on libengine .text
- Inject Gadget from /system/lib64/ to bypass maps scan
- Capture crypto buffers by hooking libc malloc/free filtered by wrapper_ra=0x800290
"""
import frida, time, subprocess, sys, json

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(p,n){try{var a=new Uint8Array(p.readByteArray(n));var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}catch(e){return null;}}

var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var _free=libc.findExportByName("free");
var eng=null, wrapper_ra=null;

// State machine: IDLE -> ARMED -> STALKING -> DONE
var state="IDLE";
var trace_addrs=[];
var crypto_bufs=[];
var tracked_allocs={};

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    var engBase=eng.base; var engEnd=eng.base.add(eng.size);

    // Track crypto buffer allocations (always active when ARMED/STALKING)
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(state!="ARMED" && state!="STALKING") return;
            if(!this.returnAddress.equals(wrapper_ra)) return;
            var sz=args[0].toInt32();
            if(sz<8||sz>512) return;
            this.hit=true; this.sz=sz;

            // If ARMED and first wrapper hit → start Stalker
            if(state=="ARMED"){
                state="STALKING";
                var tid=Process.getCurrentThreadId();
                send({t:"STALKER_START",ts:TS(),tid:tid,state:state});
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
                // Unfollow after 500ms (longer window to capture full validate path)
                setTimeout(function(){
                    try{Stalker.unfollow(tid);}catch(e){}
                    Stalker.flush();
                    state="DONE";
                    // Deduplicate & sort
                    var uniq={};
                    for(var i=0;i<trace_addrs.length;i++) uniq[trace_addrs[i]]=1;
                    var sorted=Object.keys(uniq).map(Number).sort(function(a,b){return a-b;});
                    send({t:"STALKER_DONE",ts:TS(),n_raw:trace_addrs.length,n_unique:sorted.length});
                    send({t:"TRACE_BLOCKS",blocks:sorted});
                },500);
            }
        },
        onLeave:function(retval){
            if(!this.hit) return;
            if(!retval.isNull()){
                tracked_allocs[retval.toString()]={sz:this.sz,ts:TS()};
            }
        }
    });

    // Capture buffer contents at free time
    Interceptor.attach(_free,{
        onEnter:function(args){
            if(state!="ARMED" && state!="STALKING" && state!="DONE") return;
            var key=args[0].toString();
            var info=tracked_allocs[key];
            if(!info) return;
            try{
                var hex=hx(args[0],info.sz);
                crypto_bufs.push({sz:info.sz, alloc_ts:info.ts, free_ts:TS(), hex:hex});
            }catch(e){}
            delete tracked_allocs[key];
        }
    });

    send({t:"ready",ts:TS()});
}
init();

rpc.exports={
    arm:function(){ state="ARMED"; trace_addrs=[]; crypto_bufs=[]; tracked_allocs={}; return TS(); },
    getresults:function(){ return {state:state, trace_addrs_raw:trace_addrs.length, crypto_bufs:crypto_bufs}; }
};
"""

print(f"[*] isolate_validator.py — code={CODE}")
print("[*] Launching app...")
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
if not device: print("[!] no gadget"); sys.exit(1)

results=[]
def on_msg(m,data):
    if m["type"]=="send":
        p=m["payload"]; results.append(p)
        t=p.get("t","")
        if t=="TRACE_BLOCKS":
            blocks=p.get("blocks",[])
            print(f"\n[*] TRACE: {len(blocks)} unique libengine blocks during Activate")
            # Print ranges to identify functions
            if blocks:
                ranges=[]
                start=blocks[0]; end=blocks[0]
                for b in blocks[1:]:
                    if b - end <= 0x20: end=b
                    else: ranges.append((start,end)); start=b; end=b
                ranges.append((start,end))
                print(f"[*] {len(ranges)} function-like ranges:")
                for s,e in ranges[:50]:
                    print(f"    0x{s:06x} - 0x{e:06x}  ({e-s+4} bytes)")
        elif t in ("ready","STALKER_START","STALKER_DONE"):
            print(f"[+{p.get('ts',0)}ms] {t}")
        sys.stdout.flush()

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message",on_msg); sc.load()

# KEY DIFFERENCE: wait for beacon to finish + stabilize
print("[*] Waiting 15s for beacon + stabilization...")
time.sleep(15)

# Navigate to Entry Key screen
print("[*] Navigating to Entry Key screen...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.3)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
time.sleep(1)

# ARM the trigger, then tap Activate
print("[*] ARMING Stalker trigger...")
arm_ts = sc.exports_sync.arm()
print(f"[*] Armed at +{arm_ts}ms — tapping Activate now...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)

# Wait for Stalker to complete
print("[*] Waiting for Stalker window (500ms + margin)...")
time.sleep(4)

# Collect results
res = sc.exports_sync.getresults()
print(f"\n[*] Final state: {res['state']}")
print(f"[*] Raw trace addresses: {res['trace_addrs_raw']}")
print(f"[*] Crypto buffers captured: {len(res['crypto_bufs'])}")

if res['crypto_bufs']:
    print("\n[*] Crypto buffers during Activate:")
    for i,buf in enumerate(res['crypto_bufs']):
        h = buf['hex'][:80] if buf['hex'] else '(null)'
        print(f"    #{i} sz={buf['sz']} +{buf['alloc_ts']}ms→+{buf['free_ts']}ms: {h}")

# Check app survival
try:
    procs=device.enumerate_processes()
    print(f"\n[*] App alive after Stalker: {bool(procs)}")
except: print("[!] App died (anti-tamper triggered)")

# Save everything
output = {"code":CODE, "messages":results, "crypto_bufs":res['crypto_bufs']}
with open(f"/tmp/isolate_validator_{CODE}.json","w") as f:
    json.dump(output,f,indent=2,default=str)
print(f"[*] Saved to /tmp/isolate_validator_{CODE}.json")

try: session.detach()
except: pass
