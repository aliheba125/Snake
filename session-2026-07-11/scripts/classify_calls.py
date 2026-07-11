"""
Classify all memcpy/malloc calls FROM libengine.so by return address.
Compare: (1) idle state vs (2) after tapping game tile.
Do NOT assume any call is KDF/AES without backtrace evidence.
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Fresh start
adb("am force-stop com.snake")
time.sleep(1)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
time.sleep(18)
subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# Hook memcpy + malloc on libc, log return address offset within libengine
# Also log size for memcpy
SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var lo = eng.base;
var hi = eng.base.add(eng.size);
var libc = Process.findModuleByName("libc.so");

// Target offsets we want to identify if they appear in backtraces
// KDF = 0x161788, AES = 0x160208, FN1 = 0x17e148, FN2 = 0x189774
var TARGETS = [0x161788, 0x160208, 0x17e148, 0x189774];

var memcpy_fn = libc.findExportByName("memcpy");
var malloc_fn = libc.findExportByName("malloc");

var phase = "idle";
var calls = [];  // {fn, off, size, phase}

Interceptor.attach(memcpy_fn, {
    onEnter: function(args) {
        var ret = this.returnAddress;
        if (ret.compare(lo) >= 0 && ret.compare(hi) < 0) {
            var off = ret.sub(lo).toInt32();
            var size = args[2].toInt32();
            calls.push({fn: "memcpy", off: off, size: size, phase: phase});
        }
    }
});

Interceptor.attach(malloc_fn, {
    onEnter: function(args) {
        var ret = this.returnAddress;
        if (ret.compare(lo) >= 0 && ret.compare(hi) < 0) {
            var off = ret.sub(lo).toInt32();
            var size = args[0].toInt32();
            calls.push({fn: "malloc", off: off, size: size, phase: phase});
        }
    }
});

send({t: "ready"});

rpc.exports = {
    setPhase: function(p) { phase = p; send({t: "phase", p: p}); },
    getStats: function() {
        // Group by (fn, offset, phase) and count
        var groups = {};
        for (var i = 0; i < calls.length; i++) {
            var c = calls[i];
            var key = c.phase + "|" + c.fn + "|0x" + c.off.toString(16);
            if (!groups[key]) {
                groups[key] = {fn: c.fn, off: "0x" + c.off.toString(16), phase: c.phase, count: 0, sizes: []};
            }
            groups[key].count++;
            if (groups[key].sizes.length < 5) groups[key].sizes.push(c.size);
        }
        return {total: calls.length, groups: groups};
    },
    clearCalls: function() { calls = []; },
    // Check if any return address is near our target functions
    checkTargets: function() {
        var found = [];
        for (var i = 0; i < calls.length; i++) {
            var off = calls[i].off;
            for (var j = 0; j < TARGETS.length; j++) {
                // Within 0x1000 bytes of target = possibly related
                if (Math.abs(off - TARGETS[j]) < 0x1000) {
                    found.push({call_off: "0x"+off.toString(16), target_off: "0x"+TARGETS[j].toString(16), fn: calls[i].fn, size: calls[i].size, phase: calls[i].phase});
                }
            }
        }
        return found;
    }
};
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        p = m["payload"]
        if p.get("t") == "ready":
            print("  [+] Hooks ready")
        elif p.get("t") == "phase":
            print("  [PHASE] " + p["p"])
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

# PHASE 1: IDLE (10 seconds — no interaction)
print("\n[*] PHASE 1: IDLE (10s, no interaction)...")
sc.exports_sync.set_phase("idle")
sc.exports_sync.clear_calls()
time.sleep(10)
idle_stats = sc.exports_sync.get_stats()
print("  Total calls (idle): {}".format(idle_stats["total"]))

# PHASE 2: TAP on game (trigger subscription dialog)
print("\n[*] PHASE 2: TAP on 8 Ball Pool...")
sc.exports_sync.set_phase("tap")
adb("input tap 145 780")
time.sleep(8)
tap_stats = sc.exports_sync.get_stats()
tap_total = tap_stats["total"] - idle_stats["total"]
print("  New calls after tap: {}".format(tap_total))

# Get full stats
full_stats = sc.exports_sync.get_stats()

# Check for any calls near target functions
near_targets = sc.exports_sync.check_targets()

# Verify process alive
ps = adb("ps -A | grep com.snake$")
print("\n  Process: {}".format("ALIVE" if ps else "DEAD"))

# Analysis
print("\n" + "="*60)
print("CLASSIFICATION BY CALLER (return address offset in libengine)")
print("="*60)

groups = full_stats["groups"]

# Sort by phase then count
idle_groups = {k:v for k,v in groups.items() if v["phase"] == "idle"}
tap_groups = {k:v for k,v in groups.items() if v["phase"] == "tap"}

print("\n--- IDLE PHASE ({} calls) ---".format(idle_stats["total"]))
sorted_idle = sorted(idle_groups.values(), key=lambda x: -x["count"])
for g in sorted_idle[:15]:
    print("  {} @ {} : {} calls, sizes={}".format(g["fn"], g["off"], g["count"], g["sizes"]))

print("\n--- TAP PHASE ({} new calls) ---".format(tap_total))
sorted_tap = sorted(tap_groups.values(), key=lambda x: -x["count"])
for g in sorted_tap[:15]:
    print("  {} @ {} : {} calls, sizes={}".format(g["fn"], g["off"], g["count"], g["sizes"]))

# Callers unique to tap phase (not present in idle)
idle_offsets = set(v["off"] for v in idle_groups.values())
tap_only = [g for g in sorted_tap if g["off"] not in idle_offsets]
print("\n--- CALLERS UNIQUE TO TAP PHASE (not seen in idle) ---")
for g in tap_only[:10]:
    print("  {} @ {} : {} calls, sizes={}".format(g["fn"], g["off"], g["count"], g["sizes"]))

# Check proximity to target functions
print("\n--- CALLS NEAR TARGET FUNCTIONS (KDF/AES/FN1/FN2) ---")
if near_targets:
    for nt in near_targets[:20]:
        print("  {} @ {} (near {}) size={} phase={}".format(
            nt["fn"], nt["call_off"], nt["target_off"], nt["size"], nt["phase"]))
else:
    print("  NONE — no calls from addresses near KDF(0x161788)/AES(0x160208)/FN1(0x17e148)/FN2(0x189774)")

print("="*60)

# Save raw data
with open("/tmp/call_classification.json", "w") as f:
    json.dump({"idle_stats": idle_stats, "tap_total": tap_total, "full_stats": full_stats, "near_targets": near_targets}, f, indent=2, default=str)
print("\nRaw data saved to /tmp/call_classification.json")

session.detach()
