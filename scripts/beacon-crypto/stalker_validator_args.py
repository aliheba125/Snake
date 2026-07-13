#!/usr/bin/env python3
"""
stalker_validator_args.py — Capture arguments to FUN_00189774 during Activate.

From disassembly analysis, the activation validation flow is:
  OLLVM dispatch → 0x8d61c (prep) → bl 0x89774 (FUN_00189774 decrypt_store)
  → w0 = result (0 = fail, non-zero = pass) → cbz w20 → reject/accept

This script captures:
  1. x0, x1 at entry to FUN_00189774 (args)
  2. The CONTENT of the buffer at [x1] (the prepared input — likely derived from code)
  3. x0 at entry to 0x8d61c (string prep — what is x0/x1 there?)
  4. Also reads [x0+0x228] (the .bss global pointer that x21 points to)

Uses immediate Stalker (first malloc trigger, no burst threshold).
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
    } catch(e) { return "READ_ERR"; }
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

    // Targets
    var targets = {};
    targets[eB.add(0x89774).toString()] = "FUN_189774_entry";
    targets[eB.add(0x8d61c).toString()] = "string_prep_entry";
    targets[eB.add(0xa6220).toString()] = "bl_189774_site";  // just before the call

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
                                        ts: TS(),
                                        name: label,
                                        x0: ctx.x0.toString(16),
                                        x1: ctx.x1.toString(16),
                                        x2: ctx.x2.toString(16),
                                        x19: ctx.x19.toString(16),
                                        x20: ctx.x20.toString(16),
                                        x21: ctx.x21.toString(16)
                                    };
                                    // Read buffer content at x1 (up to 64 bytes)
                                    try {
                                        entry.x1_content = hx(ctx.x1, 64);
                                    } catch(e) { entry.x1_content = "ERR"; }
                                    // Read buffer at x0 (first 32 bytes)
                                    try {
                                        entry.x0_content = hx(ctx.x0, 32);
                                    } catch(e) { entry.x0_content = "ERR"; }
                                    send({t: "CALL", data: entry});
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

print(f"[*] stalker_validator_args.py — CODE={CODE}")
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
print(f"[*] PID {target.pid}, waiting 12s...")
session = device.attach(target.pid)

results = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]; results.append(p)
        t = p.get("t", "")
        if t == "CALL":
            d = p["data"]
            print(f"  +{d['ts']}ms {d['name']}:")
            print(f"    x0={d['x0'][:16]} x1={d['x1'][:16]}")
            print(f"    x0_content={d.get('x0_content','?')[:64]}")
            print(f"    x1_content={d.get('x1_content','?')[:64]}")
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

print(f"[*] Activate code={CODE}")
sc.exports_sync.setact()
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], timeout=5)
time.sleep(4)

# Save
calls = [r for r in results if r.get("t") == "CALL"]
print(f"\n[*] Total CALL captures: {len(calls)}")
os.makedirs("/tmp/validator_args", exist_ok=True)
with open(f"/tmp/validator_args/args_{CODE}.json", "w") as f:
    json.dump({"code": CODE, "calls": [r.get("data") for r in results if r.get("t") == "CALL"], "all": results}, f, indent=2, default=str)
print(f"[*] Saved to /tmp/validator_args/args_{CODE}.json")
try: session.detach()
except: pass
