import frida
import time
import sys

results = []

def on_message(message, data):
    if message["type"] == "send":
        results.append(str(message["payload"]))
    elif message["type"] == "error":
        results.append("[ERR] " + str(message.get("description", "?")))

JS_CODE = '''
send("arch=" + Process.arch);

var libc = Process.findModuleByName("libc.so");
send("libc=" + libc.base);

// Use module object directly to find exports
var dlopen_ptr = libc.findExportByName("dlopen");
send("dlopen=" + dlopen_ptr);

var dlopen_ext_ptr = libc.findExportByName("android_dlopen_ext");
send("android_dlopen_ext=" + dlopen_ext_ptr);

var dlsym_ptr = libc.findExportByName("dlsym");
send("dlsym=" + dlsym_ptr);

var connect_ptr = libc.findExportByName("connect");
send("connect=" + connect_ptr);

// Find libssl
var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") {
        ssl_mod = mods[i];
        break;
    }
}
if (ssl_mod) {
    send("libssl=" + ssl_mod.base + " " + ssl_mod.path);
    var ssl_read_ptr = ssl_mod.findExportByName("SSL_read");
    send("SSL_read=" + ssl_read_ptr);
    var ssl_write_ptr = ssl_mod.findExportByName("SSL_write");
    send("SSL_write=" + ssl_write_ptr);
} else {
    send("libssl NOT FOUND");
}

send("ENUM_DONE");
'''

pid = int(sys.argv[1])
device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
print(f"Attaching to PID {pid}...")
session = device.attach(pid)
script = session.create_script(JS_CODE)
script.on("message", on_message)
script.load()
time.sleep(3)
script.unload()
session.detach()

print(f"\nResults ({len(results)} messages):")
for r in results:
    print(f"  {r}")
