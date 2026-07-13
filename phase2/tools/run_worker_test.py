import frida, time, subprocess, json
CODE = "135790"
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"], capture_output=True)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"], capture_output=True)
print("[*] Waiting 14s...")
time.sleep(14)
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
        t = p.get("t","")
        if t == "WORKER_ENTRY":
            c = p.get("c",{})
            print("  *** WORKER ENTRY at 0x7e148!")
            for k in ["tid","x0","x1","x19","x20","x21","x22","x24"]:
                print("      %s = %s" % (k, c.get(k)))
        elif t == "BL":
            c = p.get("c",{})
            print("  *** BL at %s" % c.get("pc"))
        elif t == "PC_ENTER":
            print("  [pthread] routine=%s callerTid=%s" % (p.get("routine"), p.get("callerTid")))
        elif t == "PC_CREATED":
            print("  [thread created]")
        else:
            print("  [%s]" % t)
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])
script.on("message", on_msg)
script.load()
time.sleep(3)
# Bring app to foreground again
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"], capture_output=True)
time.sleep(2)
# Navigate
print("[*] Profile tap...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "139", "110"], capture_output=True, timeout=5)
time.sleep(3)
print("[*] Entry Key button...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"], capture_output=True, timeout=5)
time.sleep(2)
print("[*] First digit box...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "590"], capture_output=True, timeout=5)
time.sleep(0.5)
print("[*] Enter code...")
for digit in CODE:
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "keyevent", str(7+int(digit))], capture_output=True, timeout=3)
    time.sleep(0.2)
time.sleep(0.5)
print("[*] ARM + ACTIVATE!")
script.exports_sync.arm()
time.sleep(0.3)
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
except:
    pass
with open("/tmp/worker_final.json", "w") as f:
    json.dump(msgs, f, indent=2)
session.detach()
