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
        msgs.append(m["payload"])
sc.on("message", on_msg)
sc.load()
time.sleep(1)

print("[*] ARM + TAP ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)
time.sleep(5)

r = sc.exports_sync.getresult()
if r:
    print("\n=== CAPTURED at case 7 entry ===")
    ptr_val = r.get("sp+0x140", "")
    len_val = r.get("sp+0x148", "")
    print("  sp+0x140 (key ptr) =", ptr_val)
    print("  sp+0x148 (key len) =", len_val)
    
    # Now read content at that pointer address
    if ptr_val and "int" not in ptr_val and "err" not in ptr_val:
        read_js = """
var p = ptr("%s");
try {
    var buf = p.readByteArray(6);
    var arr = new Uint8Array(buf);
    var hex = "", ascii = "";
    for (var i = 0; i < 6; i++) {
        hex += ("0" + arr[i].toString(16)).slice(-2);
        ascii += String.fromCharCode(arr[i]);
    }
    send({hex: hex, ascii: ascii});
} catch(e) {
    send({err: e.message});
}
""" % ptr_val
        sc2 = s.create_script(read_js)
        msgs2 = []
        sc2.on("message", lambda m, d: msgs2.append(m["payload"]) if m["type"] == "send" else None)
        sc2.load()
        time.sleep(1)
        if msgs2:
            result = msgs2[0]
            print("\n=== ENTRY KEY MEMORY CONTENT ===")
            print("  hex:  ", result.get("hex", "?"))
            print("  ascii:", result.get("ascii", "?"))
            if result.get("ascii") == "135790":
                print("\n  *** PROVEN: sp+0x140 points to user Entry Key '135790' ***")
            else:
                print("\n  Content does not match expected '135790'")
            if result.get("err"):
                print("  Error:", result["err"])
        sc2.unload()
    else:
        print("  Cannot read pointer (value:", ptr_val, ")")
else:
    print("[!] No capture. Total msgs:", len(msgs))
    for m in msgs:
        print("  ", m.get("t", "?"))

s.detach()
print("[*] Done.")
