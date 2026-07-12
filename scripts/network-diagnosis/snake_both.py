import frida, sys, time

device = frida.get_usb_device(timeout=5)
print("[+] Connected to:", device.name)

# Attach to BOTH processes
# Process 38385 has libengine.so (native hooks)
# Process 38108 is the main Flutter/Dart process (Java hooks)

session_engine = device.attach(38385)
print("[+] Attached to com.snake (engine) PID 38385")

session_main = device.attach(38108)
print("[+] Attached to Snake Engine (main) PID 38108")

# Native hooks on the engine process
ENGINE_SCRIPT = """
var libengine_base = null;
var modules = Process.enumerateModules();
for (var i = 0; i < modules.length; i++) {
    if (modules[i].name === "libengine.so") {
        libengine_base = modules[i].base;
        break;
    }
}

if (libengine_base) {
    send({type: "info", msg: "libengine.so @ " + libengine_base});
    
    Interceptor.attach(libengine_base.add(0x161788), {
        onEnter: function(args) {
            send({type: "KDF", seed1: args[1].toUInt32() >>> 0, seed2: args[2].toString()});
        }
    });
    
    Interceptor.attach(libengine_base.add(0x160208), {
        onEnter: function(args) {
            this.outVec = args[2];
            try {
                var p = args[1].readPointer();
                var e = args[1].add(8).readPointer();
                var l = e.sub(p).toInt32();
                if (l > 0 && l < 65536)
                    send({type: "AES_IN", len: l}, p.readByteArray(Math.min(l, 64)));
            } catch(ex) {}
        },
        onLeave: function(ret) {
            try {
                var p = this.outVec.readPointer();
                var e = this.outVec.add(8).readPointer();
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
} else {
    send({type: "error", msg: "libengine not found"});
}
"""

# Java hooks on the main process
JAVA_SCRIPT = """
Java.perform(function() {
    try {
        var Native = Java.use("com.snake.helper.Native");
        Native["ilil"].implementation = function(i) {
            var result = this["ilil"](i);
            send({type: "STR", i: i, v: result});
            return result;
        };
        send({type: "info", msg: "ilil hooked on main process"});
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
        send({type: "info", msg: "chl hooked on main process"});
    } catch(e) {
        send({type: "error", msg: "chl: " + e.message});
    }
    
    // Also check modules in main process
    var mods = Process.enumerateModules();
    for (var i = 0; i < mods.length; i++) {
        if (mods[i].name.indexOf("libengine") !== -1 || mods[i].name.indexOf("libapp") !== -1 || mods[i].name.indexOf("libflutter") !== -1) {
            send({type: "module", name: mods[i].name, base: mods[i].base.toString(), size: mods[i].size});
        }
    }
});
"""

results = {"engine": [], "main": []}

def on_engine_msg(message, data):
    if message["type"] == "send":
        p = message["payload"]
        results["engine"].append((p, data))
        t = p.get("type", "")
        if t == "KDF":
            print("\n  *** KDF *** seed1=0x{:x} seed2={}".format(p["seed1"], p["seed2"]))
        elif t == "AES_OUT":
            txt = p.get("text", "")
            print("  [AES-OUT] len={}".format(p["len"]))
            if txt:
                print("    TEXT: {}".format(repr(txt[:200])))
            if data:
                print("    HEX: {}".format(data.hex()[:64]))
        elif t == "AES_IN":
            print("  [AES-IN] len={} hex={}".format(p["len"], data.hex()[:32] if data else ""))
        elif t == "info":
            print("  [engine]", p["msg"])
        elif t == "error":
            print("  [engine-ERR]", p["msg"])
    elif message["type"] == "error":
        print("  [engine-SCRIPT-ERR]", message.get("description", "?")[:200])

def on_main_msg(message, data):
    if message["type"] == "send":
        p = message["payload"]
        results["main"].append((p, data))
        t = p.get("type", "")
        if t == "STR":
            print("  [STR] ilil({}) = {}".format(p["i"], repr(p["v"])))
        elif t == "CHL":
            print("  [CHL] chl(byte[{}]) = {}".format(p["len"], p["ok"]))
        elif t == "module":
            print("  [main-LIB] {} @ {} ({})".format(p["name"], p["base"], p["size"]))
        elif t == "info":
            print("  [main]", p["msg"])
        elif t == "error":
            print("  [main-ERR]", p["msg"])
    elif message["type"] == "error":
        print("  [main-SCRIPT-ERR]", message.get("description", "?")[:200])

script_e = session_engine.create_script(ENGINE_SCRIPT)
script_e.on("message", on_engine_msg)
script_e.load()

script_m = session_main.create_script(JAVA_SCRIPT)
script_m.on("message", on_main_msg)
script_m.load()

print("\n[+] Both scripts loaded. Monitoring 30s...")
print("[*] The app is running - hooks will fire on crypto/native calls\n")
time.sleep(30)

print("\n" + "="*60)
eng_kdf = [r for r,_ in results["engine"] if r.get("type") == "KDF"]
eng_aes = [r for r,_ in results["engine"] if r.get("type") in ("AES_IN", "AES_OUT")]
main_str = [r for r,_ in results["main"] if r.get("type") == "STR"]
main_chl = [r for r,_ in results["main"] if r.get("type") == "CHL"]
print("ENGINE: KDF={} AES={}".format(len(eng_kdf), len(eng_aes)))
print("MAIN:   STR={} CHL={}".format(len(main_str), len(main_chl)))
if main_str:
    print("\nDecrypted strings:")
    for s,_ in [(r,d) for r,d in results["main"] if r.get("type") == "STR"][:15]:
        print("  [{}] = {}".format(s["i"], repr(s["v"])))
if eng_kdf:
    print("\nKDF Seeds:")
    for k,_ in [(r,d) for r,d in results["engine"] if r.get("type") == "KDF"]:
        print("  seed1=0x{:x} seed2={}".format(k["seed1"], k["seed2"]))
print("="*60)

session_engine.detach()
session_main.detach()
