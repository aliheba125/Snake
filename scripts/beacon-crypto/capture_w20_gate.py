#!/usr/bin/env python3
"""
capture_w20_gate.py — Capture w20 at the cbz w20, 0xaaef0 gate.

From disassembly analysis, after the OLLVM dispatch path calls:
  0x8d61c (string prep) → bl 0x89774 (FUN_00189774) → mov w20, w0 → cbz w20, 0xaaef0

If w20 = 0 → branch taken (jump far = FAIL path)
If w20 ≠ 0 → fall through (= PASS path, presumably)

This script uses Stalker immediate (first malloc) with callout at:
  - 0xa6228: the `mov w20, w0` instruction (captures FUN_00189774's return value)
  - 0xa6238: the `cbz w20, 0xaaef0` instruction (captures w20 at decision point)
  - 0xa6220: the `bl 0x89774` call site (captures x0, x1 = args to FUN_00189774)

SAFE: Stalker transform + putCallout (no .text modification).
"""
import frida, time, subprocess, sys, json, os

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS() { return Date.now() - t0; }
function hx(ptr, n) {
    try {
        var a = new Uint8Array(ptr.readByteArray(n));
        var s = ''; for (var i = 0; i < n; i++) s += ('0' + a[i].toString(16)).slice(-2);
        return s;
    } catch(e) { return "ERR"; }
}

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var eng = null, wrapper_ra = null;
var activated = false, stalking = false, done = false;

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base;

    var targets = {};
    // bl 0x89774 call site (just before the call)
    targets[eB.add(0xa6220).toString()] = "bl_189774_site";
    // mov w20, w0 (after FUN_00189774 returns)
    targets[eB.add(0xa6228).toString()] = "mov_w20_w0";
    // cbz w20, 0xaaef0 (the gate)
    targets[eB.add(0xa6238).toString()] = "cbz_w20_gate";

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
                                    var entry = {
                                        ts: TS(), name: label,
                                        x0: ctx.x0.toString(16),
                                        x1: ctx.x1.toString(16),
                                        w20: (ctx.x20.toInt32() & 0xFFFFFFFF).toString(16),
                                        x20: ctx.x20.toString(16),
                                        x21: ctx.x21.toString(16),
                                        x19: ctx.x19.toString(16)
                                    };
                                    // At bl_189774_site: read x1 content (buffer being passed)
                                    if (label === "bl_189774_site") {
                                        entry.x0_content = hx(ctx.x0, 32);
                                        entry.x1_content = hx(ctx.x1, 48);
                                    }
                                    send({t: "CALLOUT", data: entry});
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
                }, 600);
            }
        }
    });
}
init();
rpc.exports = { setact: function() { activated = true; } };
"""

subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "setprop", "wrap.com.snake",
                "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               timeout=5, capture_output=True)

print(f"[*] capture_w20_gate.py — CODE={CODE}")
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
        if t == "CALLOUT":
            d = p["data"]
            print(f"  +{d['ts']}ms {d['name']}: w20=0x{d['w20']} x0={d['x0'][:12]} x1={d['x1'][:12]}")
            if d.get("x0_content"):
                print(f"    x0_content={d['x0_content'][:48]}")
            if d.get("x1_content"):
                print(f"    x1_content={d['x1_content'][:64]}")
        elif t in ("ready", "GO", "DONE"):
            print(f"  [{p.get('ts',0)}ms] {t}")
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

callouts = [r["data"] for r in results if r.get("t") == "CALLOUT"]
print(f"\n{'='*60}\nRESULTS (CODE={CODE}): {len(callouts)} callouts")
for c in callouts:
    print(f"  {c['name']}: w20=0x{c['w20']} x0={c['x0'][:16]}")

os.makedirs("/tmp/w20_gate", exist_ok=True)
with open(f"/tmp/w20_gate/w20_{CODE}.json", "w") as f:
    json.dump({"code": CODE, "callouts": callouts, "all": results}, f, indent=2, default=str)
print(f"[*] Saved")
try: session.detach()
except: pass
