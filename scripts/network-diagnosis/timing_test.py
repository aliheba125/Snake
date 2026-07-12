import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"],capture_output=True,timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")

detach_info = {"reason": None, "time": None}
t0 = time.time()

def on_detach(reason, crash):
    detach_info["reason"] = reason
    detach_info["time"] = time.time() - t0
    print("  [DETACH t+{:.1f}s] {}".format(detach_info["time"], reason))

session.on("detached", on_detach)
print("[+] Attached at t=0")

JS = 'var e=Process.findModuleByName("libengine.so");'
JS += 'Interceptor.attach(e.base.add(0x161788),{onEnter:function(a){send("KDF")}});'
JS += 'send("hook_done");'

sc = session.create_script(JS)
msgs = []
sc.on("message", lambda m,d: msgs.append((time.time()-t0, m)))
sc.load()
time.sleep(1)

print("  Messages after load:")
for t, m in msgs:
    print("    t+{:.1f}s: {}".format(t, m.get("payload", m.get("description","?"))))

# Check alive every second
for i in range(15):
    time.sleep(1)
    elapsed = time.time() - t0
    ps = subprocess.run(["adb","shell","ps -A | grep com.snake$"],capture_output=True,text=True,timeout=5).stdout.strip()
    alive = bool(ps)
    
    if not alive:
        print("  *** PROCESS DEAD at t+{:.1f}s ***".format(elapsed))
        print("  Detach info: {}".format(detach_info))
        break
    
    if i == 6:
        print("  [t+{:.1f}s] Process alive. Tapping game...".format(elapsed))
        subprocess.run(["adb","shell","input tap 145 780"],capture_output=True,timeout=5)
    else:
        if i % 3 == 0:
            print("  [t+{:.1f}s] alive".format(elapsed))

print("\nFinal messages:")
for t, m in msgs:
    print("  t+{:.1f}s: {}".format(t, m.get("payload", m.get("description","?"))))

print("\nDetach: {}".format(detach_info))
try:
    session.detach()
except:
    pass
