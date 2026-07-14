#!/usr/bin/env python3
"""format_probe.py - Test different key formats to find the local format check boundary."""
import frida, time, subprocess, json, sys, os

CODES = sys.argv[1:] if len(sys.argv) > 1 else ["135790", "12345678", "ABCDEF123456", "1234567890123456"]
os.makedirs("/tmp/format_test", exist_ok=True)
all_results = {}

JS_TEMPLATE = '''
var eng = Process.findModuleByName("libengine.so");
var base = eng.base;
var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var _getaddrinfo = libc.findExportByName("getaddrinfo");
var wrapper_ra = base.add(0x800290);
var activated = false, stalking = false, done = false;
var burstHits = [];
var data = {keyEngine: false, netCalls: [], w5: -1};

Interceptor.attach(_getaddrinfo, {
    onEnter: function(args) {
        if (activated) {
            var host = args[0].readCString();
            data.netCalls.push(host);
            send({t: "NET", host: host});
        }
    }
});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        var now = Date.now();
        burstHits.push(now);
        while (burstHits.length > 0 && (now - burstHits[0]) > 300) burstHits.shift();
        if (!stalking && burstHits.length >= 3) {
            stalking = true;
            var tid = Process.getCurrentThreadId();
            Stalker.follow(tid, {
                events: {compile: true},
                transform: function(iterator) {
                    var instr = iterator.next();
                    while (instr !== null) {
                        var off = instr.address.sub(base).toInt32();
                        if (off === 0x81cb8) {
                            iterator.putCallout(function(ctx) {
                                data.keyEngine = true;
                                data.w5 = ctx.x5.toInt32() & 0xff;
                                send({t: "KE", w5: data.w5});
                            });
                        }
                        iterator.keep();
                        instr = iterator.next();
                    }
                }
            });
            setTimeout(function() {
                try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
                done = true;
                send({t: "END", data: data});
            }, 3000);
        }
    }
});

rpc.exports = { setact: function() { activated = true; } };
send({t: "ready"});
'''

for CODE in CODES:
    print("\n" + "=" * 50)
    print("Testing: %s (len=%d)" % (CODE, len(CODE)))
    print("=" * 50)

    subprocess.run(["adb", "-s", "localhost:5555", "shell", "am force-stop com.snake"], timeout=5)
    time.sleep(3)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "am start -n com.snake/com.Entry"], timeout=5)
    time.sleep(10)

    r = subprocess.run(["adb", "-s", "localhost:5555", "shell", "ps -A | grep 'com.snake$'"],
                       capture_output=True, text=True, timeout=5)
    pid_line = r.stdout.strip()
    if not pid_line:
        print("  [!] App not running, skip")
        continue
    pid = int(pid_line.split()[1])
    print("  PID: %d" % pid)

    device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
    try:
        session = device.attach(pid)
    except Exception as e:
        print("  [!] Attach failed: %s" % e)
        continue

    results = []
    def on_msg(m, _):
        if m["type"] == "send":
            results.append(m["payload"])
            p = m["payload"]
            if p.get("t") == "NET":
                print("  [NET] %s" % p["host"])
            elif p.get("t") == "KE":
                print("  [KEY_ENGINE] w5=%d" % p["w5"])
            elif p.get("t") == "END":
                d = p["data"]
                print("  [END] keyEngine=%s netCalls=%d" % (d["keyEngine"], len(d["netCalls"])))

    sc = session.create_script(JS_TEMPLATE)
    sc.on("message", on_msg)
    sc.load()
    time.sleep(8)

    # Navigate to Entry Key dialog
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 140 97"], timeout=5)
    time.sleep(2)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 360 1117"], timeout=5)
    time.sleep(2)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 160 585"], timeout=5)
    time.sleep(0.5)
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input text " + CODE], timeout=5)
    time.sleep(1)

    sc.exports_sync.setact()
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "input tap 490 745"], timeout=5)
    time.sleep(8)

    net_msgs = [r for r in results if r.get("t") == "NET"]
    ke_msgs = [r for r in results if r.get("t") == "KE"]

    summary = {
        "code": CODE,
        "length": len(CODE),
        "key_engine_called": len(ke_msgs) > 0,
        "network_calls": len(net_msgs),
        "net_hosts": [n["host"] for n in net_msgs],
        "w5": ke_msgs[0]["w5"] if ke_msgs else None
    }
    all_results[CODE] = summary
    print("  SUMMARY: %s" % json.dumps(summary))

    try:
        session.detach()
    except:
        pass
    time.sleep(2)

# Final report
print("\n" + "=" * 60)
print("FINAL COMPARISON TABLE:")
print("=" * 60)
print("%-16s %4s %11s %8s %s" % ("Code", "Len", "key_engine", "Network", "Hosts"))
print("-" * 60)
for code, s in all_results.items():
    hosts = ",".join(s["net_hosts"][:2]) if s["net_hosts"] else "none"
    print("%-16s %4d %11s %8d %s" % (code, s["length"], s["key_engine_called"], s["network_calls"], hosts))

with open("/tmp/format_test/all_results.json", "w") as f:
    json.dump(all_results, f, indent=2)
print("\nSaved to /tmp/format_test/all_results.json")
