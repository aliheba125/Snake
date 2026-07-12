import frida
import time
import subprocess

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Restart app
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"])
time.sleep(3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"])
time.sleep(12)

result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
pid = int(result.stdout.strip())
print(f"PID: {pid}")

session = device.attach(pid)
detached_info = [False, None, 0]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r
    detached_info[2] = time.time()

session.on("detached", on_d)

# Test: hook ONLY connect (single libc hook)
js = '''
var libc = Process.findModuleByName("libc.so");
var connect_ptr = libc.findExportByName("connect");
send("connect_ptr=" + connect_ptr);
Interceptor.attach(connect_ptr, {
    onEnter: function(args) {
        send("connect called fd=" + args[0].toInt32());
    }
});
send("single hook installed");
'''

msgs = []

def on_msg(m, d):
    if m["type"] == "send":
        msgs.append(str(m["payload"]))
    elif m["type"] == "error":
        msgs.append("[ERR] " + str(m.get("description", "")))

script = session.create_script(js)
script.on("message", on_msg)
t0 = time.time()
script.load()
print("Hook loaded. Waiting 15s...")

for i in range(15):
    time.sleep(1)
    if detached_info[0]:
        dt = detached_info[2] - t0
        print(f"DETACHED after {dt:.1f}s reason={detached_info[1]}")
        break
else:
    print("Still alive after 15s!")
    try:
        script.unload()
        session.detach()
    except:
        pass

print(f"\nMessages ({len(msgs)}):")
for m in msgs:
    print(f"  {m}")
