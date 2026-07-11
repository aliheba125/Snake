"""
Verified approach:
1. Connect to Gadget
2. Load compiled agent (with Java bridge) 
3. Install native KDF/AES hooks
4. Tap precisely on "8 Ball Pool" tile (x=145, y=780 from screenshot)
5. Take screenshot after tap to see what happened
6. Monitor events for 30s
"""
import frida
import time
import subprocess
import json

def adb(cmd):
    r = subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10)
    return r.stdout.strip()

print("[*] Connecting to Gadget...")
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget")

# Load compiled agent
with open("/tmp/compiled_conn.js") as f:
    code = f.read()

script = session.create_script(code)

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append((p, d, time.time()))
        t = p.get("t", "")
        if t == "kdf":
            print("\n  *** KDF: seed1={} seed2={} ***".format(p.get("s1"), p.get("s2")))
        elif t == "aes_out":
            txt = p.get("txt", "")
            print("  [AES-OUT] len={} txt={}".format(p.get("len"), repr(txt[:200]) if txt else ""))
            if d:
                print("    hex={}".format(d.hex()[:64]))
        elif t == "aes_in":
            print("  [AES-IN] len={} hex={}".format(p.get("len"), p.get("hex","")[:32]))
        elif t == "call":
            print("  [DECRYPT-FN] {}".format(p.get("fn")))
        elif t == "ilil":
            print("  [ILIL] {}={}".format(p.get("arg"), repr(p.get("ret"))))
        elif t == "chl":
            print("  [CHL] len={} ret={}".format(p.get("inlen"), p.get("ret")))
        elif t == "pm":
            print("  [PM] {}({})".format(p.get("fn"), p.get("pkg")))
        elif t == "ssl_w":
            print("  [SSL-W] len={}".format(p.get("len")))
        elif t == "ssl_r":
            print("  [SSL-R] len={}".format(p.get("len")))
        elif t == "log":
            print("  [LOG] {}".format(p.get("m","")))
    elif m["type"] == "error":
        print("  [ERR] {}".format(m.get("description","?")[:200]))

script.on("message", on_msg)
script.load()
time.sleep(2)

# Initialize hooks
print("[*] Initializing hooks...")
try:
    result = script.exports_sync.init()
    print("[+] Init:", result)
except Exception as e:
    print("[-] Init error:", e)

time.sleep(3)
print("[+] Hooks installed. Events so far:", len(events))

# Now tap precisely on "8 Ball Pool" tile
# From screenshot: 8 Ball Pool icon center is approximately (145, 780)
print("\n[*] Tapping on '8 Ball Pool' at (145, 780)...")
adb("input tap 145 780")

# Wait for reaction
print("[*] Waiting 5s for app to respond...")
time.sleep(5)

# Take screenshot to see what happened
print("[*] Taking screenshot after tap...")
adb("screencap -p /data/local/tmp/after_tap.png")
subprocess.run(["adb", "pull", "/data/local/tmp/after_tap.png", "/tmp/after_tap.png"], 
               capture_output=True, timeout=10)

# Check what changed
focus = adb("dumpsys window | grep mCurrentFocus")
print("  Focus after tap:", focus)

# If a dialog appeared, try tapping "OK" or the game-launch button
# Wait more and tap again if needed
time.sleep(3)
print("[*] Tapping center of screen (in case dialog appeared)...")
adb("input tap 360 640")
time.sleep(5)

# Take another screenshot
adb("screencap -p /data/local/tmp/after_tap2.png")
subprocess.run(["adb", "pull", "/data/local/tmp/after_tap2.png", "/tmp/after_tap2.png"],
               capture_output=True, timeout=10)

print("\n[*] Monitoring for 20 more seconds...")
time.sleep(20)

# Final summary
print("\n" + "="*60)
print("EVENTS CAPTURED: {} total".format(len(events)))
print("="*60)

types = {}
for p, d, t in events:
    tp = p.get("t", "unknown")
    types[tp] = types.get(tp, 0) + 1

print("By type:", json.dumps(types, indent=2))

# Show interesting events
interesting = [(p,d) for p,d,t in events if p.get("t") in ("kdf","aes_in","aes_out","call","ilil","chl","pm","ssl_w","ssl_r")]
if interesting:
    print("\n--- Interesting Events ---")
    for p, d in interesting[:20]:
        print("  [{}] {}".format(p.get("t"), {k:v for k,v in p.items() if k != "t"}))
else:
    print("\n  No crypto/native/PM events captured.")
    print("  Only log events:", [p.get("m","") for p,_,_ in events if p.get("t") == "log"])

print("="*60)
session.detach()
