"""
Capture network traffic at app startup.
Strategy: Start app with Gadget, immediately install libc hooks on
connect/write/read/sendto/recvfrom, then wait for startup traffic.
Log ALL traffic (not just from libengine) since Dart HTTP goes through libc too.
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Kill and restart with Gadget
print("[1] Restarting app with Gadget...")
adb("am force-stop com.snake")
time.sleep(2)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
print("[2] Waiting 12s for startup (hooks will be installed during this time)...")
time.sleep(12)

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
t0 = time.time()
print("[3] Attached at t=0")

# Install network monitoring hooks on libc
SCRIPT = """
var libc = Process.findModuleByName("libc.so");

// Hook connect() to see what IPs the app connects to
var connect_fn = libc.findExportByName("connect");
Interceptor.attach(connect_fn, {
    onEnter: function(args) {
        var fd = args[0].toInt32();
        var addr = args[1];
        var family = addr.readU16();
        if (family === 2) { // AF_INET
            var port = (addr.add(2).readU8() << 8) | addr.add(3).readU8();
            var ip = addr.add(4).readU8()+"."+addr.add(5).readU8()+"."+addr.add(6).readU8()+"."+addr.add(7).readU8();
            send({t:"connect", fd:fd, ip:ip, port:port});
        }
    }
});

// Hook write/send to see outgoing data
var write_fn = libc.findExportByName("write");
Interceptor.attach(write_fn, {
    onEnter: function(args) {
        this.fd = args[0].toInt32();
        this.buf = args[1];
        this.len = args[2].toInt32();
    },
    onLeave: function(ret) {
        var n = ret.toInt32();
        if (n > 20 && this.len < 65536) {
            try {
                var bytes = this.buf.readByteArray(Math.min(n, 512));
                var hex = Array.prototype.map.call(new Uint8Array(bytes), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
                var txt = null;
                try { txt = this.buf.readUtf8String(Math.min(n, 512)); } catch(e) {}
                send({t:"write", fd:this.fd, len:n, hex:hex.substring(0,200), txt: txt ? txt.substring(0,200) : null});
            } catch(e) {}
        }
    }
});

// Hook read/recv to see incoming data
var read_fn = libc.findExportByName("read");
Interceptor.attach(read_fn, {
    onEnter: function(args) {
        this.fd = args[0].toInt32();
        this.buf = args[1];
    },
    onLeave: function(ret) {
        var n = ret.toInt32();
        if (n > 20) {
            try {
                var bytes = this.buf.readByteArray(Math.min(n, 512));
                var hex = Array.prototype.map.call(new Uint8Array(bytes), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
                var txt = null;
                try { txt = this.buf.readUtf8String(Math.min(n, 512)); } catch(e) {}
                send({t:"read", fd:this.fd, len:n, hex:hex.substring(0,200), txt: txt ? txt.substring(0,200) : null});
            } catch(e) {}
        }
    }
});

// Hook getaddrinfo for DNS
var getaddrinfo_fn = libc.findExportByName("getaddrinfo");
if (getaddrinfo_fn) {
    Interceptor.attach(getaddrinfo_fn, {
        onEnter: function(args) {
            try { this.host = args[0].readCString(); } catch(e) { this.host = null; }
        },
        onLeave: function(ret) {
            if (this.host) {
                send({t:"dns", host:this.host, result:ret.toInt32()});
            }
        }
    });
}

send({t:"ready"});
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        p["_t"] = time.time() - t0
        events.append(p)
        t = p.get("t","")
        if t == "connect":
            print("  [{:.1f}s] CONNECT fd={} {}:{}".format(p["_t"], p["fd"], p["ip"], p["port"]))
        elif t == "dns":
            print("  [{:.1f}s] DNS {} -> {}".format(p["_t"], p["host"], p["result"]))
        elif t == "write":
            txt = p.get("txt","")
            if txt and len(txt) > 5:
                print("  [{:.1f}s] WRITE fd={} len={} txt={}".format(p["_t"], p["fd"], p["len"], repr(txt[:100])))
            else:
                print("  [{:.1f}s] WRITE fd={} len={} hex={}".format(p["_t"], p["fd"], p["len"], p["hex"][:60]))
        elif t == "read":
            txt = p.get("txt","")
            if txt and len(txt) > 5:
                print("  [{:.1f}s] READ fd={} len={} txt={}".format(p["_t"], p["fd"], p["len"], repr(txt[:100])))
            else:
                print("  [{:.1f}s] READ fd={} len={} hex={}".format(p["_t"], p["fd"], p["len"], p["hex"][:60]))
        elif t == "ready":
            print("  [+] Network hooks ready")
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:100])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

# Wait for startup traffic (app already running ~12s, may have already connected)
# But if it reconnects periodically, we'll catch it
print("[4] Monitoring network for 40s...")
time.sleep(40)

# Summary
print("\n" + "="*60)
dns_events = [e for e in events if e.get("t") == "dns"]
connect_events = [e for e in events if e.get("t") == "connect"]
write_events = [e for e in events if e.get("t") == "write"]
read_events = [e for e in events if e.get("t") == "read"]

print("DNS queries: {}".format(len(dns_events)))
for d in dns_events:
    print("  {} -> {}".format(d["host"], d["result"]))

print("\nConnections: {}".format(len(connect_events)))
for c in connect_events:
    print("  {}:{} (fd={})".format(c["ip"], c["port"], c["fd"]))

print("\nWrites: {}".format(len(write_events)))
print("Reads: {}".format(len(read_events)))

# Show first few writes/reads with content
if write_events:
    print("\n--- First 5 writes ---")
    for w in write_events[:5]:
        print("  fd={} len={} txt={}".format(w["fd"], w["len"], repr(w.get("txt","")[:150]) if w.get("txt") else w["hex"][:80]))

if read_events:
    print("\n--- First 5 reads ---")
    for r in read_events[:5]:
        print("  fd={} len={} txt={}".format(r["fd"], r["len"], repr(r.get("txt","")[:150]) if r.get("txt") else r["hex"][:80]))

print("="*60)

# Save full data
with open("/tmp/startup_traffic.json", "w") as f:
    json.dump(events, f, indent=2, default=str)
print("Full data: /tmp/startup_traffic.json")

session.detach()
