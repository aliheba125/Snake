"""
Test: Hook libc functions (not libengine directly) to capture calls
FROM libengine without triggering its code integrity check.
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# App should be running with Gadget from /system/lib64
focus = adb("dumpsys window | grep mCurrentFocus")
print("Focus:", focus)

if "com.snake" not in focus:
    print("Restarting app...")
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)

subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# Hook libc's mmap and clock_gettime - these are called BY libengine
# but the hook is ON libc (not modifying libengine code)
SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var eng_start = eng.base;
var eng_end = eng.base.add(eng.size);
send("eng: " + eng_start + " - " + eng_end);

// Hook clock_gettime in libc
var cgt = Module.findExportByName("libc.so", "clock_gettime");
if (cgt) {
    Interceptor.attach(cgt, {
        onEnter: function(args) {
            var ret = this.returnAddress;
            if (ret.compare(eng_start) >= 0 && ret.compare(eng_end) < 0) {
                send("CGT from eng+" + ret.sub(eng_start).toString(16));
            }
        }
    });
    send("clock_gettime hooked on libc");
}

// Hook mmap in libc
var mmap_fn = Module.findExportByName("libc.so", "mmap");
if (mmap_fn) {
    Interceptor.attach(mmap_fn, {
        onEnter: function(args) {
            this.prot = args[2].toInt32();
            this.ret = this.returnAddress;
        },
        onLeave: function(retval) {
            if (this.prot === 7) { // RWX
                var ret = this.ret;
                if (ret.compare(eng_start) >= 0 && ret.compare(eng_end) < 0) {
                    send("MMAP_RWX from eng+" + ret.sub(eng_start).toString(16) + " addr=" + retval);
                }
            }
        }
    });
    send("mmap hooked on libc");
}

// Hook open in libc (to see what files libengine reads)
var open_fn = Module.findExportByName("libc.so", "open");
if (open_fn) {
    Interceptor.attach(open_fn, {
        onEnter: function(args) {
            var path = args[0].readCString();
            var ret = this.returnAddress;
            if (ret.compare(eng_start) >= 0 && ret.compare(eng_end) < 0) {
                send("OPEN from eng: " + path);
            }
        }
    });
    send("open hooked on libc");
}

send("All libc hooks installed (libengine code NOT modified)");
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        payload = str(m["payload"])
        if "CGT" in payload or "MMAP" in payload or "OPEN" in payload:
            print("  " + payload[:200])
        elif "hooked" in payload or "eng:" in payload or "installed" in payload:
            print("  [i] " + payload[:150])
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

# Close any existing dialog
print("\n[*] Closing dialog if present...")
adb("input tap 360 840")
time.sleep(2)

# Tap 8 Ball Pool
print("[*] Tapping 8 Ball Pool (with libc hooks, not libengine hooks)...")
adb("input tap 145 780")
time.sleep(6)

focus2 = adb("dumpsys window | grep mCurrentFocus")
alive = "com.snake" in focus2
print(f"\nFocus: {focus2}")
print(f"APP SURVIVED: {alive}")

if alive:
    print("[+] SUCCESS! libc hooks do NOT trigger the integrity check!")
    print(f"Events captured: {len(events)}")
    interesting = [e for e in events if "CGT" in str(e) or "MMAP" in str(e) or "OPEN" in str(e)]
    print(f"Interesting (from libengine): {len(interesting)}")
    for e in interesting[:20]:
        print(f"  {e}")
    
    # Wait more to see ongoing activity
    print("\n[*] Waiting 15s for more events...")
    time.sleep(15)
    interesting2 = [e for e in events if "CGT" in str(e) or "MMAP" in str(e) or "OPEN" in str(e)]
    print(f"Total interesting events: {len(interesting2)}")
else:
    print("[-] App crashed even with libc-only hooks")

session.detach()
