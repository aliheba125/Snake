import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)
with open("/tmp/agent_x2_capture.js") as f:
    JS = f.read()
sc = s.create_script(JS)
msgs = []
def on_msg(m, data):
    if m["type"] == "send":
        msgs.append(m["payload"])
        if m["payload"].get("t") == "R":
            r = m["payload"]["result"]
            print("\n=== key_engine x2 (code struct) ===")
            print("  x2 addr:", r.get("x2"))
            print("  [x2+0] (ptr):", r.get("x2_0"))
            print("  [x2+8]:", r.get("x2_8"))
            print("  content hex:", r.get("content_hex"))
            print("  content ascii:", r.get("content_ascii"))
            if r.get("content_ascii") and "135790" in r.get("content_ascii", ""):
                print("\n  *** PROVEN: x2 contains Entry Key \"135790\" ***")
            if r.get("err"):
                print("  Error:", r["err"])
sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)
time.sleep(6)
if not any(m.get("t") == "R" for m in msgs):
    print("[!] No capture. Msgs:", len(msgs))
s.detach()
print("[*] Done.")
