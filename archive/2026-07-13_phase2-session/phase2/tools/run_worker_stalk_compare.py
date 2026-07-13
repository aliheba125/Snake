import frida, time, subprocess, json, sys

def run_test(CODE):
    print("\n" + "="*60)
    print("TEST WITH CODE: %s" % CODE)
    print("="*60)

    def sh(*a):
        return subprocess.run(list(a), capture_output=True, text=True)

    sh("adb","-s","localhost:5555","shell","am","force-stop","com.snake")
    time.sleep(1.5)
    sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
    print("[*] Waiting 14s for app load...")
    time.sleep(14)
    r = sh("adb","-s","localhost:5555","shell","pidof","com.snake")
    pid = int(r.stdout.strip().split()[0])
    print("[*] PID:", pid)

    device = frida.get_device_manager().add_remote_device("localhost:27042")
    session = device.attach(pid)
    with open("/tmp/agent_worker_stalk.js") as f:
        js = f.read()
    script = session.create_script(js)

    msgs = []
    hits = []
    def on_msg(m, d):
        if m["type"] == "send":
            p = m["payload"]
            msgs.append(p)
            t = p.get("t","")
            if t == "HIT":
                r = p.get("rec",{})
                hits.append(("HIT", r))
                print("  HIT  %-18s tid=%s x0=%s x19=%s x20=%s" % (r.get("tag"), r.get("tid"), r.get("x0"), r.get("x19"), r.get("x20")))
            elif t == "RET":
                r = p.get("rec",{})
                hits.append(("RET", r))
                print("  RET  %-18s tid=%s w0=%s" % (r.get("tag"), r.get("tid"), r.get("w0")))
            elif t == "PC_ENTER":
                print("  [pthread routine=%s]" % p.get("routine"))
            elif t == "ready":
                print("  [ready engBase=%s]" % p.get("engBase"))
            elif t == "HOOKS_INSTALLED":
                pass

    script.on("message", on_msg)
    script.load()
    time.sleep(2)

    sh("adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry")
    time.sleep(2)
    sh("adb","-s","localhost:5555","shell","input","swipe","140","100","141","101","100")
    time.sleep(3)
    sh("adb","-s","localhost:5555","shell","input","tap","360","1117")
    time.sleep(2)
    sh("adb","-s","localhost:5555","shell","input","tap","165","590")
    time.sleep(0.5)
    for digit in CODE:
        sh("adb","-s","localhost:5555","shell","input","keyevent",str(7+int(digit)))
        time.sleep(0.15)
    time.sleep(0.4)
    try:
        script.exports_sync.arm()
    except Exception as e:
        print("[!] arm failed:", e)
    time.sleep(0.3)
    sh("adb","-s","localhost:5555","shell","input","tap","495","745")
    print("[*] Waiting 12s for worker...")
    time.sleep(12)

    # Screencap UI to see result
    sh("adb","-s","localhost:5555","shell","screencap","-p","/sdcard/act.png")
    sh("adb","-s","localhost:5555","pull","/sdcard/act.png","/tmp/act_%s.png" % CODE)

    try:
        session.detach()
    except:
        pass

    # Extract decision-relevant returns
    print("\n  === SUMMARY %s ===" % CODE)
    for ev, r in hits:
        if ev == "RET":
            print("    RET %-20s w0=%s" % (r.get("tag"), r.get("w0")))
    return hits

if __name__ == "__main__":
    codes = sys.argv[1:] if len(sys.argv) > 1 else ["135790", "999999"]
    all_results = {}
    for c in codes:
        all_results[c] = run_test(c)
        time.sleep(3)
    # Compare
    print("\n" + "="*60)
    print("COMPARISON")
    print("="*60)
    for c, hits in all_results.items():
        rets = [(r.get("tag"), r.get("w0")) for ev, r in hits if ev == "RET"]
        print("  %s: %s" % (c, rets))
    with open("/tmp/worker_compare_result.json","w") as f:
        json.dump({c: [(ev,r) for ev,r in h] for c,h in all_results.items()}, f, indent=2)
