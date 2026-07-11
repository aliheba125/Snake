import frida, sys, time

device = frida.get_usb_device(timeout=5)
print("[+] Connected to:", device.name)

# Kill existing and spawn fresh
print("[*] Spawning com.snake fresh...")
pid = device.spawn(["com.snake"])
print("[+] Spawned PID:", pid)
session = device.attach(pid)

SCRIPT = """
// Monitor all library loads
var dlopen_calls = [];
Interceptor.attach(Module.findExportByName(null, "android_dlopen_ext"), {
    onEnter: function(args) {
        var path = args[0] ? args[0].readCString() : null;
        if (path) {
            dlopen_calls.push(path);
            if (path.indexOf("engine") !== -1 || path.indexOf("app.so") !== -1 || path.indexOf("flutter") !== -1) {
                send({type: "DLOPEN", path: path});
            }
        }
    },
    onLeave: function(ret) {
        // After libengine loads, install hooks
        var base = Module.findBaseAddress("libengine.so");
        if (base && !this._hooked) {
            this._hooked = true;
            send({type: "info", msg: "libengine.so loaded @ " + base});
            
            try {
                Interceptor.attach(base.add(0x161788), {
                    onEnter: function(args) {
                        send({type: "KDF", seed1: args[1].toUInt32() >>> 0, seed2: args[2].toString()});
                    }
                });
                Interceptor.attach(base.add(0x160208), {
                    onEnter: function(args) {
                        this.out = args[2];
                        try {
                            var p = args[1].readPointer();
                            var e = args[1].add(8).readPointer();
                            var l = e.sub(p).toInt32();
                            if (l > 0 && l < 65536)
                                send({type: "AES_IN", len: l}, p.readByteArray(Math.min(l, 64)));
                        } catch(ex) {}
                    },
                    onLeave: function() {
                        try {
                            var p = this.out.readPointer();
                            var e = this.out.add(8).readPointer();
                            var l = e.sub(p).toInt32();
                            if (l > 0 && l < 65536) {
                                var t = null;
                                try { t = p.readUtf8String(Math.min(l, 512)); } catch(x) {}
                                send({type: "AES_OUT", len: l, text: t}, p.readByteArray(Math.min(l, 128)));
                            }
                        } catch(ex) {}
                    }
                });
                send({type: "info", msg: "KDF+AES hooks installed"});
            } catch(e) {
                send({type: "error", msg: "Hook error: " + e.message});
            }
        }
    }
});

// Java hooks
Java.perform(function() {
    send({type: "info", msg: "Java.perform OK"});
    
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native["ilil"].implementation = function(i) {
            var result = this["ilil"](i);
            send({type: "STR", i: i, v: result});
            return result;
        };
        Native["chl"].implementation = function(b) {
            var result = this["chl"](b);
            send({type: "CHL", len: b.length, ok: result});
            return result;
        };
        Native["gcuid"].implementation = function(i) {
            var result = this["gcuid"](i);
            send({type: "GCUID", in: i, out: result});
            return result;
        };
        send({type: "info", msg: "All Native hooks OK"});
    } catch(e) {
        send({type: "error", msg: "Native hooks: " + e.message});
    }
    
    // Monitor App.attachBaseContext
    try {
        var App = Java.use("com.snake.App");
        send({type: "info", msg: "com.snake.App class found"});
    } catch(e) {
        send({type: "error", msg: "App class: " + e.message});
    }
});
"""

script = session.create_script(SCRIPT)

results = []
def on_message(message, data):
    if message["type"] == "send":
        p = message["payload"]
        results.append((p, data))
        t = p.get("type", "")
        if t == "KDF":
            print("\n  *** KDF SEEDS CAPTURED! ***")
            print("      seed1 = 0x{:x}".format(p["seed1"]))
            print("      seed2 = {}".format(p["seed2"]))
        elif t == "AES_OUT":
            txt = p.get("text", "")
            print("  [AES-OUT] len={}".format(p["len"]))
            if txt:
                print("    PLAINTEXT: {}".format(repr(txt[:300])))
            if data:
                print("    HEX: {}".format(data.hex()[:96]))
        elif t == "AES_IN":
            print("  [AES-IN] len={} hex={}".format(p["len"], data.hex()[:32] if data else ""))
        elif t == "STR":
            print("  [NATIVE-STR] ilil({}) = {}".format(p["i"], repr(p["v"])))
        elif t == "CHL":
            print("  [LICENSE] chl(byte[{}]) = {}".format(p["len"], p["ok"]))
        elif t == "GCUID":
            print("  [GCUID] gcuid({}) = {}".format(p.get("in"), p.get("out")))
        elif t == "DLOPEN":
            print("  [LOAD] {}".format(p["path"]))
        elif t == "info":
            print("  [i] {}".format(p["msg"]))
        elif t == "error":
            print("  [!] {}".format(p["msg"]))
    elif message["type"] == "error":
        print("  [ERR] {}".format(message.get("description", "?")[:200]))

script.on("message", on_message)
script.load()

# Resume the app
device.resume(pid)
print("[+] App resumed. Monitoring 40s...\n")
time.sleep(40)

print("\n" + "="*60)
kdf_r = [(r,d) for r,d in results if r.get("type") == "KDF"]
aes_r = [(r,d) for r,d in results if r.get("type") in ("AES_IN", "AES_OUT")]
str_r = [(r,d) for r,d in results if r.get("type") == "STR"]
chl_r = [(r,d) for r,d in results if r.get("type") == "CHL"]
dl_r = [(r,d) for r,d in results if r.get("type") == "DLOPEN"]
print("Libraries loaded: {}".format(len(dl_r)))
print("KDF seeds: {}".format(len(kdf_r)))
print("AES ops: {}".format(len(aes_r)))
print("Native strings: {}".format(len(str_r)))
print("License checks: {}".format(len(chl_r)))
if str_r:
    print("\n--- Decrypted Native Strings ---")
    for s,_ in str_r[:20]:
        print("  [{}] {}".format(s["i"], repr(s["v"])))
if kdf_r:
    print("\n--- KDF Seeds ---")
    for k,_ in kdf_r:
        print("  seed1=0x{:x} seed2={}".format(k["seed1"], k["seed2"]))
if aes_r:
    print("\n--- AES Outputs ---")
    for a,d in [(r,da) for r,da in aes_r if r.get("type") == "AES_OUT"][:5]:
        print("  len={} text={}".format(a["len"], repr(a.get("text", "")[:100])))
print("="*60)
session.detach()
