import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

with open("/tmp/agent_ctx_monitor.js") as f:
    JS = f.read()

sc = s.create_script(JS)
msgs = []

def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t", "")
        if t == "SAMPLE":
            sam = p["s"]
            eq = sam.get("equal", "?")
            print("  [malloc #%s] ctx+E0==ctx+C0? %s | vtable=%s | src_vtable=%s" % (
                sam.get("mallocNum"), eq, sam.get("vtable_at_c0","?"), sam.get("source_obj_vtable","?")))
        elif t == "PTHREAD":
            print("  [pthread] callerTid=%s" % p.get("callerTid"))
        elif t == "ready":
            print("  [ready]")
    elif m["type"] == "error":
        print("  [ERR]", m.get("description","")[:100])

sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"], capture_output=True, timeout=5)
time.sleep(8)
print("\n[*] Msgs: %d" % len(msgs))
try:
    samples = sc.exports_sync.getsamples()
    if samples:
        print("\n=== SUMMARY ===")
        for sam in samples:
            print("  malloc#%s: equal=%s vtable=%s src=%s" % (
                sam.get("mallocNum"), sam.get("equal"), sam.get("vtable_at_c0"), sam.get("source_obj_vtable")))
except:
    pass
with open("/tmp/ctx_monitor_result.json", "w") as f:
    json.dump(msgs, f, indent=2)
s.detach()
print("[*] Done.")
