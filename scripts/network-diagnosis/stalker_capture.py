"""
Use Stalker (code tracing without modifying original) to detect
calls to KDF (0x161788) and AES (0x160208) in libengine.so.
Stalker doesn't trigger the watchdog (proven: survives 15s+).
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Ensure app is running
ps = adb("ps -A | grep com.snake$")
if not ps:
    print("[*] Starting app...")
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
t0 = time.time()
print("[+] Attached")

SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var ENG_BASE = eng.base;
var KDF_OFF = 0x161788;
var AES_OFF = 0x160208;
var FN1_OFF = 0x17e148;
var FN2_OFF = 0x189774;

var KDF_ADDR = ENG_BASE.add(KDF_OFF);
var AES_ADDR = ENG_BASE.add(AES_OFF);
var FN1_ADDR = ENG_BASE.add(FN1_OFF);
var FN2_ADDR = ENG_BASE.add(FN2_OFF);

send({t: "info", msg: "Targets: KDF=" + KDF_ADDR + " AES=" + AES_ADDR});

// Get all thread IDs
var threads = Process.enumerateThreads();
send({t: "info", msg: threads.length + " threads"});

// Follow ALL threads with Stalker, watching for calls to our targets
var followed = 0;
var targetHits = [];

threads.forEach(function(thread) {
    try {
        Stalker.follow(thread.id, {
            events: { call: true },
            onReceive: function(events) {
                var parsed = Stalker.parse(events, {stringify: false, annotate: false});
                for (var i = 0; i < parsed.length; i++) {
                    var ev = parsed[i];
                    // ev = [type, from, to] for call events
                    if (ev.length >= 3) {
                        var target = ev[2]; // call target
                        if (target) {
                            var off = target.sub(ENG_BASE);
                            var offVal = off.toInt32();
                            if (offVal === KDF_OFF) {
                                send({t: "HIT", fn: "KDF", from: ev[1].toString(), thread: thread.id});
                            } else if (offVal === AES_OFF) {
                                send({t: "HIT", fn: "AES", from: ev[1].toString(), thread: thread.id});
                            } else if (offVal === FN1_OFF) {
                                send({t: "HIT", fn: "FUN_0017e148", from: ev[1].toString(), thread: thread.id});
                            } else if (offVal === FN2_OFF) {
                                send({t: "HIT", fn: "FUN_00189774", from: ev[1].toString(), thread: thread.id});
                            }
                        }
                    }
                }
            }
        });
        followed++;
    } catch(e) {
        // Some threads can't be followed (kernel threads etc)
    }
});

send({t: "info", msg: "Stalker following " + followed + "/" + threads.length + " threads"});
send({t: "ready"});
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append((p, time.time() - t0))
        t = p.get("t", "")
        if t == "HIT":
            print("  *** [{:.1f}s] {} called from {} (thread {}) ***".format(
                time.time()-t0, p.get("fn"), p.get("from"), p.get("thread")))
        elif t == "info":
            print("  [i] " + p.get("msg",""))
        elif t == "ready":
            print("  [+] Stalker active on all threads")
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:200])

session.on("detached", lambda r,c: print("  [DETACH] " + str(r)))
sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

# Verify alive
ps = adb("ps -A | grep com.snake$")
if not ps:
    print("[-] Process died during Stalker setup!")
    exit(1)

print("\n[+] Process alive with Stalker on all threads!")
print("[*] Now tapping 8 Ball Pool to trigger subscription dialog...")

# Close any existing dialog
adb("input tap 360 840")
time.sleep(2)

# Tap game
adb("input tap 145 780")
print("[*] Tapped. Monitoring 30s for KDF/AES calls...")
time.sleep(30)

# Check survival
ps2 = adb("ps -A | grep com.snake$")
print("\nProcess state:", "ALIVE" if ps2 else "DEAD")

# Summary
hits = [(p,t) for p,t in events if isinstance(p, dict) and p.get("t") == "HIT"]
print("\n" + "="*60)
print("RESULTS:")
print("  Process survived: {}".format(bool(ps2)))
print("  Total events: {}".format(len(events)))
print("  Target function hits: {}".format(len(hits)))
for p, t in hits:
    print("    [{:.1f}s] {} from {} (thread {})".format(t, p["fn"], p["from"], p["thread"]))
print("="*60)

# Cleanup
try:
    sc2 = session.create_script("Stalker.flush(); Stalker.garbageCollect();")
    sc2.load()
    time.sleep(1)
except:
    pass

try:
    session.detach()
except:
    pass
