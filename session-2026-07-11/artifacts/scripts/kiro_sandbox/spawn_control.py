import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Control test: spawn a benign app to see if frida spawn works at all on this Redroid
targets = ["com.android.settings", "com.android.calculator2", "com.android.deskclock"]

for target in targets:
    print(f"\n=== Testing spawn: {target} ===")
    try:
        subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", target],
                       capture_output=True)
        time.sleep(1)
        pid = device.spawn([target])
        print(f"  Spawned PID={pid}")
        session = device.attach(pid)
        terminated = [False, None]
        def on_d(r, c):
            terminated[0] = True
            terminated[1] = r
        session.on("detached", on_d)
        script = session.create_script('send("[alive] pid=" + Process.id);')
        got = []
        script.on("message", lambda m, d: got.append(m.get("payload", "")))
        script.load()
        device.resume(pid)
        for i in range(15):
            time.sleep(0.2)
            if terminated[0]:
                break
        if terminated[0]:
            print(f"  >>> TERMINATED at +{i*0.2:.1f}s reason={terminated[1]}")
        else:
            print(f"  >>> SURVIVED 3s (spawn works). msg={got}")
            try:
                script.unload()
                session.detach()
            except:
                pass
    except Exception as e:
        print(f"  ERROR: {e}")
