import frida, time, subprocess, json

def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)
r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
if not r.stdout.strip():
    sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"); time.sleep(16)
    r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)

device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
script = session.create_script(open("/tmp/agent_jnitable.js").read())
script.load()

# The JNINativeMethod array is at bss 0x828ee8, entries of 3 pointers each.
res = script.exports_sync.readtable(0x828ee8, 12)  # 12 entries
print("[*] libengine base=%s" % res["base"])
print("\n=== JNI NATIVE METHOD TABLE (name -> engine fn offset) ===")
for e in res["entries"]:
    print("  %-14s sig=%-40s -> fn engOff=%s" % (e.get("name"), e.get("sig"), e.get("fnOff")))
with open("/tmp/jnitable.json","w") as f: json.dump(res,f,indent=2)
print("\n[*] saved /tmp/jnitable.json")
session.detach()
