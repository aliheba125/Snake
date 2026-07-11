import frida, time, sys

device = frida.get_usb_device(timeout=5)
procs = [p for p in device.enumerate_processes() if "snake" in p.name.lower() and "engine" not in p.name]
if not procs:
    print("[-] Main process not found")
    sys.exit(1)

s = device.attach(procs[0].pid)
print("[+] Attached to main PID", procs[0].pid)

SCRIPT = r"""
Java.perform(function() {
    var app = Java.use("android.app.ActivityThread").currentApplication();
    var ctx = app.getApplicationContext();
    send({t: "info", msg: "Got context: " + ctx.getPackageName()});

    var Uri = Java.use("android.net.Uri");
    var Bundle = Java.use("android.os.Bundle");
    var resolver = ctx.getContentResolver();
    var uri = Uri.parse("content://com.snake.helper.SystemCallProvider");

    // Try calling with VM command to trigger game load
    var bundle = Bundle.$new();
    bundle.putString("_S_|_server_name_", "com.miniclip.eightballpool");

    send({t: "info", msg: "Sending VM IPC to engine..."});
    try {
        var result = resolver.call(uri, "VM", null, bundle);
        if (result) {
            var keys = result.keySet().toArray();
            var data = {};
            for (var i = 0; i < keys.length; i++) {
                data[keys[i]] = "" + result.get(keys[i]);
            }
            send({t: "IPC_OK", data: data});
        } else {
            send({t: "IPC_OK", data: "null result"});
        }
    } catch(e) {
        send({t: "IPC_ERR", msg: "" + e});
    }

    // Also try to find and call the game launch intent
    try {
        var Intent = Java.use("android.content.Intent");
        var ComponentName = Java.use("android.content.ComponentName");
        // Try launching the ProxyActivity which is the game container
        var intent = Intent.$new();
        intent.setComponent(ComponentName.$new("com.snake", "com.snake.helper.ProxyActivity"));
        intent.putExtra("game_package", "com.miniclip.eightballpool");
        intent.addFlags(0x10000000); // FLAG_ACTIVITY_NEW_TASK
        try {
            ctx.startActivity(intent);
            send({t: "info", msg: "ProxyActivity started with game_package extra"});
        } catch(e2) {
            send({t: "info", msg: "ProxyActivity launch: " + e2});
        }
    } catch(e) {
        send({t: "error", msg: "Intent: " + e});
    }
});
"""

res = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        res.append(p)
        t = p.get("t","")
        if t == "IPC_OK":
            print("  [IPC-OK]", p.get("data"))
        elif t == "IPC_ERR":
            print("  [IPC-ERR]", p["msg"][:300])
        elif t == "info":
            print("  [i]", p["msg"])
        elif t == "error":
            print("  [!]", p["msg"])
    elif m["type"] == "error":
        print("  [ERR]", m.get("description","?")[:300])

sc = s.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(10)
print("\nResults:", len(res), "messages")
s.detach()
