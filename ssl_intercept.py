#!/usr/bin/env python3
"""ssl_intercept.py - Intercept SSL_write/SSL_read during Activate to capture server protocol."""
import frida, time, subprocess, sys, json, os

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
os.makedirs("/tmp/ssl_capture", exist_ok=True)

subprocess.run(["adb","-s","localhost:5555","shell","am force-stop com.snake"], timeout=5)
time.sleep(3)
subprocess.run(["adb","-s","localhost:5555","shell","am start -n com.snake/com.Entry"], timeout=5)
time.sleep(10)

r = subprocess.run(["adb","-s","localhost:5555","shell","ps -A | grep com.snake$"],
                   capture_output=True, text=True, timeout=5)
pid = int(r.stdout.strip().split()[1])
print("PID: %d" % pid)

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
session = device.attach(pid)

JS = open("/tmp/ssl_agent.js").read()

results = []
def on_msg(m, _):
    if m["type"] == "send":
        results.append(m["payload"])
        p = m["payload"]
        t = p.get("t", "")
        if t == "init":
            print("  SSL_write: %s" % p.get("ssl_write","?"))
            print("  SSL_read: %s" % p.get("ssl_read","?"))
        elif t == "SSL_WRITE":
            print("  [WRITE %d bytes] %s" % (p["len"], p.get("ascii_preview","")[:100]))
        elif t == "SSL_READ":
            print("  [READ %d bytes] %s" % (p["len"], p.get("ascii_preview","")[:100]))
    sys.stdout.flush()

sc = session.create_script(JS)
sc.on("message", on_msg)
sc.load()
time.sleep(8)

print("Navigating...")
subprocess.run(["adb","-s","localhost:5555","shell","input tap 140 97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input tap 360 1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input tap 160 585"], timeout=5)
time.sleep(0.5)
subprocess.run(["adb","-s","localhost:5555","shell","input text " + CODE], timeout=5)
time.sleep(1)

sc.exports_sync.setact()
print("Activate! (code=%s)" % CODE)
subprocess.run(["adb","-s","localhost:5555","shell","input tap 490 745"], timeout=5)
time.sleep(8)

caps = sc.exports_sync.getcaps()
print("\nTotal SSL captures: %d" % len(caps))

writes = [c for c in caps if c["dir"] == "WRITE"]
reads = [c for c in caps if c["dir"] == "READ"]
print("  Writes: %d, Reads: %d" % (len(writes), len(reads)))

if writes:
    print("\n--- FIRST WRITE (request to server) ---")
    print("  Len: %d" % writes[0]["len"])
    print("  ASCII: %s" % writes[0]["ascii"][:300])

if reads:
    print("\n--- FIRST READ (response from server) ---")
    print("  Len: %d" % reads[0]["len"])
    print("  ASCII: %s" % reads[0]["ascii"][:300])

with open("/tmp/ssl_capture/ssl_%s.json" % CODE, "w") as f:
    json.dump({"code": CODE, "captures": caps}, f, indent=2)
print("\nSaved to /tmp/ssl_capture/ssl_%s.json" % CODE)

try: session.detach()
except: pass
