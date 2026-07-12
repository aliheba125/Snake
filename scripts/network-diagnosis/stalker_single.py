"""
Test: Stalker with transform on fewer threads.
Goal: isolate whether transform+callout itself causes the death,
or if it's the overhead on 40 threads + activity.

Trial 1: transform on 40 threads, NO tap (just wait)
Trial 2: transform on main thread only, then tap
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

def restart_app():
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)
    subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

def connect_gadget():
    mgr = frida.get_device_manager()
    device = mgr.add_remote_device("127.0.0.1:27052")
    return device.attach("Gadget")

# ============================================================
# Trial 1: Stalker transform on ALL threads, NO tap
# ============================================================
print("="*60)
print("TRIAL 1: Stalker transform on all threads, NO tap")
print("="*60)

restart_app()
session = connect_gadget()
t0 = time.time()

SCRIPT_ALL = """
var eng = Process.findModuleByName("libengine.so");
var threads = Process.enumerateThreads();
var followed = 0;
for (var i = 0; i < threads.length; i++) {
    try {
        Stalker.follow(threads[i].id, {
            transform: function(iterator) {
                var instruction;
                while ((instruction = iterator.next()) !== null) {
                    if (instruction.address.equals(eng.base.add(0x161788))) {
                        iterator.putCallout(function(ctx) { send("KDF_HIT"); });
                    }
                    iterator.keep();
                }
            }
        });
        followed++;
    } catch(e) {}
}
send("followed " + followed + " threads");
"""

alive_at = []
session.on("detached", lambda r,c: print("  [DETACH {:.1f}s] {}".format(time.time()-t0, r)))
sc = session.create_script(SCRIPT_ALL)
sc.on("message", lambda m,d: print("  " + str(m.get("payload", m.get("description","")))))
sc.load()

for i in range(15):
    time.sleep(1)
    ps = adb("ps -A | grep com.snake$")
    if not ps:
        print("  DIED at t+{:.1f}s (NO TAP)".format(time.time()-t0))
        break
    alive_at.append(time.time()-t0)

if alive_at and alive_at[-1] > 14:
    print("  SURVIVED 15s with transform on all threads (no tap)")
else:
    print("  Died at:", alive_at[-1] if alive_at else "immediately")

try:
    session.detach()
except:
    pass
time.sleep(3)

# ============================================================
# Trial 2: Stalker transform on MAIN thread only, then tap
# ============================================================
print("\n" + "="*60)
print("TRIAL 2: Stalker transform on MAIN thread only, then tap")
print("="*60)

restart_app()
session2 = connect_gadget()
t0 = time.time()

SCRIPT_MAIN = """
var eng = Process.findModuleByName("libengine.so");
var mainTid = Process.getCurrentThreadId();
send("Main thread: " + mainTid);

Stalker.follow(mainTid, {
    transform: function(iterator) {
        var instruction;
        while ((instruction = iterator.next()) !== null) {
            if (instruction.address.equals(eng.base.add(0x161788))) {
                iterator.putCallout(function(ctx) { send("KDF on main thread!"); });
            }
            iterator.keep();
        }
    }
});
send("Stalker on main thread only");
"""

session2.on("detached", lambda r,c: print("  [DETACH {:.1f}s] {}".format(time.time()-t0, r)))
sc2 = session2.create_script(SCRIPT_MAIN)
sc2.on("message", lambda m,d: print("  " + str(m.get("payload", m.get("description","")))))
sc2.load()

time.sleep(5)
ps = adb("ps -A | grep com.snake$")
if not ps:
    print("  DIED before tap!")
else:
    print("  Alive at t+{:.1f}s. Tapping...".format(time.time()-t0))
    adb("input tap 145 780")
    time.sleep(8)
    ps2 = adb("ps -A | grep com.snake$")
    print("  After tap: {}".format("ALIVE" if ps2 else "DEAD"))
    if ps2:
        print("  Waiting 15s more...")
        time.sleep(15)
        ps3 = adb("ps -A | grep com.snake$")
        print("  After 15s: {}".format("ALIVE" if ps3 else "DEAD"))

try:
    session2.detach()
except:
    pass
