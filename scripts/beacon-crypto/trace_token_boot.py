#!/usr/bin/env python3
"""
trace_token_boot.py — Trace how the device token (751fb123...) is produced at boot

Strategy:
- At app launch, before any UI interaction, libengine computes the device token
- We scan memory periodically for the token bytes appearing
- Once found, we know WHEN it was created
- We also track all malloc(32) calls from the wrapper to find WHICH call produced it
- Then we can Stalker-trace that specific path on a second run

Key insight: the token is 32 bytes raw = 64 hex chars in the memcmp buffer.
It appears as the ASCII hex string "751fb123..." (64 bytes) in the memcmp evidence.
So in memory it could be stored as:
  a) 32 raw bytes: 75 1f b1 23 1d 34 52 a7 ...
  b) 64 ASCII hex chars: "751fb1231d3452a7..."
  
We scan for BOTH representations.
"""
import frida, time, subprocess, sys, json

TOKEN_HEX = "751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed"
TOKEN_RAW = bytes.fromhex(TOKEN_HEX)
TOKEN_ASCII = TOKEN_HEX.encode('ascii')

SCRIPT = r"""
'use strict';
var t0=Date.now(); function TS(){return Date.now()-t0;}
function hx(p,n){try{var a=new Uint8Array(p.readByteArray(n));var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}catch(e){return null;}}

var TOKEN_HEX = "751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed";
var TOKEN_RAW = [];
for(var i=0;i<TOKEN_HEX.length;i+=2) TOKEN_RAW.push(parseInt(TOKEN_HEX.substr(i,2),16));

var libc=Process.getModuleByName("libc.so");
var _malloc=libc.findExportByName("malloc");
var eng=null, wrapper_ra=null;
var token_allocs=[];  // allocations that end up containing the token
var all_32_allocs=[]; // all 32-byte wrapper allocs with their contents

function init(){
    eng=Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    wrapper_ra=eng.base.add(0x800290);
    
    // Track ALL 32-byte and 64-byte allocations from the wrapper
    Interceptor.attach(_malloc,{
        onEnter:function(args){
            if(!this.returnAddress.equals(wrapper_ra)) return;
            var sz=args[0].toInt32();
            if(sz==32 || sz==64){
                this.sz=sz; this.hit=true;
            }
        },
        onLeave:function(retval){
            if(!this.hit || retval.isNull()) return;
            var ptr=retval;
            var info={sz:this.sz, ts:TS(), ptr:ptr.toString()};
            all_32_allocs.push(info);
            
            // Schedule a delayed read to check if token appears
            var captured_ptr=ptr;
            var captured_sz=this.sz;
            var captured_ts=TS();
            setTimeout(function(){
                try{
                    var content=hx(captured_ptr, captured_sz);
                    if(content && content.indexOf("751fb123")>=0){
                        token_allocs.push({
                            ts:captured_ts,
                            check_ts:TS(),
                            sz:captured_sz,
                            ptr:captured_ptr.toString(),
                            content:content,
                            type:"raw_match"
                        });
                        send({t:"TOKEN_FOUND",ts:captured_ts,type:"raw",content:content});
                    }
                    // Also check if it contains the ASCII representation
                    var ascii_content = "";
                    try{
                        var bytes = new Uint8Array(captured_ptr.readByteArray(captured_sz));
                        for(var j=0;j<bytes.length;j++){
                            if(bytes[j]>=32 && bytes[j]<127) ascii_content+=String.fromCharCode(bytes[j]);
                            else ascii_content+=".";
                        }
                    }catch(e){}
                    if(ascii_content.indexOf("751fb123")>=0){
                        token_allocs.push({
                            ts:captured_ts,
                            check_ts:TS(),
                            sz:captured_sz,
                            ptr:captured_ptr.toString(),
                            content:ascii_content,
                            type:"ascii_match"
                        });
                        send({t:"TOKEN_FOUND",ts:captured_ts,type:"ascii",content:ascii_content});
                    }
                }catch(e){}
            }, 50);
        }
    });
    
    send({t:"ready",ts:TS()});
}
init();

// Periodic memory scan for the token in the heap
var scan_results=[];
function scanForToken(){
    var ranges=Process.enumerateRanges("r--");
    var found=0;
    for(var i=0;i<ranges.length;i++){
        var r=ranges[i];
        if(r.size>50*1024*1024) continue; // skip huge ranges
        try{
            var matches = Memory.scanSync(r.base, r.size, "75 1f b1 23 1d 34 52 a7");
            if(matches.length>0){
                for(var m=0;m<matches.length;m++){
                    found++;
                    scan_results.push({ts:TS(), addr:matches[m].address.toString(), size:r.size});
                }
            }
        }catch(e){}
    }
    if(found>0) send({t:"SCAN_HIT", ts:TS(), count:found});
    return found;
}

rpc.exports={
    scan:function(){ return scanForToken(); },
    get_token_allocs:function(){ return token_allocs; },
    get_all_32:function(){ return all_32_allocs; },
    get_scan_results:function(){ return scan_results; }
};
"""

print("[*] trace_token_boot.py — tracing device token derivation at boot")
print("[*] Killing app...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)

print("[*] Starting app (with hooks active from the start)...")
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

device=None
for i in range(90):
    time.sleep(0.06)
    try:
        d=frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        if d.enumerate_processes(): device=d; break
    except: pass
if not device: print("[!] no gadget"); sys.exit(1)

def on_msg(m,data):
    if m["type"]=="send":
        p=m["payload"]
        t=p.get("t","")
        if t=="TOKEN_FOUND":
            print(f"\n[!!!] TOKEN FOUND at +{p.get('ts')}ms type={p.get('type')}")
            print(f"      content={p.get('content','')[:80]}")
        elif t=="SCAN_HIT":
            print(f"[+{p.get('ts')}ms] Memory scan found {p.get('count')} token instances")
        elif t=="ready":
            print(f"[+{p.get('ts')}ms] Ready — hooks active")
        sys.stdout.flush()

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message",on_msg); sc.load()

# Periodic scans during boot
print("[*] Scanning memory for token every 2s for 20s...")
for i in range(10):
    time.sleep(2)
    try:
        hits = sc.exports_sync.scan()
        elapsed = (i+1)*2
        print(f"  [{elapsed}s] scan: {hits} hits")
    except Exception as e:
        print(f"  [{(i+1)*2}s] scan error: {e}")
        break

# Collect results
print("\n[*] Collecting results...")
token_allocs = sc.exports_sync.get_token_allocs()
all_32 = sc.exports_sync.get_all_32()
scan_results = sc.exports_sync.get_scan_results()

print(f"[*] Token-matching allocations: {len(token_allocs)}")
print(f"[*] Total 32/64-byte wrapper allocs: {len(all_32)}")
print(f"[*] Memory scan hits: {len(scan_results)}")

if token_allocs:
    print("\n[*] Token allocation details:")
    for ta in token_allocs:
        print(f"    +{ta['ts']}ms type={ta['type']} sz={ta['sz']} ptr={ta['ptr']}")
        print(f"    content={ta['content'][:80]}")

if scan_results:
    print("\n[*] Token memory locations:")
    for sr in scan_results[:10]:
        print(f"    +{sr['ts']}ms addr={sr['addr']}")

# Save
output = {
    "token_allocs": token_allocs,
    "all_32_byte_allocs_count": len(all_32),
    "scan_results": scan_results,
    "first_32_allocs": all_32[:20]  # first 20 for analysis
}
with open("/tmp/trace_token_boot.json","w") as f:
    json.dump(output,f,indent=2,default=str)
print(f"\n[*] Saved to /tmp/trace_token_boot.json")

try: session.detach()
except: pass
