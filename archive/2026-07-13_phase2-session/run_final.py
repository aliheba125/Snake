import frida, time, subprocess, json

print("[*] Connecting to Gadget (27052)...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] PID:", pid)

session = device.attach(pid)
with open("/tmp/agent_final_capture.js") as f:
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
            print("\n  " + "="*50)
            print("  FN_0x7e148 ENTRY CAPTURED!")
            print("  " + "="*50)
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
            print("  x30 = %s" % r.get("x30"))
            if r.get("x30_eng"):
                print("  x30_eng = %s" % r.get("x30_eng"))
            print("  sp  = %s" % r.get("sp"))
        elif t == "PTHREAD_ENTER":
            print("  [pthread_create found] callerTid=%s" % p.get("callerTid"))
        elif t == "TID_CANDIDATES":
            print("  [tid candidates] %s" % p.get("candidates"))
        elif t == "THREAD_SEARCH":
            print("  [thread search] newTid=%s possible=%s" % (p.get("newTid"), p.get("possibleFromEnum")))
        elif t == "FOLLOWING":
            print("  [following tid=%s]" % p.get("tid"))
        elif t == "FOLLOW_ERR":
            print("  [follow error] %s tid=%s" % (p.get("err"), p.get("tid")))
        elif t == "TIMEOUT":
            print("  [timeout] %s" % p.get("note"))
        elif t == "NO_TID":
            print("  [no tid found]")
        elif t == "ready":
            print("  [ready]")
        else:
            print("  [%s] %s" % (t, json.dumps(p)[:150]))
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description", ""))[:200])

script.on("message", on_msg)
script.load()
time.sleep(1)

print("[*] Arming...")
script.exports_sync.arm()
time.sleep(0.3)

print("[*] TAPPING ACTIVATE (490, 745)!")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "490", "745"],
               capture_output=True, timeout=5)

print("[*] Waiting 8s for capture...")
time.sleep(8)

print("\n[*] Total messages: %d" % len(msgs))
try:
    result = script.exports_sync.getresult()
    if result:
        print("\n" + "="*60)
        print("FINAL RESULT — Register State at 0x7e148 Entry")
        print("="*60)
        print(json.dumps(result, indent=2))
    else:
        print("\n[!] No capture. Messages:")
        for m in msgs:
            print("  %s" % json.dumps(m)[:300])
except Exception as e:
    print("RPC error: %s" % e)

with open("/tmp/decisive_result_final.json", "w") as f:
    json.dump({"msgs": msgs, "result": result if "result" in dir() and result else None}, f, indent=2)
print("\n[*] Saved to /tmp/decisive_result_final.json")
session.detach()
print("[*] Done.")
