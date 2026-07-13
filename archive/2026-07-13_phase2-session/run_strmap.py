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

for needle in ["Code is Not valid","Not valid","Invalid","valid key","Enter your code"]:
    print("\n=== scan %r ===" % needle)
    res = script.exports_sync.scanstr(needle)
    if not res: print("  (none)")
    for h in res[:12]:
        print("  %s mod=%s prot=%s ctx=%r" % (h["addr"], h["module"], h["prot"], h.get("ctx")))
with open("/tmp/strmap.json","w") as f: json.dump({"note":"scan done"},f)
session.detach()
