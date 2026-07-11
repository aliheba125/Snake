import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

SCRIPT = """
var flutter = Process.findModuleByName("libflutter.so");
var base = flutter.base;
send("flutter @ " + base);

var ranges = Process.enumerateRanges("r-x").filter(function(r) {
    return r.base.compare(base) >= 0 && r.base.compare(base.add(flutter.size)) < 0;
});

/* Search for BL followed by CBNZ W0 in SSL code region */
var results = [];
for (var ri = 0; ri < ranges.length; ri++) {
    var r = ranges[ri];
    try {
        for (var off = 0; off < r.size - 8; off += 4) {
            var w1 = r.base.add(off).readU32();
            var w2 = r.base.add(off + 4).readU32();
            if ((w1 & 0xFC000000) === 0x94000000 && (w2 & 0xFF00001F) === 0x35000000) {
                var flutterOff = r.base.add(off).sub(base).toInt32();
                if (flutterOff > 0x451000 && flutterOff < 0x480000) {
                    results.push(flutterOff);
                }
            }
        }
    } catch(e) {}
}

send("BL+CBNZ W0 in ssl_x509 range (0x451000-0x480000): " + results.length);
for (var i = 0; i < results.length; i++) {
    var addr = base.add(results[i]);
    var ctx = addr.sub(16).readByteArray(32);
    var hex = Array.prototype.map.call(new Uint8Array(ctx), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
    send("  flutter+0x" + results[i].toString(16) + " | " + hex);
}

/* Also search for BL + CBZ W0 (if verify returns 0 = fail) */
var results2 = [];
for (var ri = 0; ri < ranges.length; ri++) {
    var r = ranges[ri];
    try {
        for (var off = 0; off < r.size - 8; off += 4) {
            var w1 = r.base.add(off).readU32();
            var w2 = r.base.add(off + 4).readU32();
            if ((w1 & 0xFC000000) === 0x94000000 && (w2 & 0xFF00001F) === 0x34000000) {
                var flutterOff = r.base.add(off).sub(base).toInt32();
                if (flutterOff > 0x451000 && flutterOff < 0x480000) {
                    results2.push(flutterOff);
                }
            }
        }
    } catch(e) {}
}

send("BL+CBZ W0 in ssl_x509 range: " + results2.length);
for (var i = 0; i < results2.length; i++) {
    var addr = base.add(results2[i]);
    var ctx = addr.sub(16).readByteArray(32);
    var hex = Array.prototype.map.call(new Uint8Array(ctx), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
    send("  flutter+0x" + results2[i].toString(16) + " | " + hex);
}
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        print("  " + str(m["payload"]))
    elif m["type"] == "error":
        print("  ERR: " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(8)
session.detach()
