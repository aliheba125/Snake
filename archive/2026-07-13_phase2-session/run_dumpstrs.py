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
script = session.create_script(open("/tmp/agent_strmap.js").read())
script.load()

# Dump readable strings from the 0x6ff70000 arena (Dart heap likely) that relate to activation
print("=== strings in 0x6ff70000 arena containing activation keywords ===")
for base in ["0x6ff70000","0x6ff90000","0x6ffb0000"]:
    for sub in ["valid","activate","Activate","BANNED","balance","Code","Congratulation","subscription","Tier"]:
        try:
            res = script.exports_sync.dumprange(base, 0x20000, sub)
            for x in res[:6]:
                print("  [%s+%s] (%s) %r" % (base, x["off"], sub, x["s"]))
        except Exception as e:
            pass
session.detach()
