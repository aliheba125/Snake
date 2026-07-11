import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Check app state
focus = adb("dumpsys window | grep mCurrentFocus")
print("Focus:", focus)
if "com.snake" not in focus:
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)
    focus = adb("dumpsys window | grep mCurrentFocus")
    print("After restart:", focus)

subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# Find libc exports using Module object directly
SCRIPT = """
var libc = Process.findModuleByName("libc.so");
var eng = Process.findModuleByName("libengine.so");
send("libc: " + libc.base + " eng: " + eng.base);

var eng_lo = eng.base;
var eng_hi = eng.base.add(eng.size);

// Find clock_gettime export from libc
var cgt = libc.findExportByName("clock_gettime");
var mmap_fn = libc.findExportByName("mmap");
var openat_fn = libc.findExportByName("openat");

send("cgt=" + cgt + " mmap=" + mmap_fn + " openat=" + openat_fn);

if (cgt) {
    Interceptor.attach(cgt, {
        onEnter: function(a) {
            var r = this.returnAddress;
            if (r.compare(eng_lo) >= 0 && r.compare(eng_hi) < 0) {
                send("CGT eng+" + r.sub(eng_lo).toString(16));
            }
        }
    });
}

if (mmap_fn) {
    Interceptor.attach(mmap_fn, {
        onEnter: function(a) {
            this.prot = a[2].toInt32();
            this.caller = this.returnAddress;
        },
        onLeave: function(ret) {
            if (this.prot === 7) {
                var r = this.caller;
                if (r.compare(eng_lo) >= 0 && r.compare(eng_hi) < 0) {
                    send("MMAP_RWX eng+" + r.sub(eng_lo).toString(16) + " @" + ret);
                }
            }
        }
    });
}

if (openat_fn) {
    Interceptor.attach(openat_fn, {
        onEnter: function(a) {
            this.caller = this.returnAddress;
            try { this.path = a[1].readCString(); } catch(e) { this.path = null; }
        },
        onLeave: function(ret) {
            if (this.path) {
                var r = this.caller;
                if (r.compare(eng_lo) >= 0 && r.compare(eng_hi) < 0) {
                    send("OPENAT eng+" + r.sub(eng_lo).toString(16) + " " + this.path);
                }
            }
        }
    });
}

send("libc hooks installed (cgt+mmap+openat)");
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = str(m["payload"])
        events.append(p)
        if "CGT" in p or "MMAP" in p or "OPENAT" in p:
            print("  " + p[:200])
        elif "installed" in p or "libc:" in p or "cgt=" in p:
            print("  [i] " + p[:150])
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

# Close dialog if present
adb("input tap 360 840")
time.sleep(2)

# Tap 8 Ball Pool
print("\n[*] Tapping 8 Ball Pool...")
adb("input tap 145 780")
time.sleep(8)

focus2 = adb("dumpsys window | grep mCurrentFocus")
alive = "com.snake" in focus2
print(f"\nFocus: {focus2}")
print(f"SURVIVED: {alive}")

if alive:
    interesting = [e for e in events if "CGT" in e or "MMAP" in e or "OPENAT" in e]
    print(f"\n[+] Events from libengine via libc: {len(interesting)}")
    for e in interesting[:30]:
        print(f"  {e}")
    
    time.sleep(10)
    interesting2 = [e for e in events if "CGT" in e or "MMAP" in e or "OPENAT" in e]
    print(f"\nAfter 10s more: {len(interesting2)} events")
    for e in interesting2[len(interesting):len(interesting)+20]:
        print(f"  {e}")
else:
    print("[-] Crashed")

session.detach()
