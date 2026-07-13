import frida, time, subprocess, json, sys

def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)

r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
if not r.stdout.strip():
    print("[!] app not running"); sys.exit(1)
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)

device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
with open("/tmp/agent_memscan.js") as f:
    js = f.read()
script = session.create_script(js)
script.load()

print("=== modules ===")
for m in script.exports_sync.modules():
    print("  %s base=%s size=%s" % (m["name"], m["base"], m["size"]))

scans = [("Code is Not valid",False), ("Not valid",False), ("Code is",False),
         ("Code is Not valid",True), ("Not valid",True), ("Invalid",False),
         ("not valid",False), ("Code",True)]
for needle, u16 in scans:
    print("\n=== scan: %r utf16=%s ===" % (needle, u16))
    try:
        res = script.exports_sync.scan(needle, u16)
        if not res:
            print("  (no hits)")
        for h in res:
            print("  %s  module=%s off=%s prot=%s" % (h["addr"], h["module"], h["offset"], h["rangeProt"]))
            print("      ctx=%r" % h.get("context"))
    except Exception as e:
        print("  [err]", e)

session.detach()
