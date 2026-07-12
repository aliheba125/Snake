#!/usr/bin/env python3
"""Test: does entering an activation code trigger a network request?"""
import frida, time, subprocess, sys

SCRIPT = r"""
'use strict';
var libc = Process.getModuleByName("libc.so");
var gai = libc.findExportByName("getaddrinfo");
var t0 = Date.now();
if (gai) {
    Interceptor.attach(gai, {
        onEnter: function(args) {
            var ts = Date.now() - t0;
            try {
                var h = args[0].isNull() ? "(null)" : args[0].readCString();
                send({t:"DNS", ts:ts, host:h});
            } catch(e){}
        }
    });
}
send({t:"ready", ts:0});
"""

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)
device=None
for i in range(90):
    time.sleep(0.06)
    try:
        d=frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        if d.enumerate_processes(): device=d; break
    except: pass
if not device: print("no gadget"); sys.exit(1)

msgs=[]
def on_msg(m,data):
    if m["type"]=="send":
        p=m["payload"]
        msgs.append(p)
        if p.get("t")=="DNS":
            print(f"  [+{p.get('ts')}ms] DNS: {p.get('host')}")
            sys.stdout.flush()

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on("message",on_msg); sc.load()
print("[*] Hooks installed. Waiting for app boot...")
time.sleep(8)

dns_boot = len([m for m in msgs if m.get("t")=="DNS"])
print(f"\n[*] DNS calls during boot: {dns_boot}")
print("[*] Navigating to Entry Key and entering code '999999'...")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","140","97"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","360","1117"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","input","tap","160","585"], timeout=5)
time.sleep(0.5)
subprocess.run(["adb","-s","localhost:5555","shell","input","text","999999"], timeout=5)
time.sleep(1)

dns_before = len([m for m in msgs if m.get("t")=="DNS"])
print(f"[*] DNS calls before Activate: {dns_before}")
print("[*] Tapping Activate...")

subprocess.run(["adb","-s","localhost:5555","shell","input","tap","490","745"], timeout=5)
time.sleep(5)

dns_after = len([m for m in msgs if m.get("t")=="DNS"])
new_dns = dns_after - dns_before
print(f"[*] DNS calls after Activate: {dns_after}")
print(f"[*] NEW DNS calls from Activate: {new_dns}")
if new_dns > 0:
    print("[!!!] NETWORK REQUEST triggered during code validation!")
    for m in msgs:
        if m.get("t")=="DNS" and m.get("ts",0) > 8000:
            print(f"    -> {m.get('host')} @ +{m.get('ts')}ms")
else:
    print("[*] NO network request — code validation is LOCAL (offline)!")

try: session.detach()
except: pass
