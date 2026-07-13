import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

with open("/tmp/agent_dispatcher_state.js") as f:
    JS = f.read()

sc = s.create_script(JS)
msgs = []

def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t","")
        if t == "PT":
            print("  [%s] x19==x0? %s | x19=%s x0=%s" % (
                p.get("pt"), p.get("eq"), p.get("x19","?"), p.get("x0", p.get("slot","?"))))
        elif t == "STALK":
            print("  STALK tid=%s" % p["tid"])
        elif t == "DONE":
            print("  DONE: %d captures" % p["n"])
            for c in p.get("caps",[]):
                print("    %s" % json.dumps(c))
    elif m["type"] == "error":
        print("  ERR:", m.get("description","")[:100])

sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE!")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"], capture_output=True, timeout=5)
time.sleep(6)
print("\n[*] Msgs: %d" % len(msgs))
with open("/tmp/dispatcher_state_result.json", "w") as f:
    json.dump(msgs, f, indent=2)
s.detach()
print("[*] Done.")
