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
send("hello");
send("arch=" + Process.arch + " platform=" + Process.platform);

var libc = Process.findModuleByName("libc.so");
send("libc: " + (libc ? libc.base + " " + libc.path : "NOT FOUND"));

var dlopen_ptr = Module.findExportByName("libc.so", "dlopen");
send("dlopen=" + dlopen_ptr);

var dlopen_ext_ptr = Module.findExportByName("libc.so", "android_dlopen_ext");
send("android_dlopen_ext=" + dlopen_ext_ptr);

var dlsym_ptr = Module.findExportByName("libc.so", "dlsym");
send("dlsym=" + dlsym_ptr);

var connect_ptr = Module.findExportByName("libc.so", "connect");
send("connect=" + connect_ptr);

var ssl = Process.findModuleByName("libssl.so");
send("libssl: " + (ssl ? ssl.base + " " + ssl.path : "NOT FOUND"));

var ssl_read_ptr = Module.findExportByName("libssl.so", "SSL_read");
send("SSL_read=" + ssl_read_ptr);

var ssl_write_ptr = Module.findExportByName("libssl.so", "SSL_write");
send("SSL_write=" + ssl_write_ptr);
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
