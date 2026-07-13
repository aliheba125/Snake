import frida, time, subprocess, json

# Step 1: App should already be running (launched with Gadget via LD_PRELOAD)
# Connect via Gadget port 27052
print("[*] Connecting to Gadget (port 27052)...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] Gadget PID:", pid)

session = device.attach(pid)
print("[*] Attached via Gadget")

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
            print("\n  ============================================")
            print("  === FN_0x7e148 ENTRY CAPTURED! ===")
            print("  ============================================")
            print("  tid = %s (isWorker = %s)" % (r.get("tid"), r.get("isWorkerThread")))
            print("  x0  = %s" % r.get("x0"))
            print("  x1  = %s" % r.get("x1"))
            print("  x2  = %s" % r.get("x2"))
            print("  x3  = %s" % r.get("x3"))
            print("  x19 = %s" % r.get("x19"))
            print("  x20 = %s" % r.get("x20"))
            print("  x21 = %s" % r.get("x21"))
            print("  x22 = %s" % r.get("x22"))
            print("  x24 = %s" % r.get("x24"))
            print("  x30 = %s (LR)" % r.get("x30"))
            if r.get("x30_eng"):
                print("  x30_eng_offset = %s" % r.get("x30_eng"))
            print("  sp  = %s" % r.get("sp"))
        elif t == "PTHREAD_FOUND":
            print("  [pthread_create] routine=%s callerTid=%s" % (p.get("routine"), p.get("callerTid")))
        elif t == "PTHREAD_SUCCESS":
            print("  [thread created OK]")
        elif t == "ENUM_THREADS":
            print("  [following %d threads]" % p.get("count", 0))
        elif t == "ready":
            print("  [ready] engBase=%s" % p.get("engBase"))
        else:
            print("  [%s] %s" % (t, json.dumps(p)[:150]))
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description", ""))[:200])

script.on("message", on_msg)
script.load()
time.sleep(2)

# Step 2: Navigate to Entry Key dialog and enter code
print("\n[*] Navigating to Entry Key dialog...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "139", "110"],
               capture_output=True, timeout=5)
time.sleep(3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "360", "1117"],
               capture_output=True, timeout=5)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "160", "590"],
               capture_output=True, timeout=5)
time.sleep(0.5)

CODE = "135790"
print("[*] Entering code: %s" % CODE)
for digit in CODE:
    kc = 7 + int(digit)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "keyevent", str(kc)],
                   capture_output=True, timeout=3)
    time.sleep(0.2)
time.sleep(0.5)

# Step 3: ARM the agent then tap Activate
print("[*] Arming agent...")
script.exports_sync.arm()
time.sleep(0.3)

print("[*] TAPPING ACTIVATE!")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"],
               capture_output=True, timeout=5)

# Step 4: Wait for capture
print("[*] Waiting 8s for Worker Thread capture...")
time.sleep(8)

# Step 5: Results
print("\n" + "=" * 60)
print("FINAL RESULTS")
print("=" * 60)
print("Total messages: %d" % len(msgs))

try:
    result = script.exports_sync.getresult()
    if result:
        print("\n=== REGISTER STATE AT 0x7e148 ENTRY (Worker Thread) ===")
        print(json.dumps(result, indent=2))
    else:
        print("\n[!] No capture obtained. Check messages above.")
except Exception as e:
    print("RPC error: %s" % e)

# Save
with open("/tmp/decisive_result.json", "w") as f:
    json.dump({"msgs": msgs, "result": result if "result" in dir() and result else None}, f, indent=2)
print("\n[*] Saved to /tmp/decisive_result.json")

session.detach()
print("[*] Done.")
