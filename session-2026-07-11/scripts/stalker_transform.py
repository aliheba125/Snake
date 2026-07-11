"""
Fix Stalker to produce events using 'transform' + 'callout' callbacks.
transform/callout run inline in the instrumented code copy — no parsing needed.
Also: determine which thread kills the process when Interceptor is used.
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Ensure app running
ps = adb("ps -A | grep com.snake$")
if not ps:
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

# Use Stalker with 'transform' callback — this inserts callouts
# at specific addresses without modifying original code
SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var ENG_BASE = eng.base;
var ENG_END = eng.base.add(eng.size);
var KDF_OFF = 0x161788;
var AES_OFF = 0x160208;
var FN1_OFF = 0x17e148;
var FN2_OFF = 0x189774;

send({t: "info", msg: "eng " + ENG_BASE + "-" + ENG_END});

// Get all threads
var threads = Process.enumerateThreads();
send({t: "info", msg: threads.length + " threads"});

// Method: Use Stalker.follow with 'transform' callback
// The transform callback is called for each basic block.
// We insert a 'callout' at the start of blocks containing our target addresses.

var hitCount = 0;

function followThread(tid) {
    Stalker.follow(tid, {
        transform: function(iterator) {
            var instruction;
            while ((instruction = iterator.next()) !== null) {
                var addr = instruction.address;
                
                // Check if this instruction is at one of our target function entries
                if (addr.equals(ENG_BASE.add(KDF_OFF))) {
                    iterator.putCallout(function(context) {
                        // context has all registers
                        var x1 = context.x1.toUInt32() >>> 0;
                        var x2 = context.x2;
                        send({t: "KDF", s1: "0x" + x1.toString(16), s2: x2.toString(), tid: Process.getCurrentThreadId()});
                    });
                } else if (addr.equals(ENG_BASE.add(AES_OFF))) {
                    iterator.putCallout(function(context) {
                        send({t: "AES", tid: Process.getCurrentThreadId()});
                    });
                } else if (addr.equals(ENG_BASE.add(FN1_OFF))) {
                    iterator.putCallout(function(context) {
                        send({t: "FN1", tid: Process.getCurrentThreadId()});
                    });
                } else if (addr.equals(ENG_BASE.add(FN2_OFF))) {
                    iterator.putCallout(function(context) {
                        send({t: "FN2", tid: Process.getCurrentThreadId()});
                    });
                }
                
                iterator.keep();
            }
        }
    });
}

// Follow all threads
var followed = 0;
for (var i = 0; i < threads.length; i++) {
    try {
        followThread(threads[i].id);
        followed++;
    } catch(e) {}
}

send({t: "info", msg: "Stalker following " + followed + " threads with transform callbacks"});
send({t: "ready"});
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append((p, time.time() - t0))
        t = p.get("t", "")
        if t == "KDF":
            print("  *** [{:.1f}s] KDF seed1={} seed2={} thread={} ***".format(
                time.time()-t0, p.get("s1"), p.get("s2"), p.get("tid")))
        elif t == "AES":
            print("  *** [{:.1f}s] AES called thread={} ***".format(time.time()-t0, p.get("tid")))
        elif t in ("FN1", "FN2"):
            print("  *** [{:.1f}s] {} thread={} ***".format(time.time()-t0, t, p.get("tid")))
        elif t == "info":
            print("  [i] " + p.get("msg",""))
        elif t == "ready":
            print("  [+] Stalker with transform ready!")
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:200])

session.on("detached", lambda r,c: print("  [DETACH {:.1f}s] {}".format(time.time()-t0, r)))
sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

# Wait and verify survival
time.sleep(5)
ps = adb("ps -A | grep com.snake$")
if not ps:
    print("[-] Process died during Stalker setup!")
    print("  Events:", len(events))
    exit(1)

print("\n[+] Process alive at t+{:.1f}s".format(time.time()-t0))
print("[*] Tapping 8 Ball Pool (triggers subscription check in Dart)...")

# Close dialog if present
adb("input tap 360 840")
time.sleep(2)

# Tap game
adb("input tap 145 780")
time.sleep(5)

# Check survival after tap
ps2 = adb("ps -A | grep com.snake$")
print("  Process after tap: {}".format("ALIVE" if ps2 else "DEAD"))

if ps2:
    print("[*] Waiting 30s for potential KDF/AES events...")
    time.sleep(30)

# Final
print("\n" + "="*60)
hits = [(p,t) for p,t in events if p.get("t") in ("KDF","AES","FN1","FN2")]
print("TARGET HITS: {}".format(len(hits)))
for p, t in hits:
    print("  [{:.1f}s] {} {}".format(t, p.get("t"), json.dumps({k:v for k,v in p.items() if k!="t"})))

print("\nProcess state: {}".format("ALIVE" if adb("ps -A | grep com.snake$") else "DEAD"))
print("Total events: {}".format(len(events)))
print("="*60)

try:
    session.detach()
except:
    pass
