import frida, time, subprocess, json

print("[*] Connecting to Gadget (27052)...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] PID:", pid)

session = device.attach(pid)
with open("/tmp/agent_worker_malloc.js") as f:
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
            print("  WORKER THREAD CAPTURED!")
            print("  " + "="*50)
            print("  workerTid = %s" % r.get("workerTid"))
            print("  callerTid = %s" % r.get("callerTid"))
            print("  x19 = %s" % r.get("current_x19"))
            print("  x20 = %s" % r.get("current_x20"))
            print("  x21 = %s" % r.get("current_x21"))
            print("  x22 = %s" % r.get("current_x22"))
            print("  x24 = %s" % r.get("current_x24"))
            print("  x30 = %s" % r.get("current_x30"))
            print("  Stack eng addrs:")
            for a in r.get("stack_eng_addrs", [])[:15]:
                print("    sp+0x%04x -> %s" % (a["stackOff"], a["engOff"]))
        elif t == "PTHREAD":
            print("  [pthread_create] callerTid=%s" % p.get("callerTid"))
        elif t == "WORKER_MALLOC":
            print("  [worker malloc!] workerTid=%s" % p.get("workerTid"))
        elif t == "ready":
            print("  [ready]")
        else:
            print("  [%s]" % t)
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description", ""))[:150])

script.on("message", on_msg)
script.load()
time.sleep(1)

print("[*] Arming...")
script.exports_sync.arm()
time.sleep(0.3)

print("[*] TAP ACTIVATE (495, 745)!")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)

print("[*] Waiting 6s...")
time.sleep(6)

print("\n[*] Messages: %d" % len(msgs))
try:
    result = script.exports_sync.getresult()
    if result:
        print("\n" + "="*60)
        print("RESULT")
        print("="*60)
        print(json.dumps(result, indent=2))
    else:
        print("[!] No result")
        for m in msgs:
            print("  %s" % json.dumps(m)[:200])
except Exception as e:
    print("RPC: %s" % e)

with open("/tmp/worker_malloc_result.json", "w") as f:
    json.dump({"msgs": msgs, "result": result if "result" in dir() and result else None}, f, indent=2)
session.detach()
print("[*] Done.")
