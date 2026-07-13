import frida, time, subprocess, json, sys
CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)

sh("adb","-s","localhost:5555","shell","am","force-stop","com.snake"); time.sleep(1.5)
sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
print("[*] wait 14s..."); time.sleep(14)
pid = int(sh("adb","-s","localhost:5555","shell","pidof","com.snake").stdout.strip().split()[0])
print("[*] PID:", pid)
device = frida.get_device_manager().add_remote_device("localhost:27042")
session = device.attach(pid)
script = session.create_script(open("/tmp/agent_ilil_hook.js").read())
msgs=[]
def on_msg(m,d):
    if m["type"]=="send":
        p=m["payload"]; msgs.append(p); t=p.get("t","")
        if t=="HOOKED": print("  [hooked ilil=%s djp=%s]" % (p.get("ilil"),p.get("djp")))
        elif t=="LOG":
            r=p.get("rec",{})
            print("  %s idx=%s(%s) armed=%s ret=%r" % (r.get("fn"), r.get("idx"), r.get("idxHex"), r.get("armed"), r.get("ret")))
    elif m["type"]=="error": print("  [ERR]", str(m.get("description",""))[:200])
script.on("message", on_msg)
script.load()
time.sleep(2)
sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"); time.sleep(2)
sh("adb","-s","localhost:5555","shell","input","swipe","140","100","141","101","100"); time.sleep(3)
sh("adb","-s","localhost:5555","shell","input","tap","360","1117"); time.sleep(2)
sh("adb","-s","localhost:5555","shell","input","tap","165","590"); time.sleep(0.5)
for dch in CODE:
    sh("adb","-s","localhost:5555","shell","input","keyevent",str(7+int(dch))); time.sleep(0.15)
time.sleep(0.4)
print("[*] ARM + Activate (%s)!" % CODE)
try: script.exports_sync.arm()
except Exception as e: print("arm fail",e)
time.sleep(0.3)
sh("adb","-s","localhost:5555","shell","input","tap","495","745")
print("[*] wait 12s..."); time.sleep(12)
try:
    lg = script.exports_sync.getlog()
    armed=[x for x in lg if x.get("armed")]
    print("\n=== ilil/djp CALLS AFTER ACTIVATE (%d) ===" % len(armed))
    for x in armed: print("  %s" % json.dumps(x))
    with open("/tmp/ilil_hook.json","w") as f: json.dump(lg,f,indent=2)
    print("[*] saved (total %d calls)" % len(lg))
except Exception as e: print("getlog fail",e)
session.detach()
