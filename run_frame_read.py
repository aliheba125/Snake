import frida, time, subprocess, json

print("[*] Connecting to Gadget...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] PID:", pid)

session = device.attach(pid)
with open("/tmp/agent_read_frame.js") as f:
    js = f.read()

script = session.create_script(js)
msgs = []

def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t", "")
        if t == "FRAME_READ":
            r = p.get("result", {})
            print("\n  " + "="*60)
            print("  FUN_0017e148 SAVED REGISTERS (from frame)")
            print("  " + "="*60)
            print("  x30 (LR/caller) = %s" % r.get("saved_x30_LR"))
            print("  x24 (= x0 at entry) = %s" % r.get("saved_x24_eq_x0_at_entry"))
            print("  x19 = %s" % r.get("saved_x19"))
            print("  x20 = %s" % r.get("saved_x20"))
            print("  x21 = %s" % r.get("saved_x21"))
            print("  x22 = %s" % r.get("saved_x22"))
            print("  x23 = %s" % r.get("saved_x23"))
            print("  x25 = %s" % r.get("saved_x25"))
            print("  x26 = %s" % r.get("saved_x26"))
            print("  x27 = %s" % r.get("saved_x27"))
            print("  x28 = %s" % r.get("saved_x28"))
        elif t == "FRAMES":
            print("  [frames] %d:" % len(p.get("frames",[])))
            for f in p.get("frames",[]):
                print("    d=%d lr=%s" % (f["depth"], f["lr"]))
        elif t == "PTHREAD":
            print("  [pthread_create] callerTid=%s" % p.get("callerTid"))
        elif t == "WORKER":
            print("  [worker thread!] tid=%s" % p.get("tid"))
        elif t == "READ_ERR":
            print("  [read error] %s" % p.get("err"))
        elif t == "ready":
            print("  [ready]")
        else:
            print("  [%s]" % t)
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description", ""))[:150])

script.on("message", on_msg)
script.load()
time.sleep(1)

print("[*] ARM + ACTIVATE!")
script.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)

print("[*] Waiting 6s...")
time.sleep(6)

print("\n[*] Messages: %d" % len(msgs))
try:
    result = script.exports_sync.getresult()
    if result:
        print("\n" + "="*60)
        print("FINAL RESULT")
        print("="*60)
        print(json.dumps(result, indent=2))
    else:
        print("[!] No frame read result")
        for m in msgs:
            print("  %s" % json.dumps(m)[:300])
except Exception as e:
    print("RPC: %s" % e)

with open("/tmp/frame_read_result.json", "w") as f:
    json.dump({"msgs": msgs, "result": result if "result" in dir() and result else None}, f, indent=2)
session.detach()
print("[*] Done.")
