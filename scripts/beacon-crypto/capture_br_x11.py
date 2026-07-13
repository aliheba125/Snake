#!/usr/bin/env python3
"""
capture_br_x11.py — Capture the OLLVM jump table dispatch target (br x11 at 0xa61c8).

The OLLVM dispatcher at 0xa61c8 uses: adr x11; ldrsw x12,[table,x9,lsl 2]; add x11,x11,x12; br x11
This script uses Stalker immediate (first malloc) with a callout at 0xa61c8 to read x11
(the computed jump target). This tells us which OLLVM "case" is executed during Activate.

Also captures x11 at the SECOND br x11 if it exists (OLLVM may have nested dispatchers).

SAFE: Stalker transform + putCallout (no .text modification).
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
var captures = [];

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base;

    // br x11 at 0xa61c8
    var br_x11_addr = eB.add(0xa61c8);
    // Also the second potential br (at 0xa61bc - the adr instruction that sets x11 base)
    // Actually let's target ALL br/blr instructions in the 0xa6100-0xa6500 range
    // by checking the mnemonic. But simpler: just callout at 0xa61c8 (the br x11).
    
    var targets = {};
    targets[br_x11_addr.toString()] = "br_x11_0xa61c8";
    
    send({t: "ready", ts: TS()});

    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (done || !activated) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;
            if (!stalking) {
                stalking = true;
                var tid = Process.getCurrentThreadId();
                send({t: "GO", ts: TS(), tid: tid});

                Stalker.follow(tid, {
                    events: {compile: true},
                    transform: function(iterator) {
                        var instr = iterator.next();
                        while (instr !== null) {
                            var key = instr.address.toString();
                            if (key in targets) {
                                var label = targets[key];
                                iterator.putCallout(function(ctx) {
                                    var x11 = ctx.x11;
                                    var x11_off = x11.sub(eB);
                                    var x9 = ctx.x9;  // jump table index
                                    captures.push({
                                        ts: TS(), name: label,
                                        x11_abs: x11.toString(16),
                                        x11_offset: "0x" + x11_off.toString(16),
                                        x9_index: x9.toInt32(),
                                        x0: ctx.x0.toString(16),
                                        x19: ctx.x19.toString(16),
                                        x20: ctx.x20.toString(16)
                                    });
                                    send({t: "BR", x11_offset: "0x" + x11_off.toString(16),
                                          x9: x9.toInt32(), ts: TS()});
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
                    send({t: "DONE", ts: TS(), count: captures.length});
                }, 600);
            }
        }
    });
}
init();
rpc.exports = {
    setact: function() { activated = true; },
    getcaptures: function() { return captures; }
};
"""

subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "setprop", "wrap.com.snake",
                "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               timeout=5, capture_output=True)

print(f"[*] capture_br_x11.py — CODE={CODE}")
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
print(f"[*] PID {target.pid}, wait 12s...")
session = device.attach(target.pid)

results = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]; results.append(p)
        t = p.get("t", "")
        if t == "BR":
            print(f"  +{p['ts']}ms br x11 → offset {p['x11_offset']}  (x9/index={p['x9']})")
        elif t in ("ready", "GO", "DONE"):
            print(f"  [{p.get('ts',0)}ms] {t}" + (f" count={p.get('count')}" if 'count' in p else ""))
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','')[:150]}")
    sys.stdout.flush()

sc = session.create_script(SCRIPT); sc.on("message", on_msg); sc.load()
time.sleep(12)

# Navigate
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "140", "97"], timeout=5); time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"], timeout=5); time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "585"], timeout=5); time.sleep(0.5)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "text", CODE], timeout=5); time.sleep(1)

print(f"\n[*] Activate code={CODE}")
sc.exports_sync.setact()
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], timeout=5)
time.sleep(4)

# Try to get full captures via RPC
try:
    caps = sc.exports_sync.getcaptures()
    if caps:
        print(f"\n[*] Full captures via RPC: {len(caps)}")
        for c in caps:
            print(f"  x11_offset={c['x11_offset']} x9={c['x9_index']} x0={c['x0'][:12]} x19={c['x19'][:12]}")
except:
    pass

br_msgs = [r for r in results if r.get("t") == "BR"]
print(f"\n{'='*60}\nRESULTS: {len(br_msgs)} br x11 captures")
for b in br_msgs:
    print(f"  → target offset {b['x11_offset']}, jump table index x9={b['x9']}")

os.makedirs("/tmp/br_x11", exist_ok=True)
with open(f"/tmp/br_x11/br_{CODE}.json", "w") as f:
    json.dump({"code": CODE, "br_captures": br_msgs, "all": results}, f, indent=2, default=str)
print(f"[*] Saved")
try: session.detach()
except: pass
