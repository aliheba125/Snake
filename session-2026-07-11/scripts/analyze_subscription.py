"""
تحليل منهجي لفحص الاشتراك:
1. هل يخرج طلب للخادم عند الضغط على لعبة؟
2. ما الاستجابة؟  
3. أين تُخزَّن نتيجة الاشتراك؟
4. هل القرار client-side أم server-side؟

الطريقة: 
- نراقب getaddrinfo/connect (DNS + TCP) لنعرف هل يتصل بالخادم
- نراقب write/read على socket لنرى البيانات
- نراقب مسارات الملفات (SharedPrefs, databases)
- كل هذا بدون Java bridge (ليس متاحاً في Gadget بدون frida-java-bridge compiled)
"""
import frida, time, sys, json

# Connect to the Gadget (main Flutter process)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget (main process)")

# Also attach to engine process via frida-server for KDF/AES monitoring
usb = frida.get_usb_device(timeout=5)
eng_procs = [p for p in usb.enumerate_processes() if "engine" in p.name]
if eng_procs:
    eng_session = usb.attach(eng_procs[0].pid)
    print("[+] Attached to engine PID", eng_procs[0].pid)
else:
    eng_session = None
    print("[-] Engine process not found")

# === AGENT FOR MAIN PROCESS (network + file monitoring) ===
MAIN_AGENT = r"""
send({t: "init", pid: Process.id});

// 1. Monitor DNS resolution (detects if app contacts server on game tap)
var getaddrinfo = Module.findExportByName(null, "getaddrinfo");
if (getaddrinfo) {
    Interceptor.attach(getaddrinfo, {
        onEnter: function(a) {
            this.host = a[0].readCString();
        },
        onLeave: function(ret) {
            if (this.host) {
                send({t: "dns", host: this.host, result: ret.toInt32()});
            }
        }
    });
}

// 2. Monitor connect() calls (TCP connections)
var connect_fn = Module.findExportByName(null, "connect");
if (connect_fn) {
    Interceptor.attach(connect_fn, {
        onEnter: function(a) {
            var fd = a[0].toInt32();
            var addr = a[1];
            var family = addr.readU16();
            if (family === 2) { // AF_INET
                var port = (addr.add(2).readU8() << 8) | addr.add(3).readU8();
                var ip = addr.add(4).readU8() + "." + addr.add(5).readU8() + "." + addr.add(6).readU8() + "." + addr.add(7).readU8();
                send({t: "connect", fd: fd, ip: ip, port: port});
            }
        }
    });
}

// 3. Monitor write() on sockets (outgoing data)
var write_fn = Module.findExportByName(null, "write");
if (write_fn) {
    Interceptor.attach(write_fn, {
        onEnter: function(a) {
            this.fd = a[0].toInt32();
            this.buf = a[1];
            this.len = a[2].toInt32();
        },
        onLeave: function(ret) {
            var n = ret.toInt32();
            if (n > 50 && this.len < 65536) {
                try {
                    var data = this.buf.readUtf8String(Math.min(n, 2048));
                    if (data && (data.indexOf("HTTP") !== -1 || data.indexOf("POST") !== -1 || 
                                 data.indexOf("GET") !== -1 || data.indexOf("{") !== -1)) {
                        send({t: "write", fd: this.fd, len: n, data: data.substring(0, 1000)});
                    }
                } catch(e) {}
            }
        }
    });
}

// 4. Monitor read() responses  
var read_fn = Module.findExportByName(null, "read");
if (read_fn) {
    Interceptor.attach(read_fn, {
        onEnter: function(a) {
            this.fd = a[0].toInt32();
            this.buf = a[1];
        },
        onLeave: function(ret) {
            var n = ret.toInt32();
            if (n > 50) {
                try {
                    var data = this.buf.readUtf8String(Math.min(n, 2048));
                    if (data && (data.indexOf("HTTP") !== -1 || data.indexOf("{") !== -1 ||
                                 data.indexOf("subscription") !== -1 || data.indexOf("game") !== -1)) {
                        send({t: "read", fd: this.fd, len: n, data: data.substring(0, 1000)});
                    }
                } catch(e) {}
            }
        }
    });
}

// 5. Monitor file operations (SharedPreferences, databases)
var open_fn = Module.findExportByName(null, "open");
if (open_fn) {
    Interceptor.attach(open_fn, {
        onEnter: function(a) {
            var path = a[0].readCString();
            if (path && (path.indexOf("snake") !== -1 || path.indexOf("shared_prefs") !== -1 || 
                         path.indexOf("isar") !== -1 || path.indexOf("subscription") !== -1 ||
                         path.indexOf(".db") !== -1)) {
                send({t: "open", path: path, flags: a[1].toInt32()});
            }
        }
    });
}

// 6. Monitor sendto (UDP/DNS underlying)
var sendto_fn = Module.findExportByName(null, "sendto");
if (sendto_fn) {
    Interceptor.attach(sendto_fn, {
        onEnter: function(a) {
            this.fd = a[0].toInt32();
            this.len = a[2].toInt32();
        },
        onLeave: function(ret) {
            if (ret.toInt32() > 0) {
                send({t: "sendto", fd: this.fd, len: this.len});
            }
        }
    });
}

send({t: "ready", msg: "Network + file monitoring active. Tap a game tile NOW."});
"""

# === AGENT FOR ENGINE PROCESS (KDF/AES) ===
ENG_AGENT = r"""
var eng = Process.findModuleByName("libengine.so");
if (eng) {
    Interceptor.attach(eng.base.add(0x161788), {
        onEnter: function(a) { send({t:"KDF",s1:a[1].toUInt32()>>>0,s2:a[2].toString()}); }
    });
    Interceptor.attach(eng.base.add(0x160208), {
        onEnter: function(a) { this.o=a[2]; },
        onLeave: function() {
            try{var p=this.o.readPointer(),e=this.o.add(8).readPointer(),l=e.sub(p).toInt32();
            if(l>0&&l<65536){var t=null;try{t=p.readUtf8String(Math.min(l,512))}catch(x){}
            send({t:"AES_OUT",len:l,txt:t},p.readByteArray(Math.min(l,128)));}}catch(x){}
        }
    });
    try{Interceptor.attach(eng.base.add(0x17e148),{onEnter:function(){send({t:"CALL",fn:"0x17e148"})}})}catch(e){}
    try{Interceptor.attach(eng.base.add(0x189774),{onEnter:function(){send({t:"CALL",fn:"0x189774"})}})}catch(e){}
    send({t:"ready", msg:"Engine crypto hooks active"});
} else {
    send({t:"info", msg:"libengine NOT in engine process"});
}
"""

all_events = []

def on_main_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        p["_src"] = "MAIN"
        p["_time"] = time.time()
        all_events.append(p)
        t = p.get("t","")
        if t == "dns":
            print("  [DNS] {} -> {}".format(p["host"], p["result"]))
        elif t == "connect":
            print("  [CONNECT] {}:{} (fd={})".format(p["ip"], p["port"], p["fd"]))
        elif t == "write":
            print("  [WRITE fd={}] len={}\n    {}".format(p["fd"], p["len"], p["data"][:300]))
        elif t == "read":
            print("  [READ fd={}] len={}\n    {}".format(p["fd"], p["len"], p["data"][:300]))
        elif t == "open":
            print("  [OPEN] {} flags={}".format(p["path"], p["flags"]))
        elif t == "sendto":
            pass  # too noisy
        elif t == "ready":
            print("  [MAIN] {}".format(p["msg"]))
        elif t == "init":
            print("  [MAIN] PID={}".format(p["pid"]))
    elif m["type"] == "error":
        print("  [MAIN-ERR] {}".format(m.get("description","?")[:200]))

def on_eng_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        p["_src"] = "ENG"
        p["_time"] = time.time()
        all_events.append(p)
        t = p.get("t","")
        if t == "KDF":
            print("\n  *** [ENGINE KDF] seed1=0x{:x} seed2={} ***".format(p["s1"], p["s2"]))
        elif t == "AES_OUT":
            print("  [ENGINE AES-OUT] len={} txt={}".format(p["len"], repr(p.get("txt","")[:200])))
        elif t == "CALL":
            print("  [ENGINE DECRYPT-FN] {}".format(p["fn"]))
        elif t == "ready":
            print("  [ENGINE] {}".format(p["msg"]))

# Load agents
sc_main = session.create_script(MAIN_AGENT)
sc_main.on("message", on_main_msg)
sc_main.load()

if eng_session:
    sc_eng = eng_session.create_script(ENG_AGENT)
    sc_eng.on("message", on_eng_msg)
    sc_eng.load()

print("\n" + "="*60)
print("  MONITORING ACTIVE — Tap a game tile in the app NOW")
print("  (watching for 60 seconds)")
print("="*60 + "\n")

time.sleep(60)

print("\n" + "="*60)
print("  ANALYSIS COMPLETE")
print("="*60)

# Categorize events
dns_events = [e for e in all_events if e.get("t") == "dns"]
connect_events = [e for e in all_events if e.get("t") == "connect"]
write_events = [e for e in all_events if e.get("t") == "write"]
read_events = [e for e in all_events if e.get("t") == "read"]
open_events = [e for e in all_events if e.get("t") == "open"]
kdf_events = [e for e in all_events if e.get("t") == "KDF"]
aes_events = [e for e in all_events if e.get("t") == "AES_OUT"]

print("\n--- Network Activity ---")
print("  DNS queries: {}".format(len(dns_events)))
for d in dns_events:
    print("    {} -> {}".format(d["host"], d["result"]))
print("  TCP connections: {}".format(len(connect_events)))
for c in connect_events:
    print("    {}:{} (fd={})".format(c["ip"], c["port"], c["fd"]))
print("  Writes (HTTP): {}".format(len(write_events)))
print("  Reads (HTTP): {}".format(len(read_events)))

print("\n--- File Activity ---")
print("  File opens: {}".format(len(open_events)))
for o in open_events:
    print("    {} (flags={})".format(o["path"], o["flags"]))

print("\n--- Engine Crypto ---")
print("  KDF calls: {}".format(len(kdf_events)))
print("  AES outputs: {}".format(len(aes_events)))

print("\n--- Conclusion ---")
if dns_events or connect_events:
    print("  >> Network activity detected during monitoring period")
    if any("snakeseller" in e.get("host","") or "92.205.103.45" in e.get("ip","") for e in dns_events + connect_events):
        print("  >> App contacted snakeseller.com -> subscription check MAY be server-side")
    else:
        print("  >> No snakeseller contact -> subscription check may be client-side (cached)")
else:
    print("  >> NO network activity -> subscription state is CACHED locally")
    print("  >> This means: client-side bypass IS possible")

if kdf_events:
    print("  >> KDF was called! Seeds captured!")
else:
    print("  >> No KDF calls -> game load path not triggered")

# Save full log
with open("/tmp/subscription_analysis.json", "w") as f:
    json.dump(all_events, f, indent=2, default=str)
print("\n  Full log saved to /tmp/subscription_analysis.json")

session.detach()
if eng_session:
    eng_session.detach()
