import frida, time

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget")

AGENT = r"""
var app = Process.findModuleByName("libapp.so");
var eng = Process.findModuleByName("libengine.so");
send({t:"info",msg:"libapp@"+app.base+" eng@"+eng.base});

var sslWrite = Module.findExportByName(null, "SSL_write");
var sslRead = Module.findExportByName(null, "SSL_read");
send({t:"info",msg:"SSL_write="+sslWrite+" SSL_read="+sslRead});

if (sslRead) {
    Interceptor.attach(sslRead, {
        onEnter: function(a) { this.buf = a[1]; },
        onLeave: function(ret) {
            var n = ret.toInt32();
            if (n > 0) {
                try {
                    var d = this.buf.readUtf8String(Math.min(n, 4096));
                    if (d) send({t:"R",len:n,d:d.substring(0,2000)});
                } catch(e) {
                    send({t:"R_bin",len:n,hex:Array.prototype.map.call(new Uint8Array(this.buf.readByteArray(Math.min(n,128))),function(b){return(0+b.toString(16)).slice(-2)}).join()});
                }
            }
        }
    });
    send({t:"info",msg:"SSL_read hooked"});
}
if (sslWrite) {
    Interceptor.attach(sslWrite, {
        onEnter: function(a) {
            var n = a[2].toInt32();
            if (n > 0) {
                try {
                    var d = a[1].readUtf8String(Math.min(n, 4096));
                    if (d) send({t:"W",len:n,d:d.substring(0,2000)});
                } catch(e) {
                    send({t:"W_bin",len:n,hex:Array.prototype.map.call(new Uint8Array(a[1].readByteArray(Math.min(n,128))),function(b){return(0+b.toString(16)).slice(-2)}).join()});
                }
            }
        }
    });
    send({t:"info",msg:"SSL_write hooked"});
}
send({t:"info",msg:"Ready"});
"""

script = session.create_script(AGENT)
results = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        results.append(p)
        t = p.get("t","")
        if t == "R":
            print("\n  [READ] len={}\n    {}".format(p["len"], p["d"][:500]))
        elif t == "R_bin":
            print("  [READ-BIN] len={} hex={}".format(p["len"], p["hex"][:100]))
        elif t == "W":
            print("\n  [WRITE] len={}\n    {}".format(p["len"], p["d"][:500]))
        elif t == "W_bin":
            print("  [WRITE-BIN] len={} hex={}".format(p["len"], p["hex"][:100]))
        elif t == "info":
            print("  [i]", p["msg"])
    elif m["type"] == "error":
        print("  [ERR]", m.get("description","?")[:200])

script.on("message", on_msg)
script.load()
print("[+] Monitoring SSL traffic for 45s...")
time.sleep(45)

print("\n=== {} messages ===".format(len(results)))
reads = [r for r in results if r.get("t") in ("R","R_bin")]
writes = [r for r in results if r.get("t") in ("W","W_bin")]
print("  Reads: {}  Writes: {}".format(len(reads), len(writes)))
session.detach()
