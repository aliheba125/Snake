import frida, time, sys

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget")

SCRIPT = r"""
send({t: "info", msg: "PID=" + Process.id + " Java.available=" + Java.available});

// Install native hooks first (KDF + AES on libengine if loaded)
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
    send({t: "info", msg: "libengine hooks installed @ " + eng.base});
}

// Now use Java to send VM IPC to trigger game load
if (Java.available) {
    Java.perform(function() {
        send({t: "info", msg: "Java.perform OK!"});
        
        var app = Java.use("android.app.ActivityThread").currentApplication();
        var ctx = app.getApplicationContext();
        send({t: "info", msg: "Package: " + ctx.getPackageName()});
        
        var Uri = Java.use("android.net.Uri");
        var Bundle = Java.use("android.os.Bundle");
        var resolver = ctx.getContentResolver();
        var uri = Uri.parse("content://com.snake.helper.SystemCallProvider");
        
        // Send VM IPC
        var bundle = Bundle.$new();
        bundle.putString("_S_|_server_name_", "com.miniclip.eightballpool");
        
        send({t: "info", msg: "Calling SystemCallProvider VM..."});
        try {
            var result = resolver.call(uri, "VM", null, bundle);
            if (result) {
                var keys = result.keySet().toArray();
                var out = {};
                for (var i = 0; i < keys.length; i++) {
                    try { out[""+keys[i]] = ""+result.get(""+keys[i]); } catch(e) {}
                }
                send({t: "VM_RESULT", data: out});
            } else {
                send({t: "VM_RESULT", data: "null"});
            }
        } catch(e) {
            send({t: "VM_ERROR", msg: ""+e});
        }
        
        // Also try launching ProxyActivity with game intent
        try {
            var Intent = Java.use("android.content.Intent");
            var ComponentName = Java.use("android.content.ComponentName");
            var intent = Intent.$new();
            intent.setComponent(ComponentName.$new("com.snake", "com.snake.helper.ProxyActivity"));
            intent.putExtra("game_package", "com.miniclip.eightballpool");
            intent.putExtra("pkg", "com.miniclip.eightballpool");
            intent.addFlags(0x10000000);
            ctx.startActivity(intent);
            send({t: "info", msg: "ProxyActivity started!"});
        } catch(e) {
            send({t: "info", msg: "ProxyActivity: " + e});
        }
    });
} else {
    send({t: "info", msg: "Java NOT available in this process"});
}
"""

results = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        results.append((p, d))
        t = p.get("t","")
        if t == "KDF":
            print("\n  *** KDF SEEDS: seed1=0x{:x} seed2={} ***".format(p["s1"], p["s2"]))
        elif t == "AES_OUT":
            txt = p.get("txt","")
            print("  [AES-OUT] len={} txt={}".format(p["len"], repr(txt[:200]) if txt else ""))
            if d: print("    hex={}".format(d.hex()[:64]))
        elif t == "VM_RESULT":
            print("  [VM] Result: {}".format(p["data"]))
        elif t == "VM_ERROR":
            print("  [VM-ERR] {}".format(p["msg"][:300]))
        elif t == "info":
            print("  [i] {}".format(p["msg"]))
        elif t == "error":
            print("  [!] {}".format(p["msg"]))
    elif m["type"] == "error":
        print("  [ERR] {}".format(m.get("description","?")[:300]))

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
print("[+] Script loaded. Waiting 30s for activity...")
time.sleep(30)

print("\n=== {} messages ===".format(len(results)))
kdf = [p for p,_ in results if p.get("t") == "KDF"]
aes = [p for p,_ in results if p.get("t") == "AES_OUT"]
print("  KDF: {}  AES: {}".format(len(kdf), len(aes)))
if kdf:
    for k in kdf:
        print("  seed1=0x{:x} seed2={}".format(k["s1"], k["s2"]))
session.detach()
