"""
Test: Compiled agent with minimal Java hooks (NO PackageManager, NO exec).
Goal: determine if app survives tap with only Native.ilil/chl/djp hooked.
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Fresh start with Gadget
print("[1] Restarting app with Gadget...")
adb("am force-stop com.snake")
time.sleep(1)
adb('setprop wrap.com.snake "LD_PRELOAD=/data/local/tmp/libskia_helper.so"')
adb("am start -n com.snake/com.Entry")
print("[2] Waiting 20s for full startup...")
time.sleep(20)

# Verify app is showing
focus = adb("dumpsys window | grep mCurrentFocus")
print(f"[3] Focus: {focus}")
if "com.snake" not in focus:
    print("[-] App not in foreground. Aborting.")
    exit(1)

# Connect to Gadget
subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[4] Attached to Gadget")

# Load minimal compiled agent
with open("/tmp/compiled_minimal.js") as f:
    code = f.read()

script = session.create_script(code)

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append((p, d, time.time()))
        t = p.get("t", "")
        if t == "kdf":
            print(f"\n  *** KDF: seed1={p['s1']} seed2={p['s2']} ***")
        elif t == "aes_out":
            print(f"  [AES-OUT] len={p.get('len')} txt={repr(p.get('txt','')[:200])}")
        elif t == "aes_in":
            print(f"  [AES-IN] len={p.get('len')} hex={p.get('hex','')[:32]}")
        elif t == "call":
            print(f"  [CALL] {p.get('fn')}")
        elif t == "ilil":
            print(f"  [ILIL] {p.get('arg')} = {repr(p.get('ret'))}")
        elif t == "chl":
            print(f"  [CHL] len={p.get('inlen')} ret={p.get('ret')}")
        elif t == "djp":
            print(f"  [DJP] {p.get('arg')} len={p.get('len')}")
        elif t == "log":
            print(f"  [LOG] {p.get('m')}")
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','?')[:200]}")

script.on("message", on_msg)
script.load()
time.sleep(2)

# Initialize
print("[5] Initializing minimal hooks...")
try:
    r = script.exports_sync.init()
    print(f"[+] Init: {r}")
except Exception as e:
    print(f"[-] Init error: {e}")

time.sleep(3)

# Take screenshot before tap
adb("screencap -p /data/local/tmp/before_tap.png")

# Tap on 8 Ball Pool
print(f"\n[6] Tapping 8 Ball Pool (145, 780)...")
adb("input tap 145 780")
time.sleep(6)

# Check survival
focus2 = adb("dumpsys window | grep mCurrentFocus")
print(f"[7] Focus after tap: {focus2}")

alive = "com.snake" in focus2
if alive:
    print("[+] APP SURVIVED THE TAP!")
    # Take screenshot after tap
    adb("screencap -p /data/local/tmp/after_tap_minimal.png")
    subprocess.run(["adb", "pull", "/data/local/tmp/after_tap_minimal.png", "/tmp/after_tap_minimal.png"],
                  capture_output=True, timeout=10)
    print("[8] Monitoring events for 30s...")
    time.sleep(30)
else:
    print("[-] APP CRASHED.")
    # Get crash log
    log = subprocess.run(["adb", "shell", "logcat -d -t 20 | grep -iE 'FATAL|signal|died|com.snake'"],
                        capture_output=True, text=True, timeout=10).stdout
    print(f"  Crash log: {log[:500]}")

# Summary
print(f"\n{'='*60}")
print(f"APP SURVIVED: {alive}")
print(f"TOTAL EVENTS: {len(events)}")

types = {}
for p, d, t in events:
    tp = p.get("t", "?")
    types[tp] = types.get(tp, 0) + 1
print(f"Event types: {json.dumps(types)}")

# Show crypto events
crypto = [(p,d) for p,d,t in events if p.get("t") in ("kdf","aes_in","aes_out","call","ilil","chl","djp")]
if crypto:
    print(f"\n--- Crypto/Native Events ({len(crypto)}) ---")
    for p, d in crypto[:20]:
        print(f"  [{p.get('t')}] {json.dumps({k:v for k,v in p.items() if k!='t'}, default=str)[:200]}")
else:
    print("\n  No crypto/native events captured during this session.")

print(f"{'='*60}")
session.detach()
