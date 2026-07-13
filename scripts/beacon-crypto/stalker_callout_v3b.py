#!/usr/bin/env python3
"""
stalker_callout_v3b.py — Lighter version: fewer callout targets, send() immediately.
Targets only the most critical points:
  - 0x081cb8: key_engine entry (x0-x5 = args)
  - 0x0aa4a0: cmp gate (x19 vs x0 — pass/fail comparison)
  - 0x081d38: tbz w21 gate (what is w21?)
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
var burstHits = [];

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base;

    // Only 3 critical targets
    var targets = {};
    targets[eB.add(0x081cb8).toString()] = "key_engine_entry";
    targets[eB.add(0x0aa4a0).toString()] = "cmp_gate";
    targets[eB.add(0x081d38).toString()] = "tbz_w21_gate";

    send({t: "ready", ts: TS()});

    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (done || !activated) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;
            var now = Date.now();
            burstHits.push(now);
            while (burstHits.length > 0 && (now - burstHits[0]) > 300) burstHits.shift();

            if (!stalking && burstHits.length >= 5) {
                stalking = true;
                var tid = Process.getCurrentThreadId();
                send({t: "STALK", ts: TS(), tid: tid});

                Stalker.follow(tid, {
                    events: {compile: true},
                    transform: function(iterator) {
                        var instr = iterator.next();
                        while (instr !== null) {
                            var key = instr.address.toString();
                            if (key in targets) {
                                var label = targets[key];
                                iterator.putCallout(function(ctx) {
                                    var regs = {};
                                    for (var r = 0; r < 8; r++) regs["x"+r] = ctx["x"+r].toString(16);
                                    // Also grab w21 (x21 lower 32 bits) for tbz check
                                    regs["x19"] = ctx.x19.toString(16);
                                    regs["x20"] = ctx.x20.toString(16);
                                    regs["x21"] = ctx.x21.toString(16);
                                    send({t: "CALLOUT", ts: TS(), name: label, regs: regs});
                                });
                            }
                            iterator.keep();
                            instr = iterator.next();
                        }
                    }
                });

                setTimeout(function() {
                    try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
                    done = true;
                    send({t: "DONE", ts: TS()});
                }, 800);
            }
        }
    });
}
init();

rpc.exports = { setact: function() { activated = true; } };
"""

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"],
               timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake",
                "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"],
               timeout=5, capture_output=True)

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
print(f"[*] Attaching to PID {target.pid}...")
session = device.attach(target.pid)

results = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]; results.append(p)
        t = p.get("t","")
        if t == "CALLOUT":
            regs = p.get("regs",{})
            print(f"  +{p['ts']}ms {p['name']}: x0={regs.get('x0','?')[:16]} x1={regs.get('x1','?')[:16]} x19={regs.get('x19','?')[:16]} x21={regs.get('x21','?')[:16]}")
        elif t in ("ready","STALK","DONE"):
            print(f"  [{p.get('ts',0)}ms] {t}")
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','')[:150]}")
    sys.stdout.flush()

sc = session.create_script(SCRIPT); sc.on("message", on_msg); sc.load()
time.sleep(12)

# Navigate
print(f"[*] Navigate + enter code {CODE}...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.5)
subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
time.sleep(1)

sc.exports_sync.setact()
print("[*] Tapping Activate...")
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(5)

# Save whatever we got
callouts = [r for r in results if r.get("t") == "CALLOUT"]
print(f"\n[*] Total CALLOUT messages received: {len(callouts)}")
with open(f"/tmp/stalker_v3/callout_v3b_{CODE}.json","w") as f:
    json.dump({"code":CODE,"callouts":callouts,"all_msgs":results},f,indent=2,default=str)
print(f"[*] Saved to /tmp/stalker_v3/callout_v3b_{CODE}.json")
try: session.detach()
except: pass
