"""
1. Connect to Gadget
2. Load compiled agent (Java + native hooks)
3. Initialize hooks
4. Dismiss any dialog
5. Tap on game tile to trigger subscription check
6. Monitor KDF/AES/SSL events
"""
import frida
import time
import subprocess
import json

def adb(cmd):
    r = subprocess.run(["ssh", "-o", "StrictHostKeyChecking=no", "-i", "/root/.ssh/ec2_key", 
                       "ubuntu@54.166.161.235", f"adb shell {cmd}"],
                      capture_output=True, text=True, timeout=10)
    return r.stdout.strip()

print("[*] Connecting to Gadget...")
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

with open("/tmp/compiled_conn.js") as f:
    code = f.read()

script = session.create_script(code)

results = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        results.append((p, d))
        t = p.get("t", "")
        if t == "kdf":
            print("\n  *** KDF: seed1={} seed2={} ***".format(p.get("s1"), p.get("s2")))
        elif t == "aes_out":
            txt = p.get("txt", "")
            print("  [AES-OUT] len={} txt={}".format(p.get("len"), repr(txt[:200]) if txt else ""))
            if d:
                print("    hex={}".format(d.hex()[:64]))
        elif t == "aes_in":
            print("  [AES-IN] len={}".format(p.get("len")))
        elif t == "call":
            print("  [CALL] {}".format(p.get("fn")))
        elif t == "ilil":
            print("  [ILIL] {}={} ".format(p.get("arg"), repr(p.get("ret"))))
        elif t == "chl":
            print("  [CHL] byte[{}]={}".format(p.get("inlen"), p.get("ret")))
        elif t == "ssl_r":
            print("  [SSL-R] len={} txt={}".format(p.get("len"), repr(p.get("txt","")[:200])))
        elif t == "ssl_w":
            print("  [SSL-W] len={} txt={}".format(p.get("len"), repr(p.get("txt","")[:200])))
        elif t == "pm":
            print("  [PM] {}({})".format(p.get("fn"), p.get("pkg")))
        elif t == "exec":
            print("  [EXEC] {}".format(p.get("cmd","")[:100]))
        elif t == "log":
            print("  [LOG]", p.get("m",""))
    elif m["type"] == "error":
        print("  [ERR]", m.get("description","?")[:200])

script.on("message", on_msg)
script.load()
time.sleep(2)

# Init
print("[*] Initializing hooks...")
try:
    r = script.exports_sync.init()
    print("[+] Init:", r)
except Exception as e:
    print("[-] Init:", e)

time.sleep(3)
print("\n[*] Dismissing dialogs and tapping game tile...")
print("  (Screen 720x1280)")

# Dismiss the DeprecatedTargetSdk dialog by pressing BACK
adb("input keyevent KEYCODE_BACK")
time.sleep(2)

# Tap in the center area where game tiles usually are
# Flutter apps: game selection is usually in the main content area
# Try tapping at center-ish positions
taps = [
    (360, 400),   # upper-center
    (360, 600),   # middle
    (360, 800),   # lower-middle
]

for x, y in taps:
    print(f"  Tapping ({x}, {y})...")
    adb(f"input tap {x} {y}")
    time.sleep(3)

# Scroll down and tap more
adb("input swipe 360 800 360 400 500")  # scroll down
time.sleep(2)
adb("input tap 360 600")
time.sleep(3)

print("\n[*] Waiting 20s for events...")
time.sleep(20)

# Summary
print("\n" + "="*60)
kdf = [p for p,_ in results if p.get("t") == "kdf"]
aes = [p for p,_ in results if p.get("t") in ("aes_in", "aes_out")]
ilil = [p for p,_ in results if p.get("t") == "ilil"]
chl = [p for p,_ in results if p.get("t") == "chl"]
ssl = [p for p,_ in results if p.get("t") in ("ssl_r", "ssl_w")]
pm = [p for p,_ in results if p.get("t") == "pm"]
calls = [p for p,_ in results if p.get("t") == "call"]

print("SUMMARY:")
print(f"  KDF seeds: {len(kdf)}")
print(f"  AES ops: {len(aes)}")
print(f"  Native strings (ilil): {len(ilil)}")
print(f"  License checks (chl): {len(chl)}")
print(f"  SSL traffic: {len(ssl)}")
print(f"  PackageManager: {len(pm)}")
print(f"  Decrypt fn calls: {len(calls)}")
print(f"  Total events: {len(results)}")

if kdf:
    print("\n  --- KDF Seeds ---")
    for k in kdf:
        print(f"    seed1={k.get('s1')} seed2={k.get('s2')}")

if ilil:
    print("\n  --- Native Strings ---")
    for s,_ in [(p,d) for p,d in results if p.get("t") == "ilil"][:10]:
        print(f"    [{s.get('arg')}] = {repr(s.get('ret'))}")

if ssl:
    print("\n  --- SSL Traffic ---")
    for s,_ in [(p,d) for p,d in results if p.get("t") in ("ssl_r","ssl_w")][:5]:
        print(f"    [{s.get('t')}] {repr(s.get('txt','')[:100])}")

if pm:
    print("\n  --- PackageManager Queries ---")
    for p2 in pm[:10]:
        print(f"    {p2.get('fn')}({p2.get('pkg')})")

print("="*60)
session.detach()
