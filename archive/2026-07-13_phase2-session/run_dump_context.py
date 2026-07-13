import frida, time, subprocess, json

print("[*] Connecting to Gadget...")
device = frida.get_device_manager().add_remote_device("localhost:27052")
procs = device.enumerate_processes()
pid = procs[0].pid
print("[*] PID:", pid)

session = device.attach(pid)
with open("/tmp/agent_dump_context.js") as f:
    js = f.read()

script = session.create_script(js)
msgs = []

def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t", "")
        if t == "DUMP":
            r = p.get("result", {})
            dump = r.get("dump", {})
            print("\n  === ActivationContext DUMP ===")
            print("  ctxPtr = %s" % r.get("ctxPtr"))
            print("  Non-zero fields: %d" % dump.get("fieldCount", 0))
            print("\n  First 64 bytes: %s" % dump.get("first64hex", "?"))
            print("\n  Bytes 0x340-0x370: %s" % dump.get("hex_0x340_0x370", "?"))
            print("\n  Fields around +0x348:")
            for k, v in dump.get("at_0x348", {}).items():
                print("    %s = %s" % (k, v))
            print("\n  All non-zero fields:")
            for f in dump.get("fields", [])[:40]:
                print("    +%s = %s [%s]%s" % (f["off"], f["val"], f["type"],
                      " eng=" + f.get("engOff","") if f.get("engOff") else ""))
        elif t == "WORKER":
            print("  [worker] tid=%s ctx=%s" % (p.get("tid"), p.get("ctxPtr")))
        elif t == "ready":
            print("  [ready]")
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
        with open("/tmp/context_dump.json", "w") as f:
            json.dump(result, f, indent=2)
        print("[*] Full dump saved to /tmp/context_dump.json")
    else:
        print("[!] No result")
except Exception as e:
    print("RPC: %s" % e)

session.detach()
print("[*] Done.")
