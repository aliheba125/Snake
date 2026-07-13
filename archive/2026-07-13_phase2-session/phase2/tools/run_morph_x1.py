import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

with open("/tmp/agent_morph_x1.js") as f:
    JS = f.read()

# Patch: add burst detection (module-level counter)
patch = """
var _burstCount = 0, _burstStart = 0;
"""
JS = JS.replace('var activated = false;', patch + 'var activated = false;')
JS = JS.replace(
    'if (done || !activated || stalking) return;\n        if (!this.returnAddress.equals(wrapper_ra)) return;',
    """if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        var _now = Date.now();
        if (_now - _burstStart > 300) { _burstCount = 0; _burstStart = _now; }
        _burstCount++;
        if (_burstCount < 5) return;"""
)

sc = s.create_script(JS)
msgs = []
def on_msg(m, data):
    if m["type"] == "send":
        p = m["payload"]
        msgs.append(p)
        t = p.get("t","")
        if t == "RESULT":
            print("  *** x1_changed=%s vtable_changed=%s" % (p["x1_changed"], p["x1_vtable_changed"]))
            print("    bef_vt=%s → aft_vt=%s" % (p["before_x1_vtable"], p["after_x1_vtable"]))
            print("    bef=%s" % p.get("before_x1","?")[:48])
            print("    aft=%s" % p.get("after_x1","?")[:48])
        elif t == "BEFORE":
            print("  BEFORE: %s" % p.get("d",{}).get("site","?"))
        elif t == "STALK":
            print("  STALK tid=%s" % p["tid"])
        elif t == "DONE":
            print("  DONE: %d results" % p["total"])
    elif m["type"] == "error":
        print("  ERR:", m.get("description","")[:80])

sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"], capture_output=True, timeout=5)
time.sleep(6)
print("\n[*] Msgs: %d" % len(msgs))
with open("/tmp/morph_x1_final.json", "w") as f:
    json.dump(msgs, f, indent=2)
s.detach()
print("[*] Done.")
