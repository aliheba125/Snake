import frida, time, subprocess, json

d = frida.get_device_manager().add_remote_device("localhost:27052")
pid = d.enumerate_processes()[0].pid
print("[*] PID:", pid)
s = d.attach(pid)

# Use existing agent but after getting result, do a second read
with open("/tmp/agent_x2_capture.js") as f:
    JS = f.read()

sc = s.create_script(JS)
msgs = []
def on_msg(m, data):
    if m["type"] == "send":
        msgs.append(m["payload"])
sc.on("message", on_msg)
sc.load()
time.sleep(1)
print("[*] ARM + ACTIVATE")
sc.exports_sync.arm()
time.sleep(0.3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "input", "tap", "495", "745"],
               capture_output=True, timeout=5)
time.sleep(5)

r = sc.exports_sync.getresult()
sc.unload()

if r:
    print("\n=== key_engine x2 struct ===")
    print("  x2 =", r.get("x2"))
    print("  [x2+0] =", r.get("x2_0"))
    print("  [x2+8] =", r.get("x2_8"))
    print("  content hex:", r.get("content_hex"))
    print("  content ascii:", r.get("content_ascii"))
    
    # Now do a second script to read more memory
    x2_addr = r.get("x2")
    if x2_addr:
        read_js = """
var addr = ptr("%s");
var result = {};
// Read 0x100 bytes from x2 struct
try {
    var buf = addr.readByteArray(256);
    var arr = new Uint8Array(buf);
    var hex = "";
    for (var i = 0; i < arr.length; i++) hex += ("0"+arr[i].toString(16)).slice(-2);
    result.raw = hex;
    // Search for "135790" = 313335373930
    var idx = hex.indexOf("313335373930");
    result.key_found_at = idx >= 0 ? idx/2 : -1;
} catch(e) { result.err1 = e.message; }
// Also search the pointer at [x2+8]
try {
    var p8 = addr.add(8).readPointer();
    if (!p8.isNull()) {
        var buf2 = p8.readByteArray(64);
        var arr2 = new Uint8Array(buf2);
        var hex2 = "", ascii2 = "";
        for (var i = 0; i < arr2.length; i++) {
            hex2 += ("0"+arr2[i].toString(16)).slice(-2);
            ascii2 += (arr2[i]>=32&&arr2[i]<127)?String.fromCharCode(arr2[i]):".";
        }
        result.p8_hex = hex2;
        result.p8_ascii = ascii2;
        var idx2 = hex2.indexOf("313335373930");
        result.key_in_p8 = idx2 >= 0 ? idx2/2 : -1;
    }
} catch(e) { result.err2 = e.message; }
send(result);
""" % x2_addr
        sc2 = s.create_script(read_js)
        msgs2 = []
        sc2.on("message", lambda m, d: msgs2.append(m["payload"]) if m["type"]=="send" else None)
        sc2.load()
        time.sleep(1)
        if msgs2:
            r2 = msgs2[0]
            print("\n=== Extended read ===")
            if r2.get("key_found_at", -1) >= 0:
                print("  *** KEY '135790' FOUND in x2 struct at byte offset %d ***" % r2["key_found_at"])
            else:
                print("  Key NOT in first 256 bytes of x2 struct")
            if r2.get("key_in_p8", -1) >= 0:
                print("  *** KEY '135790' FOUND in [x2+8] pointed buffer! ***")
            else:
                print("  Key NOT in [x2+8] buffer either")
            print("  [x2+8] content ascii:", r2.get("p8_ascii", "?")[:60])
            print("  [x2+8] content hex:", r2.get("p8_hex", "?")[:60])
            # Show raw first 64 bytes of x2
            raw = r2.get("raw", "")
            print("  x2 raw first 64 bytes:", raw[:128])
        sc2.unload()
else:
    print("[!] No capture")

s.detach()
print("[*] Done.")
