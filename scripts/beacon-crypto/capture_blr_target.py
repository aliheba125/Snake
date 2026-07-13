#!/usr/bin/env python3
"""
capture_blr_target.py — Capture the vtable dispatch target address.

At offset 0x7d3d50 in libengine there is a `blr x8` instruction.
This script uses Stalker putCallout to read x8 at that point,
then computes x8 - engBase = file offset of the dispatched function.

Also captures at 0x7d3ddc (second blr x8 in the same dispatcher variant at 0x7d3da0).

SAFE: Stalker transform + putCallout only (no .text modification).
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
var results = [];

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base;

    // Target: blr x8 at two dispatcher locations
    var blr_targets = {};
    blr_targets[eB.add(0x7d3d50).toString()] = "blr_x8_dispatch1_0x7d3d50";
    blr_targets[eB.add(0x7d3ddc).toString()] = "blr_x8_dispatch2_0x7d3ddc";
    blr_targets[eB.add(0x7d3d8c).toString()] = "blr_x8_dispatch1b_0x7d3d8c";
    blr_targets[eB.add(0x7d3e18).toString()] = "blr_x8_dispatch2b_0x7d3e18";

    send({t: "ready", ts: TS(), engBase: eB.toString()});

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
                            if (key in blr_targets) {
                                var label = blr_targets[key];
                                iterator.putCallout(function(ctx) {
                                    var x8 = ctx.x8;
                                    var offset = x8.sub(eB);
                                    var entry = {
                                        ts: TS(),
                                        name: label,
                                        x8_abs: x8.toString(),
                                        x8_offset: "0x" + offset.toString(16),
                                        x0: ctx.x0.toString(16),
                                        x1: ctx.x1.toString(16),
                                        x19: ctx.x19.toString(16)
                                    };
                                    results.push(entry);
                                    send({t: "BLR", data: entry});
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
                    send({t: "DONE", ts: TS(), count: results.length});
                }, 800);
            }
        }
    });
}
init();

rpc.exports = {
    setact: function() { activated = true; },
    getresults: function() { return results; }
};
"""

subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "setprop", "wrap.com.snake",
                "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               timeout=5, capture_output=True)

print(f"[*] capture_blr_target.py — CODE={CODE}")
print("[*] Connecting to Frida Gadget...")
device = None
for port in [27042, 27052]:
    for i in range(90):
        time.sleep(0.1)
        try:
            d = frida.get_device_manager().add_remote_device(f"127.0.0.1:{port}")
            if d.enumerate_processes():
                device = d
                break
        except:
            pass
    if device:
        break
if not device:
    print("[!] No gadget")
    sys.exit(1)

procs = device.enumerate_processes()
target = next((p for p in procs if "snake" in p.name.lower()), procs[0])
print(f"[*] Attaching to PID {target.pid}...")
session = device.attach(target.pid)

blr_captures = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]
        t = p.get("t", "")
        if t == "BLR":
            d = p["data"]
            blr_captures.append(d)
            print(f"  +{d['ts']}ms {d['name']}: x8_offset={d['x8_offset']} x0={d['x0'][:12]} x1={d['x1'][:12]}")
        elif t in ("ready", "STALK", "DONE"):
            print(f"  [{p.get('ts',0)}ms] {t}" + (f" count={p.get('count')}" if 'count' in p else ""))
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','')[:150]}")
    sys.stdout.flush()

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

print("[*] Waiting 12s for beacon...")
time.sleep(12)

# Navigate to Entry Key
print("[*] Navigating to Entry Key...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "140", "97"], timeout=5)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "585"], timeout=5)
time.sleep(0.5)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "text", CODE], timeout=5)
time.sleep(1)

print(f"[*] Activating (code={CODE})...")
sc.exports_sync.setact()
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], timeout=5)

print("[*] Waiting 4s for Stalker...")
time.sleep(4)

# Try to get results via RPC (may fail if app died)
try:
    rpc_results = sc.exports_sync.getresults()
    if rpc_results:
        blr_captures = rpc_results
except:
    pass

print(f"\n{'='*70}")
print(f"RESULTS (CODE={CODE})")
print(f"{'='*70}")
print(f"Total blr x8 captures: {len(blr_captures)}")

# Deduplicate by offset
offsets_seen = {}
for c in blr_captures:
    off = c.get("x8_offset", "?")
    name = c.get("name", "?")
    key = f"{name}:{off}"
    if key not in offsets_seen:
        offsets_seen[key] = c
        print(f"  {name} -> target offset: {off}")

# Save
os.makedirs("/tmp/blr_target", exist_ok=True)
outfile = f"/tmp/blr_target/blr_{CODE}.json"
with open(outfile, "w") as f:
    json.dump({"code": CODE, "captures": blr_captures, "unique_targets": list(offsets_seen.keys())}, f, indent=2)
print(f"\n[*] Saved to {outfile}")

try:
    session.detach()
except:
    pass
