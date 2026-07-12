import frida, sys, time

device = frida.get_usb_device(timeout=5)
print("[+] Connected to:", device.name)

# Attach to com.snake (the process with libengine.so loaded)
session = device.attach(38385)
print("[+] Attached to com.snake PID 38385")

SCRIPT = """
// libengine.so base from module enumeration
var libengine_base = null;
var modules = Process.enumerateModules();
for (var i = 0; i < modules.length; i++) {
    if (modules[i].name === "libengine.so") {
        libengine_base = modules[i].base;
        send({type: "info", msg: "libengine.so @ " + libengine_base + " size=" + modules[i].size});
        break;
    }
}

if (libengine_base) {
    // Hook KDF: FUN_00161788
    // But we need to account for the .text offset
    // .text starts at file offset 0x52150, virtual addr offset is same in PIE
    // Function VA = base + 0x161788
    var kdf_addr = libengine_base.add(0x161788);
    var aes_addr = libengine_base.add(0x160208);
    
    send({type: "info", msg: "KDF @ " + kdf_addr + ", AES @ " + aes_addr});
    
    try {
        Interceptor.attach(kdf_addr, {
            onEnter: function(args) {
                var seed1 = args[1].toUInt32() >>> 0;
                var seed2 = args[2];
                send({type: "KDF", seed1: seed1, seed2: seed2.toString()});
            }
        });
        send({type: "info", msg: "KDF hook installed"});
    } catch(e) {
        send({type: "error", msg: "KDF hook failed: " + e.message});
    }
    
    try {
        Interceptor.attach(aes_addr, {
            onEnter: function(args) {
                this.outVec = args[2];
                try {
                    var inPtr = args[1].readPointer();
                    var inEnd = args[1].add(8).readPointer();
                    var inLen = inEnd.sub(inPtr).toInt32();
                    if (inLen > 0 && inLen < 65536) {
                        send({type: "AES_IN", len: inLen}, inPtr.readByteArray(Math.min(inLen, 64)));
                    }
                } catch(ex) {}
            },
            onLeave: function(ret) {
                try {
                    var outPtr = this.outVec.readPointer();
                    var outEnd = this.outVec.add(8).readPointer();
                    var outLen = outEnd.sub(outPtr).toInt32();
                    if (outLen > 0 && outLen < 65536) {
                        var txt = null;
                        try { txt = outPtr.readUtf8String(Math.min(outLen, 512)); } catch(e2) {}
                        send({type: "AES_OUT", len: outLen, text: txt}, outPtr.readByteArray(Math.min(outLen, 128)));
                    }
                } catch(ex) {}
            }
        });
        send({type: "info", msg: "AES hook installed"});
    } catch(e) {
        send({type: "error", msg: "AES hook failed: " + e.message});
    }
} else {
    send({type: "error", msg: "libengine.so not found in process"});
}

// Hook Java Native methods
Java.perform(function() {
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native["ilil"].implementation = function(i) {
            var result = this["ilil"](i);
            send({type: "STR", i: i, v: result});
            return result;
        };
        send({type: "info", msg: "ilil hooked"});
    } catch(e) {
        send({type: "error", msg: "ilil: " + e.message});
    }
    
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native["chl"].implementation = function(b) {
            var result = this["chl"](b);
            send({type: "CHL", len: b.length, ok: result});
            return result;
        };
        send({type: "info", msg: "chl hooked"});
    } catch(e) {
        send({type: "error", msg: "chl: " + e.message});
    }
    
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native["gcuid"].implementation = function(i) {
            var result = this["gcuid"](i);
            send({type: "GCUID", input: i, result: result});
            return result;
        };
        send({type: "info", msg: "gcuid hooked"});
    } catch(e) {
        send({type: "error", msg: "gcuid: " + e.message});
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
            print("\n  *** KDF SEEDS ***  seed1=0x{:x} seed2={}".format(p["seed1"], p["seed2"]))
        elif t == "AES_IN":
            print("  [AES-IN] len={} hex={}".format(p["len"], data.hex()[:64] if data else "?"))
        elif t == "AES_OUT":
            txt = p.get("text", "")
            print("  [AES-OUT] len={}".format(p["len"]))
            if txt:
                print("    TEXT: {}".format(repr(txt[:300])))
            if data:
                print("    HEX: {}".format(data.hex()[:128]))
        elif t == "STR":
            print("  [STR] ilil({}) = {}".format(p["i"], repr(p["v"])))
        elif t == "CHL":
            print("  [CHL] chl(byte[{}]) = {}".format(p["len"], p["ok"]))
        elif t == "GCUID":
            print("  [GCUID] gcuid({}) = {}".format(p["input"], p["result"]))
        elif t == "info":
            print("  [i]", p["msg"])
        elif t == "error":
            print("  [!]", p["msg"])
    elif message["type"] == "error":
        print("  [SCRIPT-ERR]", message.get("description", "?")[:300])

script.on("message", on_message)
script.load()
print("[+] Script loaded. Monitoring 30s...\n")
time.sleep(30)

print("\n" + "="*60)
print("RESULTS: {} messages".format(len(results)))
kdf_msgs = [r for r,_ in results if r.get("type") == "KDF"]
aes_msgs = [r for r,_ in results if r.get("type") in ("AES_IN", "AES_OUT")]
str_msgs = [r for r,_ in results if r.get("type") == "STR"]
chl_msgs = [r for r,_ in results if r.get("type") == "CHL"]
print("  KDF seeds captured:", len(kdf_msgs))
print("  AES operations:", len(aes_msgs))
print("  Decrypted strings:", len(str_msgs))
print("  License checks:", len(chl_msgs))
if str_msgs:
    print("\n  --- Decrypted Strings ---")
    for s,_ in [(r,d) for r,d in results if r.get("type") == "STR"][:20]:
        print("    [{}] = {}".format(s["i"], repr(s["v"])))
if kdf_msgs:
    print("\n  --- KDF Seeds ---")
    for k in kdf_msgs:
        print("    seed1=0x{:x} seed2={}".format(k["seed1"], k["seed2"]))
print("="*60)
session.detach()
