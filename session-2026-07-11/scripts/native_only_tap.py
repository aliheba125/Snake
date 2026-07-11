"""
Test: Gadget with NATIVE-ONLY hooks (no Java hooks).
Hypothesis: Java hooks cause crash when tapping game tile.
"""
import frida
import time
import subprocess

def adb(cmd):
    subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10)

# Restart app with Gadget
print("[*] Restarting app with Gadget...")
adb("am force-stop com.snake")
time.sleep(1)
adb('setprop wrap.com.snake "LD_PRELOAD=/data/local/tmp/libskia_helper.so"')
adb("am start -n com.snake/com.Entry")
print("[*] Waiting 20s...")
time.sleep(20)

# Check it's alive
focus = subprocess.run(["adb", "shell", "dumpsys window | grep mCurrentFocus"], 
                      capture_output=True, text=True, timeout=5).stdout.strip()
print(f"[*] Focus: {focus}")

ps = subprocess.run(["adb", "shell", "ps -A | grep snake"],
                   capture_output=True, text=True, timeout=5).stdout.strip()
print(f"[*] Processes: {ps}")

if "com.snake/com.Entry" not in focus:
    print("[-] App not in foreground!")
    exit(1)

# Connect to Gadget
subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget")

# NATIVE-ONLY hooks (no Java.perform, no PackageManager hooks)
SCRIPT = r"""
var eng = Process.findModuleByName("libengine.so");
send({t: "info", msg: "libengine=" + (eng ? eng.base : "NOT LOADED")});

if (eng) {
    Interceptor.attach(eng.base.add(0x161788), {
        onEnter: function(a) { 
            send({t: "KDF", s1: (a[1].toUInt32()>>>0).toString(16), s2: a[2].toString()}); 
        }
    });
    Interceptor.attach(eng.base.add(0x160208), {
        onEnter: function(a) { this.o = a[2]; },
        onLeave: function() {
            try {
                var p = this.o.readPointer();
                var e = this.o.add(8).readPointer();
                var l = e.sub(p).toInt32();
                if (l > 0 && l < 65536) {
                    var t = null;
                    try { t = p.readUtf8String(Math.min(l, 512)); } catch(x) {}
                    send({t: "AES_OUT", len: l, txt: t});
                }
            } catch(x) {}
        }
    });
    try { Interceptor.attach(eng.base.add(0x17e148), { onEnter: function() { send({t: "FN", f: "0x17e148"}); }}); } catch(e) {}
    try { Interceptor.attach(eng.base.add(0x189774), { onEnter: function() { send({t: "FN", f: "0x189774"}); }}); } catch(e) {}
    send({t: "info", msg: "Native hooks installed (NO Java hooks)"});
}
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append(p)
        t = p.get("t", "")
        if t == "KDF":
            print(f"\n  *** KDF: seed1=0x{p['s1']} seed2={p['s2']} ***")
        elif t == "AES_OUT":
            txt = p.get("txt", "")
            print(f"  [AES-OUT] len={p['len']} txt={repr(txt[:200]) if txt else ''}")
        elif t == "FN":
            print(f"  [DECRYPT-CALL] {p['f']}")
        elif t == "info":
            print(f"  [i] {p['msg']}")

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(3)

print(f"\n[+] Native-only hooks active. Now tapping 8 Ball Pool (145, 780)...")
adb("input tap 145 780")
time.sleep(5)

# Check if app survived
focus2 = subprocess.run(["adb", "shell", "dumpsys window | grep mCurrentFocus"],
                       capture_output=True, text=True, timeout=5).stdout.strip()
print(f"[*] Focus after tap: {focus2}")

if "com.snake" in focus2:
    print("[+] App survived the tap! Dialog should be showing.")
    # Take screenshot
    adb("screencap -p /data/local/tmp/after_native_tap.png")
    subprocess.run(["adb", "pull", "/data/local/tmp/after_native_tap.png", "/tmp/after_native_tap.png"],
                  capture_output=True, timeout=10)
    
    # Wait for any crypto events
    print("[*] Waiting 30s for events...")
    time.sleep(30)
else:
    print("[-] App crashed after tap (even with native-only hooks)")
    # Check logcat for crash reason
    log = subprocess.run(["adb", "shell", "logcat -d -t 10 | grep -i 'snake\\|FATAL\\|died\\|crash'"],
                        capture_output=True, text=True, timeout=10).stdout
    print(f"  Logcat: {log[:500]}")

print(f"\n{'='*60}")
print(f"Total events: {len(events)}")
crypto = [e for e in events if e.get("t") in ("KDF", "AES_OUT", "FN")]
print(f"Crypto events: {len(crypto)}")
for e in crypto:
    print(f"  {e}")
print("="*60)
session.detach()
