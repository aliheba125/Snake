import frida, sys, time

device = frida.get_usb_device(timeout=5)
print("[+] Connected to:", device.name)

target = None
for p in device.enumerate_processes():
    if "snake" in p.name.lower() or "com.snake" in p.name:
        target = p
        print("[+] Found:", p.name, "PID=", p.pid)

if not target:
    print("[-] Snake Engine not running")
    sys.exit(1)

session = device.attach(target.pid)
print("[+] Attached to PID", target.pid)

SIMPLE_SCRIPT = """
var modules = Process.enumerateModules();
for (var i = 0; i < modules.length; i++) {
    var m = modules[i];
    if (m.name.indexOf("libapp") !== -1 || m.name.indexOf("libengine") !== -1 || m.name.indexOf("libflutter") !== -1) {
        send({type: "module", name: m.name, base: m.base.toString(), size: m.size});
    }
}

var libengine = Module.findBaseAddress("libengine.so");
if (libengine) {
    send({type: "info", msg: "libengine.so found at " + libengine});
    
    // Hook KDF (FUN_00161788)
    try {
        Interceptor.attach(libengine.add(0x161788), {
            onEnter: function(args) {
                var seed1 = args[1].toUInt32() >>> 0;
                var seed2 = args[2].toString();
                send({type: "KDF_SEEDS", seed1: "0x" + seed1.toString(16), seed2: seed2});
            }
        });
        send({type: "info", msg: "KDF hook OK"});
    } catch(e) {
        send({type: "error", msg: "KDF hook: " + e});
    }
    
    // Hook AES (FUN_00160208)
    try {
        Interceptor.attach(libengine.add(0x160208), {
            onEnter: function(args) {
                this.outVec = args[2];
                try {
                    var inBegin = args[1].readPointer();
                    var inEnd = args[1].add(Process.pointerSize).readPointer();
                    var inLen = inEnd.sub(inBegin).toInt32();
                    if (inLen > 0 && inLen < 0x100000) {
                        send({type: "AES_IN", len: inLen}, inBegin.readByteArray(Math.min(inLen, 64)));
                    }
                } catch(e) {}
            },
            onLeave: function(retval) {
                try {
                    var outBegin = this.outVec.readPointer();
                    var outEnd = this.outVec.add(Process.pointerSize).readPointer();
                    var outLen = outEnd.sub(outBegin).toInt32();
                    if (outLen > 0 && outLen < 0x100000) {
                        var text = null;
                        try { text = outBegin.readUtf8String(Math.min(outLen, 512)); } catch(e2) {}
                        send({type: "AES_OUT", len: outLen, text: text}, outBegin.readByteArray(Math.min(outLen, 128)));
                    }
                } catch(e) {}
            }
        });
        send({type: "info", msg: "AES hook OK"});
    } catch(e) {
        send({type: "error", msg: "AES hook: " + e});
    }
} else {
    send({type: "info", msg: "libengine.so NOT loaded in this process"});
}

// Hook Java layer
Java.perform(function() {
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native.ilil.implementation = function(i) {
            var result = this.ilil(i);
            send({type: "native_str", idx: i, val: result});
            return result;
        };
        send({type: "info", msg: "Native.ilil hooked"});
    } catch(e) {
        send({type: "error", msg: "ilil: " + e});
    }

    try {
        var Native = Java.use("com.snake.helper.Native");
        Native.chl.implementation = function(b) {
            var result = this.chl(b);
            send({type: "license", len: b.length, ok: result});
            return result;
        };
        send({type: "info", msg: "Native.chl hooked"});
    } catch(e) {
        send({type: "error", msg: "chl: " + e});
    }
});
"""

script = session.create_script(SIMPLE_SCRIPT)

results = []
def on_message(message, data):
    if message["type"] == "send":
        p = message["payload"]
        results.append(p)
        t = p.get("type", "")
        if t == "module":
            print("  [LIB]", p["name"], "@", p["base"], "size=", p["size"])
        elif t == "KDF_SEEDS":
            print("\n  *** KDF SEEDS CAPTURED ***")
            print("      seed1 =", p["seed1"])
            print("      seed2 =", p["seed2"])
        elif t == "AES_IN":
            hex_str = data.hex() if data else "?"
            print("  [AES-IN] len=", p["len"], "hex=", hex_str[:64])
        elif t == "AES_OUT":
            text = p.get("text", "")
            hex_str = data.hex() if data else "?"
            print("  [AES-OUT] len=", p["len"])
            if text and len(text) > 2:
                print("    TEXT:", repr(text[:300]))
            print("    HEX:", hex_str[:128])
        elif t == "native_str":
            print("  [STR]", p["idx"], "=", repr(p["val"]))
        elif t == "license":
            print("  [LICENSE] chl(byte[{}]) = {}".format(p["len"], p["ok"]))
        elif t == "info":
            print("  [INFO]", p["msg"])
        elif t == "error":
            print("  [ERR]", p["msg"])
    elif message["type"] == "error":
        desc = message.get("description", "unknown")
        print("  [SCRIPT-ERR]", desc[:200])

script.on("message", on_message)
script.load()
print("[+] Script loaded. Monitoring 20s...")
print("[*] Interact with the app to trigger crypto operations\n")
time.sleep(20)

print("\n=== DONE:", len(results), "messages ===")
kdf = [r for r in results if r.get("type") == "KDF_SEEDS"]
aes = [r for r in results if r.get("type") in ("AES_IN", "AES_OUT")]
strs = [r for r in results if r.get("type") == "native_str"]
print("  KDF seeds:", len(kdf))
print("  AES operations:", len(aes))
print("  Decrypted strings:", len(strs))
if strs:
    print("  Sample strings:")
    for s in strs[:10]:
        print("    [{}] = {}".format(s["idx"], repr(s["val"])))

session.detach()
