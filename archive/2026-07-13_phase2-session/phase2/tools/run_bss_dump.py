import frida, time, subprocess, json, sys

# BSS: file vaddr 0x828000, size 0x12bb8. Module base at runtime differs.
# BSS offset from module base = 0x828000 (since module maps from 0).
BSS_OFF = 0x828000
BSS_LEN = 0x2000   # first 8KB of bss — where JNI_OnLoad writes fn table (0x48..0x600+)

def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)

# Use already-running app (attach only — no spawn, no hooks => anti-tamper safe)
r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
if not r.stdout.strip():
    print("[*] app not running, starting it...")
    sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
    time.sleep(16)
    r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)

device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
script = session.create_script(open("/tmp/agent_bss_dump.js").read())
script.load()

mi = script.exports_sync.modinfo()
print("[*] libengine base=%s size=%s" % (mi["base"], mi["size"]))

res = script.exports_sync.dumpbss(BSS_OFF, BSS_LEN)
words = res["words"]
eng_ptrs = [w for w in words if w["cls"]=="ENG"]
nonzero = [w for w in words if w["cls"] not in ("zero","err")]
print("[*] read %d words; nonzero=%d; engine-pointers=%d" % (len(words), len(nonzero), len(eng_ptrs)))
print("\n=== ENGINE POINTERS in BSS (candidate native fn table) ===")
for w in eng_ptrs:
    print("  bss%s -> engOff=%s  (val=%s)" % (w["off"], w["engOff"], w["val"]))

with open("/tmp/bss_dump.json","w") as f:
    json.dump(res, f, indent=2)
print("\n[*] saved /tmp/bss_dump.json")
session.detach()
