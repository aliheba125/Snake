import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

with open("/tmp/agent_entry_key_trace.js") as f:
    JS = f.read()

sc = s.create_script(JS)
msgs = []

def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        if p.get("t") == "CAP":
            print("\n=== CAPTURED at case 7 entry (0xaa1a0) ===")
            for k, v in sorted(p["fields"].items()):
                print("  %s = %s" % (k, v))
    elif m["type"] == "error":
        print("  ERR:", m.get("description","")[:100])

sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)
time.sleep(6)
print("\n[*] Msgs:", len(msgs))
try:
    r = sc.exports_sync.getresult()
    if r:
        with open("/tmp/entry_key_trace.json", "w") as f:
            json.dump(r, f, indent=2)
        print("[*] Saved")
except:
    pass
s.detach()
