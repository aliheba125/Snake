import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

with open("/tmp/agent_find_key_bytes.js") as f:
    JS = f.read()

sc = s.create_script(JS)
msgs = []
def on_msg(m, data):
    if m["type"] == "send":
        msgs.append(m["payload"])
        p = m["payload"]
        if p.get("t") == "FOUND":
            print("  *** ENTRY KEY FOUND at: %s (offset from ctx: %s)" % (p.get("where"), p.get("ctx_offset")))
            print("      hex context: %s" % p.get("context_hex"))
        elif p.get("t") == "SCAN_DONE":
            print("  [scan done] found=%d" % p.get("found", 0))
        elif p.get("t") == "WORKER":
            print("  [worker detected]")
    elif m["type"] == "error":
        print("  ERR:", m.get("description", "")[:100])

sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)
time.sleep(8)
print("\n[*] Msgs:", len(msgs))
with open("/tmp/find_key_result.json", "w") as f:
    json.dump(msgs, f, indent=2)
s.detach()
print("[*] Done.")
