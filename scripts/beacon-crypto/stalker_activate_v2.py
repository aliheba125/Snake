#!/usr/bin/env python3
"""
stalker_activate_v2.py — Precise Stalker isolation of the Entry-Key validator.

IMPROVEMENTS over v1 (stalker_activate.py / stalker_funcs.py):
  1. Waits 12s after launch so the beacon has ALREADY fired (no confusion).
  2. Uses a BURST detector: Stalker activates only when 5+ malloc(0x800290) arrive
     within 200ms — this pattern is unique to Activate (~127 allocs in <1s) vs
     beacon (1 alloc per ~16s cycle).
  3. Records ORDERED instruction trace (not just deduplicated set) so we can
     reconstruct the exact call sequence.
  4. Tags known functions: FUN_00160208 (AES), FUN_00161788 (KDF/gen32),
     FUN_0016169c (key derivation), FUN_00165b70 (beacon builder).
  5. Captures malloc sizes + first 64 bytes of each buffer freed during Stalker
     window — correlates crypto buffers with execution path.

SAFE: uses libc hooks + Stalker (no .text modification). Gadget at /system/lib64/.
"""
import frida, time, subprocess, sys, json, os

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
OUTDIR = "/tmp/stalker_v2"
os.makedirs(OUTDIR, exist_ok=True)

SCRIPT = r"""
'use strict';

var t0 = Date.now();
function TS() { return Date.now() - t0; }
function hx(ptr, n) {
    var a = new Uint8Array(ptr.readByteArray(n));
    var s = ''; for (var i = 0; i < n; i++) s += ('0' + a[i].toString(16)).slice(-2);
    return s;
}

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var _free = libc.findExportByName("free");

var eng = null, wrapper_ra = null;
var activated = false, stalking = false, done = false;

// Burst detection state
var burstHits = [];       // timestamps of recent malloc(wrapper_ra) hits
var BURST_THRESHOLD = 5;  // 5 hits within BURST_WINDOW_MS => activate Stalker
var BURST_WINDOW_MS = 300;

// Stalker results
var traceLog = [];        // ordered: [{off: <offset>, idx: <seq>}]
var traceIdx = 0;
var cryptoBufs = [];      // {sz, hex64, ts, phase:'during_stalk'}
var tracked = {};         // ptr -> {sz, ts}

// Known function map (file offsets in libengine)
var KNOWN = {
    0x60208: "FUN_00160208_AES_decrypt",
    0x60640: "FUN_00160640_AES_encrypt",
    0x61788: "FUN_00161788_gen32_KDF",
    0x6169c: "FUN_0016169c_master_key",
    0x614a4: "FUN_001614a4_PRNG16",
    0x61598: "FUN_00161598_shuffle",
    0x65b70: "FUN_00165b70_beacon_builder",
    0x7e148: "FUN_0017e148_time_window_check",
    0x89774: "FUN_00189774_decrypt_store"
};

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    wrapper_ra = eng.base.add(0x800290);
    var eB = eng.base, eE = eng.base.add(eng.size);

    send({t: "ready", ts: TS(), engBase: eng.base.toString(), engSize: eng.size});

    // malloc hook: burst detection + buffer tracking
    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (done || !activated) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;

            var now = Date.now();
            var sz = args[0].toInt32();
            this._sz = sz;
            this._hit = true;

            if (!stalking) {
                // Burst detection
                burstHits.push(now);
                // Prune old hits outside window
                while (burstHits.length > 0 && (now - burstHits[0]) > BURST_WINDOW_MS)
                    burstHits.shift();

                if (burstHits.length >= BURST_THRESHOLD) {
                    // BURST DETECTED -> start Stalker on this thread
                    stalking = true;
                    var tid = Process.getCurrentThreadId();
                    send({t: "BURST_DETECTED", ts: TS(), tid: tid, burstCount: burstHits.length});

                    Stalker.follow(tid, {
                        events: {compile: true},
                        transform: function(iterator) {
                            var instr = iterator.next();
                            while (instr !== null) {
                                var a = instr.address;
                                if (a.compare(eB) >= 0 && a.compare(eE) < 0) {
                                    var off = a.sub(eB).toInt32();
                                    traceLog.push(off);
                                }
                                iterator.keep();
                                instr = iterator.next();
                            }
                        }
                    });

                    // Auto-stop after 600ms (activation completes in <500ms)
                    setTimeout(function() {
                        try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
                        done = true;
                        send({t: "STALK_DONE", ts: TS(), traceLen: traceLog.length, bufsCapt: cryptoBufs.length});
                    }, 600);
                }
            }
        },
        onLeave: function(retval) {
            if (this._hit && !retval.isNull() && stalking && !done) {
                tracked[retval.toString()] = {sz: this._sz, ts: TS()};
            }
        }
    });

    // free hook: capture buffer content before deallocation during Stalker window
    Interceptor.attach(_free, {
        onEnter: function(args) {
            if (!stalking || done) return;
            var key = args[0].toString();
            var info = tracked[key];
            if (!info) return;
            var sz = Math.min(info.sz, 64);
            try {
                cryptoBufs.push({
                    sz: info.sz,
                    hex64: hx(args[0], sz),
                    ts: TS()
                });
            } catch(e) {}
            delete tracked[key];
        }
    });
}

init();

rpc.exports = {
    setact: function() { activated = true; return TS(); },
    getresults: function() {
        // Deduplicate trace into ordered function entries
        var funcEntries = [];  // [{off, name, firstIdx}]
        var seen = {};
        for (var i = 0; i < traceLog.length; i++) {
            var off = traceLog[i];
            // Check if this is a known function entry (within 4 bytes of known addr)
            for (var koff in KNOWN) {
                var ko = parseInt(koff);
                if (off >= ko && off <= ko + 4 && !seen[koff]) {
                    seen[koff] = true;
                    funcEntries.push({off: ko, name: KNOWN[koff], firstIdx: i});
                }
            }
        }
        // Build ranges (contiguous blocks)
        var sorted = traceLog.slice().sort(function(a,b){return a-b;});
        var uniq = []; var prev = -1;
        for (var j = 0; j < sorted.length; j++) {
            if (sorted[j] !== prev) { uniq.push(sorted[j]); prev = sorted[j]; }
        }
        var ranges = [];
        if (uniq.length > 0) {
            var s = uniq[0], e = uniq[0];
            for (var k = 1; k < uniq.length; k++) {
                if (uniq[k] - e <= 32) e = uniq[k];
                else { ranges.push([s, e]); s = uniq[k]; e = uniq[k]; }
            }
            ranges.push([s, e]);
        }
        return {
            traceLen: traceLog.length,
            uniqueOffsets: uniq.length,
            ranges: ranges,
            knownFuncsHit: funcEntries,
            cryptoBufs: cryptoBufs
        };
    }
};
"""

def run():
    print(f"[*] stalker_activate_v2.py — CODE={CODE}")
    print("[*] Force-stopping com.snake...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
                   timeout=5, capture_output=True)
    time.sleep(1)

    print("[*] Setting wrap property (Gadget injection via /system/lib64/libskia_android.so)...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell",
                    "setprop", "wrap.com.snake",
                    "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)

    print("[*] Starting com.snake...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell",
                    "am", "start", "-n", "com.snake/com.Entry"], timeout=5, capture_output=True)

    # Connect to Gadget
    print("[*] Waiting for Frida Gadget...")
    device = None
    for i in range(120):
        time.sleep(0.1)
        try:
            d = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
            procs = d.enumerate_processes()
            if procs:
                device = d
                break
        except:
            pass
    if not device:
        # Try alternate port
        for i in range(60):
            time.sleep(0.1)
            try:
                d = frida.get_device_manager().add_remote_device("127.0.0.1:27052")
                procs = d.enumerate_processes()
                if procs:
                    device = d
                    break
            except:
                pass
    if not device:
        print("[!] Cannot connect to Frida Gadget. Aborting.")
        sys.exit(1)

    procs = device.enumerate_processes()
    target = None
    for p in procs:
        if "snake" in p.name.lower() or "com.snake" in p.name.lower():
            target = p
            break
    if not target:
        target = procs[0]
    print(f"[*] Attaching to PID {target.pid} ({target.name})...")
    session = device.attach(target.pid)

    msgs = []
    def on_msg(m, data):
        if m["type"] == "send":
            p = m["payload"]
            msgs.append(p)
            t = p.get("t", "")
            if t in ("ready", "BURST_DETECTED", "STALK_DONE"):
                print(f"  [{p.get('ts',0)}ms] {t}: {json.dumps({k:v for k,v in p.items() if k!='t'})}")
        elif m["type"] == "error":
            print(f"  [ERROR] {m.get('description','')[:200]}")
        sys.stdout.flush()

    sc = session.create_script(SCRIPT)
    sc.on("message", on_msg)
    sc.load()

    # Wait 12s for beacon to complete (fires once at cold launch)
    print("[*] Waiting 12s for beacon to complete...")
    time.sleep(12)

    # Navigate to Entry Key screen
    print("[*] Navigating: Device screen -> Entry Key field...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "140", "97"], timeout=5)
    time.sleep(2)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"], timeout=5)
    time.sleep(2)
    # Tap the Entry Key input field
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "585"], timeout=5)
    time.sleep(0.5)
    # Enter the code
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "text", CODE], timeout=5)
    time.sleep(1)

    # NOW activate the burst detector flag
    print(f"[*] Activating burst detector flag (code={CODE})...")
    ts = sc.exports_sync.setact()
    print(f"  [flag set at {ts}ms]")

    # Tap the Activate button
    print("[*] Tapping Activate button...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], timeout=5)

    # Wait for Stalker to complete
    print("[*] Waiting 4s for Stalker to complete...")
    time.sleep(4)

    # Retrieve results
    print("[*] Retrieving results...")
    try:
        results = sc.exports_sync.getresults()
    except Exception as e:
        print(f"[!] Error getting results: {e}")
        results = {"error": str(e)}

    # Check if app is still alive
    try:
        alive = bool(device.enumerate_processes())
        print(f"[*] App alive after Stalker: {alive}")
    except:
        print("[!] App may have died")

    # Output results
    print("\n" + "="*70)
    print("RESULTS SUMMARY")
    print("="*70)
    if "error" not in results:
        print(f"  Total instructions traced: {results.get('traceLen', 0)}")
        print(f"  Unique offsets: {results.get('uniqueOffsets', 0)}")
        print(f"  Contiguous ranges: {len(results.get('ranges', []))}")
        print(f"  Crypto buffers captured: {len(results.get('cryptoBufs', []))}")
        print(f"\n  Known functions HIT during Activate:")
        for f in results.get("knownFuncsHit", []):
            print(f"    [{f['firstIdx']:5d}] 0x{f['off']:06x} = {f['name']}")
        print(f"\n  Ranges (file offset -> Ghidra addr):")
        for s, e in results.get("ranges", [])[:50]:
            label = ""
            for koff, kname in {0x60208:"AES", 0x60640:"AES_enc", 0x61788:"gen32",
                                  0x6169c:"master_key", 0x614a4:"PRNG16",
                                  0x61598:"shuffle", 0x65b70:"beacon",
                                  0x7e148:"time_window"}.items():
                if s <= koff <= e:
                    label = f"  <-- contains {kname}"
            print(f"    0x{s:06x}-0x{e:06x}  (Ghidra 0x{s+0x100000:x}-0x{e+0x100000:x}){label}")
        print(f"\n  Crypto buffers (first 10):")
        for b in results.get("cryptoBufs", [])[:10]:
            print(f"    sz={b['sz']:3d} +{b['ts']}ms: {b['hex64']}")
    else:
        print(f"  ERROR: {results['error']}")

    # Save full results
    outfile = os.path.join(OUTDIR, f"stalker_v2_{CODE}.json")
    with open(outfile, "w") as f:
        json.dump({"code": CODE, "msgs": msgs, "results": results}, f, indent=2, default=str)
    print(f"\n[*] Full results saved to {outfile}")

    try:
        session.detach()
    except:
        pass

if __name__ == "__main__":
    run()
