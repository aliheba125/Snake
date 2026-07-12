"""
Patch ALL 7 candidate functions + set up DNS spoofing + MITM.
Then restart app and see if we can intercept the Cloud Run traffic.
"""
import frida, time, subprocess, os, threading, socket, ssl

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# 1. Set up DNS spoofing (hosts file)
HOST_IP = subprocess.run(["ip","addr","show","docker0"], capture_output=True, text=True).stdout
HOST_IP = [l.split()[1].split("/")[0] for l in HOST_IP.split("\n") if "inet " in l][0]
print(f"[1] Host IP: {HOST_IP}")
adb(f'sh -c "echo {HOST_IP} push-918010152455.europe-west1.run.app >> /etc/hosts"')
print("  DNS spoofing set")

# 2. Start MITM proxy (port 8443)
print("[2] Starting MITM on 8443...")
os.system("pkill -f mitm_run 2>/dev/null")
time.sleep(1)
os.system("rm -f /tmp/mitm_log.txt")
subprocess.Popen(["python3", "/tmp/mitm_run.py"], stdout=open("/tmp/mitm_stdout.txt","w"), stderr=subprocess.STDOUT)
time.sleep(2)

# 3. Start relay 443->8443 in background
print("[3] Starting relay 443->8443...")
def run_relay():
    os.system("sudo python3 -c \"\nimport socket,threading\ndef r(s,d):\n    try:\n        while True:\n            d2=s.recv(65536)\n            if not d2:break\n            d.sendall(d2)\n    except:pass\n    s.close();d.close()\nsrv=socket.socket()\nsrv.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)\nsrv.bind(('0.0.0.0',443))\nsrv.listen(5)\nsrv.settimeout(45)\nwhile True:\n    try:\n        c,a=srv.accept()\n        d=socket.create_connection(('127.0.0.1',8443))\n        threading.Thread(target=r,args=(c,d),daemon=True).start()\n        threading.Thread(target=r,args=(d,c),daemon=True).start()\n    except:break\n\"")

relay_thread = threading.Thread(target=run_relay, daemon=True)
relay_thread.start()
time.sleep(2)

# 4. Create script-mode config that patches ALL 7 functions
print("[4] Creating patch-all script...")
candidates = [0x4609a8, 0x460a9c, 0x460e5c, 0x460ec0, 0x461264, 0x461a6c, 0x468f44]
patch_js = """
var f = new File("/data/local/tmp/patch_log.txt", "w");
f.write("Patch-all started\\n");
var attempts = 0;
var iv = setInterval(function() {
    attempts++;
    var flutter = Process.findModuleByName("libflutter.so");
    if (flutter) {
        clearInterval(iv);
        f.write("libflutter at " + flutter.base + "\\n");
        var targets = [TARGETS];
        for (var i = 0; i < targets.length; i++) {
            try {
                Memory.patchCode(flutter.base.add(targets[i]), 8, function(code) {
                    code.writeU32(0x52800000);
                    code.add(4).writeU32(0xD65F03C0);
                });
                f.write("  patched 0x" + targets[i].toString(16) + "\\n");
            } catch(e) {
                f.write("  FAIL 0x" + targets[i].toString(16) + ": " + e + "\\n");
            }
        }
        f.write("All patches applied after " + attempts + " attempts\\n");
        f.flush();
    }
    if (attempts > 100) clearInterval(iv);
}, 50);
""".replace("TARGETS", ",".join([str(c) for c in candidates]))

adb("rm -f /data/local/tmp/patch_log.txt")
adb("touch /data/local/tmp/patch_log.txt; chmod 666 /data/local/tmp/patch_log.txt")

# Write script to device
import tempfile
with tempfile.NamedTemporaryFile(mode='w', suffix='.js', delete=False) as tmp:
    tmp.write(patch_js)
    tmp_path = tmp.name

subprocess.run(["adb","push",tmp_path,"/system/lib64/libskia_net.js"], capture_output=True, timeout=5)

# Switch to script mode
adb('sh -c \'echo {"interaction":{"type":"script","path":"/system/lib64/libskia_net.js","on_change":"ignore"}} > /system/lib64/libskia_android.config.so\'')

# 5. Restart app
print("[5] Restarting app with patch-all script...")
adb("am force-stop com.snake")
time.sleep(2)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")

print("[6] Waiting 25s for connections...")
time.sleep(25)

# 6. Check results
print("\n=== PATCH LOG ===")
print(adb("cat /data/local/tmp/patch_log.txt"))

print("\n=== APP STATUS ===")
print(adb("ps -A | grep snake"))

print("\n=== MITM LOG ===")
try:
    with open("/tmp/mitm_log.txt") as f:
        content = f.read()
    print(content[:3000] if content else "Empty")
except:
    print("No log file")

# Cleanup
print("\n=== CLEANUP ===")
adb("sed -i /push-918/d /etc/hosts")
os.system("pkill -f mitm_run 2>/dev/null")
print("Done.")
