import frida, time, subprocess, json

r = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"], capture_output=True, text=True)
pid = int(r.stdout.strip().split()[0])
print("[*] PID:", pid)

device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)

with open("/tmp/agent_worker_context.js") as f:
    js = f.read()

script = session.create_script(js)
msgs = []

def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t", "")
        if t == "WORKER_ENTRY":
            c = p.get("c", {})
            print("  *** WORKER ENTRY at 0x7e148!")
            for k in ["tid", "x0", "x1", "x19", "x20", "x21", "x22", "x24"]:
                print("      %s = %s" % (k, c.get(k)))
        elif t == "BL":
            c = p.get("c", {})
            print("  *** BL at %s x0=%s" % (c.get("pc"), c.get("x0")))
        elif t == "PC_ENTER":
            print("  [pthread] routine=%s callerTid=%s arg=%s" % (p.get("routine"), p.get("callerTid"), p.get("arg")))
        elif t == "PC_CREATED":
            print("  [thread created]")
        else:
            print("  [%s]" % t)
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description", ""))[:150])

script.on("message", on_msg)
script.load()
time.sleep(2)

print("[*] ARM!")
script.exports_sync.arm()
time.sleep(0.3)

print("[*] TAP ACTIVATE!")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"], capture_output=True, timeout=5)

print("[*] Waiting 8s...")
time.sleep(8)

print("\n[*] %d messages" % len(msgs))
pthreads = [m for m in msgs if m.get("t") == "PC_ENTER"]
workers = [m for m in msgs if m.get("t") == "WORKER_ENTRY"]
print("  pthread_create: %d" % len(pthreads))
print("  worker_entry: %d" % len(workers))

try:
    caps = script.exports_sync.getcaps()
    if caps:
        print("\n=== CAPTURES (%d) ===" % len(caps))
        for c in caps:
            print("  %s" % json.dumps(c))
except Exception as e:
    print("RPC: %s" % e)

with open("/tmp/worker_final.json", "w") as f:
    json.dump(msgs, f, indent=2)
session.detach()
print("[*] Done.")
