import frida, time, subprocess, json

# Connect via Gadget (UI already prepared with code entered)
print("[*] Connecting to Gadget...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] PID:", pid)

session = device.attach(pid)
with open("/tmp/agent_decisive.js") as f:
    js = f.read()

script = session.create_script(js)
msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t", "")
        if t == "CAPTURED":
            r = p.get("result", {})
            print("\n  *** CAPTURED at 0x7e148! ***")
            print("  tid=%s isWorker=%s" % (r.get("tid"), r.get("isWorkerThread")))
            print("  x0=%s x1=%s" % (r.get("x0"), r.get("x1")))
            print("  x19=%s x20=%s x21=%s" % (r.get("x19"), r.get("x20"), r.get("x21")))
            print("  x30=%s" % r.get("x30"))
        elif t == "PTHREAD_FOUND":
            print("  [pthread] callerTid=%s" % p.get("callerTid"))
        elif t == "PTHREAD_SUCCESS":
            print("  [thread OK]")
        elif t == "FOLLOWING":
            print("  [following %d threads: %s]" % (p.get("count",0), p.get("tids")))
        else:
            print("  [%s]" % t)
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])

script.on("message", on_msg)
script.load()
time.sleep(1)
print("[*] Arming...")
script.exports_sync.arm()
time.sleep(0.3)
print("[*] TAP ACTIVATE!")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"],
               capture_output=True, timeout=5)
print("[*] Waiting 6s...")
time.sleep(6)

print("\n[*] %d messages" % len(msgs))
try:
    result = script.exports_sync.getresult()
    if result:
        print("\n=== RESULT ===")
        print(json.dumps(result, indent=2))
    else:
        print("[!] No result")
except:
    pass
with open("/tmp/decisive_final.json", "w") as f:
    json.dump(msgs, f, indent=2)
session.detach()
print("[*] Done.")
