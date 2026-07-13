#!/usr/bin/env python3
"""
stalker_callout_v3.py — Stalker with putCallout at key function entries.

Records x0-x7 register values at the entry of each identified activation range.
This reveals what arguments flow into each function during Activate.

Key targets (from disassembly analysis):
  0x0aa39c — Range06: main activation orchestrator
  0x07aef0 — Range03: data/struct preparation  
  0x081cb8 — Range04: key engine (calls 0x7e148 conditionally)
  0x7d3d14 — Range12: vtable dispatcher
  0x0618a4 — Range01: memcpy wrapper
  0x7c6e60 — Range11: sub-function called from Range03
  0x800270 — Range16: malloc wrapper entry

Also captures the COMPARISON at 0xaa4a0 (cmp x19, x0) — the pass/fail gate.

SAFE: Stalker transform + putCallout (no .text modification).
"""
import frida, time, subprocess, sys, json, os

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
OUTDIR = "/tmp/stalker_v3"
os.makedirs(OUTDIR, exist_ok=True)

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS() { return Date.now() - t0; }
function hexptr(p) { return p.toString(16); }

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var eng = null, wrapper_ra = null;
var activated = false, stalking = false, done = false;
var burstHits = [];
var BURST_THRESHOLD = 5, BURST_WINDOW_MS = 300;

// Callout data: [{ts, offset, regs:{x0..x7}}]
var calloutLog = [];

// Target offsets for callout (file offsets in libengine)
var TARGETS = {
    0x0aa39c: "main_activate",
    0x07aef0: "data_prep",
    0x081cb8: "key_engine",
    0x07d3d14: "vtable_dispatch",
    0x0618a4: "memcpy_wrapper",
    0x07c6e60: "sub_from_prep",
    0x081d38: "tbz_w21_gate",       // the conditional branch before FUN_0017e148
    0x0aa4a0: "cmp_pass_fail_gate", // cmp x19, x0 — THE decision point
    0x07e148: "FUN_0017e148_entry"  // in case it IS reached
};

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base, eE = eng.base.add(eng.size);

    // Build set of target addresses (absolute)
    var targetAddrs = {};
    for (var off in TARGETS) {
        var absAddr = eB.add(parseInt(off));
        targetAddrs[absAddr.toString()] = {offset: parseInt(off), name: TARGETS[off]};
    }

    send({t: "ready", ts: TS(), engBase: eB.toString(), targets: Object.keys(TARGETS).length});

    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (done || !activated) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;
            var now = Date.now();
            burstHits.push(now);
            while (burstHits.length > 0 && (now - burstHits[0]) > BURST_WINDOW_MS)
                burstHits.shift();

            if (!stalking && burstHits.length >= BURST_THRESHOLD) {
                stalking = true;
                var tid = Process.getCurrentThreadId();
                send({t: "STALK_START", ts: TS(), tid: tid});

                Stalker.follow(tid, {
                    events: {compile: true},
                    transform: function(iterator) {
                        var instr = iterator.next();
                        while (instr !== null) {
                            var a = instr.address;
                            var key = a.toString();
                            if (key in targetAddrs) {
                                var info = targetAddrs[key];
                                iterator.putCallout(function(context) {
                                    // Read x0-x7 from context
                                    var regs = {};
                                    for (var r = 0; r < 8; r++) {
                                        regs["x" + r] = context["x" + r].toString(16);
                                    }
                                    calloutLog.push({
                                        ts: TS(),
                                        offset: info.offset,
                                        name: info.name,
                                        regs: regs
                                    });
                                }.bind(null));  // closure captures info
                            }
                            iterator.keep();
                            instr = iterator.next();
                        }
                    }
                });

                setTimeout(function() {
                    try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
                    done = true;
                    send({t: "STALK_DONE", ts: TS(), callouts: calloutLog.length});
                }, 800);
            }
        }
    });
}
init();

rpc.exports = {
    setact: function() { activated = true; return TS(); },
    getresults: function() { return calloutLog; }
};
"""

def run():
    print(f"[*] stalker_callout_v3.py — CODE={CODE}")
    subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"],
                   timeout=5, capture_output=True)
    time.sleep(1)
    subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake",
                    "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
    subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"],
                   timeout=5, capture_output=True)

    print("[*] Connecting to Frida Gadget...")
    device = None
    for port in [27042, 27052]:
        for i in range(90):
            time.sleep(0.1)
            try:
                d = frida.get_device_manager().add_remote_device(f"127.0.0.1:{port}")
                if d.enumerate_processes(): device = d; break
            except: pass
        if device: break
    if not device:
        print("[!] No gadget"); sys.exit(1)

    procs = device.enumerate_processes()
    target = next((p for p in procs if "snake" in p.name.lower()), procs[0])
    print(f"[*] Attaching to PID {target.pid}...")
    session = device.attach(target.pid)

    msgs = []
    def on_msg(m, data):
        if m["type"] == "send":
            p = m["payload"]; msgs.append(p)
            t = p.get("t","")
            if t in ("ready","STALK_START","STALK_DONE"):
                print(f"  [{p.get('ts',0)}ms] {t}: {json.dumps({k:v for k,v in p.items() if k!='t'},default=str)[:120]}")
        elif m["type"] == "error":
            print(f"  [ERROR] {m.get('description','')[:200]}")
        sys.stdout.flush()

    sc = session.create_script(SCRIPT); sc.on("message", on_msg); sc.load()
    print("[*] Waiting 12s for beacon...")
    time.sleep(12)

    # Navigate to Entry Key
    print("[*] Navigating to Entry Key...")
    subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
    time.sleep(2)
    subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
    time.sleep(2)
    subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
    time.sleep(0.5)
    subprocess.run(["adb","-s","localhost:5555","shell","input","text",CODE], timeout=5)
    time.sleep(1)

    print(f"[*] Setting activate flag...")
    sc.exports_sync.setact()
    print("[*] Tapping Activate...")
    subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
    time.sleep(4)

    print("[*] Retrieving callout results...")
    try:
        results = sc.exports_sync.getresults()
    except Exception as e:
        print(f"[!] Error: {e}"); results = []

    # Check app alive
    try:
        alive = bool(device.enumerate_processes())
        print(f"[*] App alive: {alive}")
    except: print("[!] App may have died")

    # Display
    print(f"\n{'='*70}\nCALLOUT RESULTS (CODE={CODE})\n{'='*70}")
    print(f"Total callouts: {len(results)}")
    
    # Group by function
    by_func = {}
    for c in results:
        name = c.get("name","?")
        if name not in by_func: by_func[name] = []
        by_func[name].append(c)
    
    for name, entries in sorted(by_func.items(), key=lambda x: x[1][0]["ts"] if x[1] else 0):
        print(f"\n  --- {name} (0x{entries[0]['offset']:x}) — {len(entries)} calls ---")
        for e in entries[:5]:
            regs = e.get("regs",{})
            reg_str = " ".join(f"x{i}={regs.get(f'x{i}','?')[:12]}" for i in range(4))
            print(f"    +{e['ts']}ms: {reg_str}")
        if len(entries) > 5:
            print(f"    ... +{len(entries)-5} more")

    # Save
    outfile = os.path.join(OUTDIR, f"callout_{CODE}.json")
    with open(outfile, "w") as f:
        json.dump({"code": CODE, "callouts": results, "by_func": {k: len(v) for k,v in by_func.items()}}, f, indent=2)
    print(f"\n[*] Saved to {outfile}")
    
    try: session.detach()
    except: pass

if __name__ == "__main__":
    run()
