#!/usr/bin/env python3
"""
stalker_immediate.py — Start Stalker on FIRST malloc(0x800290) after activate flag.
No burst threshold — captures the very first crypto operation.
Goal: see if validation happens in the first few mallocs BEFORE the burst.
"""
import frida, time, subprocess, sys, json, os

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS() { return Date.now() - t0; }
var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var eng = null, wrapper_ra = null;
var activated = false, stalking = false, done = false;
var mallocCount = 0;
var traceLog = [];

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base, eE = eng.base.add(eng.size);

    send({t: "ready", ts: TS()});

    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (done || !activated) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;

            mallocCount++;
            if (!stalking) {
                // Start Stalker on FIRST malloc
                stalking = true;
                var tid = Process.getCurrentThreadId();
                send({t: "STALK_FIRST_MALLOC", ts: TS(), tid: tid, mallocNum: mallocCount});

                Stalker.follow(tid, {
                    events: {compile: true},
                    transform: function(iterator) {
                        var instr = iterator.next();
                        while (instr !== null) {
                            var a = instr.address;
                            if (a.compare(eB) >= 0 && a.compare(eE) < 0) {
                                traceLog.push(a.sub(eB).toInt32());
                            }
                            iterator.keep();
                            instr = iterator.next();
                        }
                    }
                });

                // Run for 1200ms to capture everything
                setTimeout(function() {
                    try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
                    done = true;
                    // Deduplicate and sort
                    var uniq = {};
                    for (var i = 0; i < traceLog.length; i++) uniq[traceLog[i]] = 1;
                    var sorted = Object.keys(uniq).map(Number).sort(function(a,b){return a-b;});
                    send({t: "DONE", ts: TS(), totalInstrs: traceLog.length,
                          uniqueOffsets: sorted.length, mallocsDuringStalk: mallocCount,
                          first20: sorted.slice(0,20).map(function(x){return "0x"+x.toString(16);}),
                          last20: sorted.slice(-20).map(function(x){return "0x"+x.toString(16);})
                    });
                }, 1200);
            }
        }
    });
}
init();
rpc.exports = { setact: function() { activated = true; } };
"""

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5, capture_output=True)

device = None
for port in [27042, 27052]:
    for i in range(90):
        time.sleep(0.1)
        try:
            d = frida.get_device_manager().add_remote_device(f"127.0.0.1:{port}")
            if d.enumerate_processes(): device = d; break
        except: pass
    if device: break
if not device: print("[!] No gadget"); sys.exit(1)

procs = device.enumerate_processes()
target = next((p for p in procs if "snake" in p.name.lower()), procs[0])
session = device.attach(target.pid)
print(f"[*] Attached PID {target.pid}, waiting 12s...")

results = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]; results.append(p)
        print(f"  [{p.get('ts',0)}ms] {p.get('t')}: {json.dumps({k:v for k,v in p.items() if k not in ('t','first20','last20')},default=str)[:120]}")
        if p.get('t') == 'DONE':
            print(f"    first20 offsets: {p.get('first20')}")
            print(f"    last20 offsets: {p.get('last20')}")
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','')[:150]}")
    sys.stdout.flush()

sc = session.create_script(SCRIPT); sc.on("message", on_msg); sc.load()
time.sleep(12)

# Navigate
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5); time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5); time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5); time.sleep(0.5)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5); time.sleep(1)

print(f"[*] Activate (code={CODE})...")
sc.exports_sync.setact()
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(5)

with open(f"/tmp/stalker_immediate_{CODE}.json","w") as f:
    json.dump(results, f, indent=2, default=str)
print(f"[*] Saved to /tmp/stalker_immediate_{CODE}.json")
try: session.detach()
except: pass
