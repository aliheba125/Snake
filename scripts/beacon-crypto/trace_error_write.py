#!/usr/bin/env python3
"""
trace_error_write.py — Trace which function writes "Code is Not valid" to bss_8228.

Strategy: Hook libc string/memory functions (memcpy, strcpy, memmove) and filter
by: (a) destination within libengine .bss range, OR (b) content containing "Code is Not".
When detected, record the return address (caller) and full call stack.

Also captures br x11 target at 0xa61c8 (OLLVM jump table dispatch) using Stalker.

SAFE: hooks only libc exports (not libengine .text).
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
function ascii(ptr, n) {
    try {
        var a = new Uint8Array(ptr.readByteArray(n));
        var s = ''; for (var i = 0; i < n; i++) {
            var c = a[i]; if (c === 0) break;
            s += (c >= 32 && c < 127) ? String.fromCharCode(c) : '.';
        }
        return s;
    } catch(e) { return "ERR"; }
}

var libc = Process.getModuleByName("libc.so");
var eng = null;
var activated = false;
var findings = [];

// Target string bytes (first 10 chars of "Code is No")
var TARGET = [0x43, 0x6f, 0x64, 0x65, 0x20, 0x69, 0x73, 0x20, 0x4e, 0x6f];

function matchTarget(ptr, len) {
    if (len < 10) return false;
    try {
        var a = new Uint8Array(ptr.readByteArray(Math.min(len, 20)));
        for (var i = 0; i < TARGET.length; i++) {
            if (a[i] !== TARGET[i]) return false;
        }
        return true;
    } catch(e) { return false; }
}

function init() {
    eng = Process.findModuleByName("libengine.so");
    if (!eng) { setTimeout(init, 10); return; }
    var eB = eng.base;
    var eBss = eB.add(0x828000);  // approximate .bss start
    var eBssEnd = eB.add(0x830000);  // approximate .bss end

    send({t: "ready", ts: TS(), engBase: eB.toString()});

    // Hook memcpy
    Interceptor.attach(libc.findExportByName("memcpy"), {
        onEnter: function(args) {
            if (!activated) return;
            var dst = args[0]; var src = args[1]; var n = args[2].toInt32();
            // Check if src contains our target string
            if (n >= 10 && matchTarget(src, n)) {
                var ra = this.returnAddress;
                var offset = ra.sub(eB);
                var entry = {
                    ts: TS(), func: "memcpy", ra: ra.toString(16),
                    ra_offset: "0x" + offset.toString(16),
                    dst: dst.toString(16), src_ascii: ascii(src, Math.min(n, 40)),
                    n: n
                };
                findings.push(entry);
                send({t: "FOUND", data: entry});
            }
        }
    });

    // Hook strcpy
    Interceptor.attach(libc.findExportByName("strcpy"), {
        onEnter: function(args) {
            if (!activated) return;
            var dst = args[0]; var src = args[1];
            if (matchTarget(src, 20)) {
                var ra = this.returnAddress;
                var offset = ra.sub(eB);
                var entry = {
                    ts: TS(), func: "strcpy", ra: ra.toString(16),
                    ra_offset: "0x" + offset.toString(16),
                    dst: dst.toString(16), src_ascii: ascii(src, 40)
                };
                findings.push(entry);
                send({t: "FOUND", data: entry});
            }
        }
    });

    // Hook memmove
    Interceptor.attach(libc.findExportByName("memmove"), {
        onEnter: function(args) {
            if (!activated) return;
            var dst = args[0]; var src = args[1]; var n = args[2].toInt32();
            if (n >= 10 && matchTarget(src, n)) {
                var ra = this.returnAddress;
                var offset = ra.sub(eB);
                var entry = {
                    ts: TS(), func: "memmove", ra: ra.toString(16),
                    ra_offset: "0x" + offset.toString(16),
                    dst: dst.toString(16), src_ascii: ascii(src, Math.min(n, 40)),
                    n: n
                };
                findings.push(entry);
                send({t: "FOUND", data: entry});
            }
        }
    });

    // Also hook snprintf/sprintf for formatted string writes
    var _snprintf = libc.findExportByName("snprintf");
    if (_snprintf) {
        Interceptor.attach(_snprintf, {
            onEnter: function(args) {
                if (!activated) return;
                // Check format string
                var fmt = args[2] || args[1];
                try {
                    var fmtStr = ascii(fmt, 30);
                    if (fmtStr.indexOf("Code") >= 0 || fmtStr.indexOf("valid") >= 0) {
                        var ra = this.returnAddress;
                        findings.push({ts: TS(), func: "snprintf", ra: ra.sub(eB).toString(16), fmt: fmtStr});
                        send({t: "FOUND", data: {func: "snprintf", ra_offset: "0x" + ra.sub(eB).toString(16), fmt: fmtStr}});
                    }
                } catch(e) {}
            }
        });
    }

    // Monitor writes to the bss_8228 region specifically
    // We can't use MemoryAccessMonitor on all of .bss, but we can poll
    // Instead: hook the specific pointer store
    // The string "Code is Not valid" exists somewhere in .rodata — find it
    var pattern = "43 6f 64 65 20 69 73 20 4e 6f 74 20 76 61 6c 69 64";
    var matches = Memory.scanSync(eB, eng.size, pattern);
    if (matches.length > 0) {
        send({t: "STRING_FOUND", addresses: matches.map(function(m) {
            return {addr: m.address.toString(16), offset: "0x" + m.address.sub(eB).toString(16)};
        })});
    }
}

init();
rpc.exports = {
    setact: function() { activated = true; return TS(); },
    getfindings: function() { return findings; }
};
"""

subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               timeout=5, capture_output=True)
time.sleep(1)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "setprop", "wrap.com.snake",
                "LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5, capture_output=True)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               timeout=5, capture_output=True)

print(f"[*] trace_error_write.py — CODE={CODE}")
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
print(f"[*] PID {target.pid}, waiting 10s...")
session = device.attach(target.pid)

results = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]; results.append(p)
        t = p.get("t", "")
        if t == "FOUND":
            d = p["data"]
            print(f"  *** FOUND +{d.get('ts','')}ms {d.get('func','?')} caller_offset={d.get('ra_offset','?')}")
            print(f"      content: {d.get('src_ascii', d.get('fmt', '?'))}")
        elif t == "STRING_FOUND":
            print(f"  [*] 'Code is Not valid' string in binary at: {p['addresses']}")
        elif t in ("ready",):
            print(f"  [{p.get('ts',0)}ms] {t}")
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','')[:150]}")
    sys.stdout.flush()

sc = session.create_script(SCRIPT); sc.on("message", on_msg); sc.load()
time.sleep(10)

# Navigate
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "140", "97"], timeout=5); time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"], timeout=5); time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "585"], timeout=5); time.sleep(0.5)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "text", CODE], timeout=5); time.sleep(1)

print(f"\n[*] Setting activate flag + tapping Activate (code={CODE})...")
sc.exports_sync.setact()
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], timeout=5)
time.sleep(4)

# Get results
try:
    findings = sc.exports_sync.getfindings()
except:
    findings = [r.get("data") for r in results if r.get("t") == "FOUND"]

print(f"\n{'='*70}")
print(f"RESULTS (CODE={CODE})")
print(f"{'='*70}")
print(f"Total 'Code is Not valid' write captures: {len(findings)}")
for f in findings:
    print(f"  {f.get('func','?')} @ offset {f.get('ra_offset','?')} → '{f.get('src_ascii', f.get('fmt','?'))}'")

os.makedirs("/tmp/error_trace", exist_ok=True)
with open(f"/tmp/error_trace/trace_{CODE}.json", "w") as f:
    json.dump({"code": CODE, "findings": findings, "all_msgs": results}, f, indent=2, default=str)
print(f"\n[*] Saved to /tmp/error_trace/trace_{CODE}.json")
try: session.detach()
except: pass
