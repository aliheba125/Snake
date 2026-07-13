import frida, subprocess, sys

def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)
r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)
device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
script = session.create_script(open("/tmp/agent_memscan.js").read())
script.load()

# Rescan to get fresh addresses
res = script.exports_sync.scan("Code is Not valid", False)
print("[*] %d hits" % len(res))
seen=set()
for h in res[:6]:
    a = h["addr"]
    if a in seen: continue
    seen.add(a)
    print("\n=== addr %s module=%s ===" % (a, h["module"]))
    d = script.exports_sync.dumparound(a)
    for k in ["hdr16","at64"]:
        b = d.get(k)
        if b:
            hexs = " ".join("%02x"%x for x in b)
            asc = "".join(chr(x) if 32<=x<127 else "." for x in b)
            print("  %s: %s" % (k, hexs))
            print("       |%s|" % asc)
session.detach()
