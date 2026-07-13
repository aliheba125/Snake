import frida, time, subprocess, json, sys

CODE = sys.argv[1] if len(sys.argv) > 1 else "135790"
def sh(*a): return subprocess.run(list(a), capture_output=True, text=True)

sh("adb","-s","localhost:5555","shell","am","force-stop","com.snake")
time.sleep(2)

device = frida.get_device_manager().add_remote_device("localhost:27042")
print("[*] Spawning com.snake ...")
pid = device.spawn(["com.snake"])
print("[*] spawned pid", pid)
session = device.attach(pid)
script = session.create_script(open("/tmp/agent_regnatives.js").read())
msgs=[]
def on_msg(m,d):
    if m["type"]=="send":
        p=m["payload"]; msgs.append(p); t=p.get("t","")
        if t=="FOUND_SYM": print("  [RegisterNatives sym %s @ %s]" % (p.get("name"), p.get("addr")))
        elif t=="HOOK_READY": print("  [hook ready]")
        elif t=="ATTACHED": print("  [ATTACHED %s @ %s]" % (p.get("name"), p.get("fn")))
        elif t=="LOG":
            r=p.get("rec",{})
            if r.get("ev")=="REG" and r.get("fnMod","").find("engine")>=0:
                print("  REG %-10s sig=%-28s -> %s %s" % (r.get("name"), r.get("sig"), r.get("fnMod"), r.get("fnOff")))
            elif r.get("ev")=="NATIVE_CALL":
                print("  >>> NATIVE_CALL %s %s" % (r.get("fn"), json.dumps({k:v for k,v in r.items() if k not in ("ts","ev","fn")})))
        elif t in ("NOSYM","GIVEUP","REG_ERR","ATTACH_ERR"): print("  [%s %s]" % (t, p))
    elif m["type"]=="error":
        print("  [ERR] "+str(m.get("description",""))[:200])
script.on("message", on_msg)
script.load()
device.resume(pid)
print("[*] resumed; waiting 16s for load...")
time.sleep(16)

sh("adb","-s","localhost:5555","shell","input","swipe","140","100","141","101","100"); time.sleep(3)
sh("adb","-s","localhost:5555","shell","input","tap","360","1117"); time.sleep(2)
sh("adb","-s","localhost:5555","shell","input","tap","165","590"); time.sleep(0.5)
for dch in CODE:
    sh("adb","-s","localhost:5555","shell","input","keyevent",str(7+int(dch))); time.sleep(0.15)
time.sleep(0.4)
print("[*] Activate (%s)!" % CODE)
sh("adb","-s","localhost:5555","shell","input","tap","495","745")
time.sleep(12)

try:
    lg = script.exports_sync.getlog()
    regs = [x for x in lg if x.get("ev")=="REG" and "engine" in (x.get("fnMod") or "")]
    calls = [x for x in lg if x.get("ev")=="NATIVE_CALL"]
    print("\n=== ENGINE-registered native methods (%d) ===" % len(regs))
    for x in regs: print("  %s" % json.dumps(x))
    print("\n=== NATIVE CALLS during activation (%d) ===" % len(calls))
    for x in calls: print("  %s" % json.dumps(x))
    with open("/tmp/regnatives_result.json","w") as f: json.dump(lg,f,indent=2)
    print("[*] saved /tmp/regnatives_result.json")
except Exception as e:
    print("getlog fail", e)
session.detach()
