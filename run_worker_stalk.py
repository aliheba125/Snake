import frida, time, subprocess, json, sys

CODE = "135790"

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
with open("/tmp/agent_worker_stalk.js") as f:
    js = f.read()
script = session.create_script(js)

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t","")
        if t == "ready":
            print("  [ready] engBase=%s candCount=%s" % (p.get("engBase"), p.get("candCount")))
        elif t == "HOOKS_INSTALLED":
            print("  [HOOKS INSTALLED %s: %s]" % (p.get("count"), p.get("installed")))
        elif t == "attach_err":
            print("  [ATTACH_ERR %s %s: %s]" % (p.get("tag"), p.get("off"), p.get("e")))
        elif t == "PC_ENTER":
            print("  [pthread routine=%s callerTid=%s]" % (p.get("routine"), p.get("callerTid")))
        elif t == "HIT":
            r = p.get("rec",{})
            print("  ->>> HIT %s (%s) tid=%s x0=%s x0_off=%s x19=%s x20=%s" %
                  (r.get("tag"), r.get("off"), r.get("tid"), r.get("x0"), r.get("x0_eng_off"), r.get("x19"), r.get("x20")))
        elif t == "RET":
            r = p.get("rec",{})
            print("  <<<- RET  %s tid=%s w0=%s" % (r.get("tag"), r.get("tid"), r.get("w0")))
        else:
            print("  [%s] %s" % (t, str(p)[:200]))
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:200])

script.on("message", on_msg)
script.load()
time.sleep(2)

sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
time.sleep(2)
print("[*] Profile swipe...")
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

print("[*] ARM (install candidate hooks)...")
try:
    print("  arm returned:", script.exports_sync.arm())
except Exception as e:
    print("[!] arm failed:", e)
    sys.exit(1)

time.sleep(0.3)
print("[*] Activate button...")
sh("adb","-s","localhost:5555","shell","input","tap","495","745")
print("[*] Waiting 12s for worker...")
time.sleep(12)

try:
    res = script.exports_sync.getresults()
    print("\n=== RESULTS ===")
    print("  total hits: %d" % res.get("count", 0))
    seq = res.get("hits", [])
    for i, h in enumerate(seq):
        print("  [%02d] %s" % (i, json.dumps(h)))
    with open("/tmp/worker_stalk_result.json","w") as f:
        json.dump({"msgs": msgs, "results": res}, f, indent=2)
    print("\n[*] Saved to /tmp/worker_stalk_result.json")
except Exception as e:
    print("[!] getresults failed:", e)

session.detach()
