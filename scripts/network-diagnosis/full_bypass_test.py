"""
Full test with compiled agent:
1. App running with Gadget (already confirmed stable)
2. Connect to Gadget
3. Load compiled agent (Java bridge included)
4. Init native hooks (KDF/AES)
5. Init Java hooks (if successful)
6. Tap on 8 Ball Pool
7. Monitor all events including PackageManager calls
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# App should already be running with Gadget from previous test
# Check current state
focus = adb("dumpsys window | grep mCurrentFocus")
print(f"[*] Current focus: {focus}")

ps = adb("ps -A | grep snake")
print(f"[*] Processes:\n{ps}")

if "com.snake/com.Entry" not in focus:
    print("[*] Need to restart app...")
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/data/local/tmp/libskia_helper.so"')
    adb("am start -n com.snake/com.Entry")
    print("[*] Waiting 20s...")
    time.sleep(20)

subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)

print("[*] Connecting to Gadget...")
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

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
            print(f"\n  *** KDF: seed1={p.get('s1')} seed2={p.get('s2')} ***")
        elif t == "aes_out":
            txt = p.get("txt", "")
            print(f"  [AES-OUT] len={p.get('len')} txt={repr(txt[:200]) if txt else ''}")
        elif t == "aes_in":
            print(f"  [AES-IN] len={p.get('len')}")
        elif t == "call":
            print(f"  [DECRYPT-CALL] {p.get('fn')}")
        elif t == "ilil":
            print(f"  [ILIL] {p.get('arg')}={repr(p.get('ret'))}")
        elif t == "chl":
            print(f"  [CHL] byte[{p.get('inlen')}]={p.get('ret')}")
        elif t == "djp":
            print(f"  [DJP] {p.get('arg')} len={p.get('len')}")
        elif t == "pm":
            print(f"  [PM] {p.get('fn')}({p.get('pkg')})")
        elif t == "exec":
            print(f"  [EXEC] {p.get('cmd','')[:100]}")
        elif t == "ssl_w":
            txt = p.get("txt", "")
            if txt:
                print(f"  [SSL-W] len={p.get('len')} txt={repr(txt[:150])}")
        elif t == "ssl_r":
            txt = p.get("txt", "")
            if txt:
                print(f"  [SSL-R] len={p.get('len')} txt={repr(txt[:150])}")
        elif t == "log":
            print(f"  [LOG] {p.get('m','')}")
    elif m["type"] == "error":
        print(f"  [ERR] {m.get('description','?')[:200]}")

script.on("message", on_msg)
script.load()
time.sleep(2)

print("[*] Initializing hooks...")
try:
    r = script.exports_sync.init()
    print(f"[+] Init: {r}")
except Exception as e:
    print(f"[-] Init error: {e}")

time.sleep(5)
print(f"[+] Events after init: {len(events)}")

# Dismiss any existing dialog first (press Close if visible)
print("\n[*] Pressing Close button if dialog is showing (360, 800)...")
adb("input tap 350 800")
time.sleep(3)

# Now tap on 8 Ball Pool
print("[*] Tapping 8 Ball Pool (145, 780)...")
adb("input tap 145 780")
time.sleep(8)

# Check if app survived
focus2 = adb("dumpsys window | grep mCurrentFocus")
print(f"[*] Focus after tap: {focus2}")

if "com.snake" in focus2:
    print("[+] App alive! Waiting 20s for events...")
    time.sleep(20)
else:
    print("[-] App crashed")

# Final summary
print(f"\n{'='*60}")
print(f"TOTAL EVENTS: {len(events)}")

types = {}
for p, d, t in events:
    tp = p.get("t", "?")
    types[tp] = types.get(tp, 0) + 1
print(f"By type: {json.dumps(types)}")

# Show all non-log events
interesting = [(p,d) for p,d,t in events if p.get("t") not in ("log",)]
if interesting:
    print(f"\n--- All non-log events ({len(interesting)}) ---")
    for p, d in interesting[:30]:
        print(f"  [{p.get('t')}] {json.dumps({k:v for k,v in p.items() if k!='t'}, default=str)[:200]}")
else:
    print("\n  Only log events captured.")

print("="*60)
session.detach()
