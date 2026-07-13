import frida, time, subprocess, json, sys

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"

def sh(*a):
    return subprocess.run(list(a), capture_output=True, text=True)

sh("adb","-s","localhost:5555","shell","am","force-stop","com.snake")
time.sleep(1.5)
sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
print("[*] Waiting 14s for app load...")
time.sleep(14)
r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)

device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
with open("/tmp/agent_net_capture.js") as f:
    js = f.read()
script = session.create_script(js)

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]; msgs.append(p); t = p.get("t","")
        if t == "ready":
            print("  [ready getaddrinfo=%s connect=%s]" % (p.get("getaddrinfo"), p.get("connect")))
        elif t == "DNS":
            r = p.get("rec",{})
            print("  DNS      host=%-40s armed=%s tid=%s" % (r.get("host"), r.get("armed"), r.get("tid")))
        elif t == "CONNECT":
            r = p.get("rec",{})
            print("  CONNECT  addr=%-30s armed=%s tid=%s" % (r.get("addr"), r.get("armed"), r.get("tid")))
        elif t == "err":
            print("  [err %s]" % p.get("e"))
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:200])
script.on("message", on_msg)
script.load()
time.sleep(2)

sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
time.sleep(2)
print("[*] Navigate: profile...")
sh("adb","-s","localhost:5555","shell","input","swipe","140","100","141","101","100")
time.sleep(3)
print("[*] Entry Key button...")
sh("adb","-s","localhost:5555","shell","input","tap","360","1117")
time.sleep(2)
print("[*] Input box tap...")
sh("adb","-s","localhost:5555","shell","input","tap","165","590")
time.sleep(0.5)
print("[*] Enter code %s..." % CODE)
for digit in CODE:
    sh("adb","-s","localhost:5555","shell","input","keyevent",str(7+int(digit)))
    time.sleep(0.15)
time.sleep(0.4)
print("[*] ARM (mark activation moment)...")
try: script.exports_sync.arm()
except Exception as e: print("[!] arm failed:", e)
time.sleep(0.3)
print("[*] Activate button!")
sh("adb","-s","localhost:5555","shell","input","tap","495","745")
print("[*] Waiting 12s for network...")
time.sleep(12)

try:
    hits = script.exports_sync.gethits()
    print("\n=== ALL NETWORK HITS (%d) ===" % len(hits))
    for h in hits:
        print("  %s" % json.dumps(h))
    armed_hits = [h for h in hits if h.get("armed")]
    print("\n=== HITS AFTER ACTIVATE PRESS (%d) ===" % len(armed_hits))
    for h in armed_hits:
        print("  %s" % json.dumps(h))
    with open("/tmp/net_capture_result.json","w") as f:
        json.dump({"msgs":msgs,"hits":hits}, f, indent=2)
    print("\n[*] Saved /tmp/net_capture_result.json")
except Exception as e:
    print("[!] gethits failed:", e)
session.detach()
