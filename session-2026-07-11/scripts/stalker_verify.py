"""
Verify Stalker produces actual events by:
1. Following a few threads with transform
2. Logging ANY call into libengine.so address range (not just specific functions)
3. This proves the tool works — even if KDF/AES aren't triggered
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Restart fresh
adb("am force-stop com.snake")
time.sleep(1)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
time.sleep(18)
subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
t0 = time.time()
print("[+] Attached")

# Strategy: use Stalker transform to count how many times execution
# enters libengine.so code range. This proves Stalker works.
# Also specifically watch for KDF/AES addresses.
SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var ENG_LO = eng.base;
var ENG_HI = eng.base.add(eng.size);
var KDF = eng.base.add(0x161788);
var AES = eng.base.add(0x160208);

send({t:"info", msg:"eng " + ENG_LO + " - " + ENG_HI});

// Follow just the first 5 non-main threads (engine threads)
var mainTid = Process.getCurrentThreadId();
var threads = Process.enumerateThreads();
var engineThreads = threads.filter(function(t) { return t.id !== mainTid; }).slice(0, 5);

send({t:"info", msg: "Following " + engineThreads.length + " non-main threads (of " + threads.length + " total)"});

var blockCount = 0;
var engBlockCount = 0;
var kdfHit = false;
var aesHit = false;

engineThreads.forEach(function(thread) {
    try {
        Stalker.follow(thread.id, {
            transform: function(iterator) {
                var instruction = iterator.next();
                if (instruction === null) return;
                
                var addr = instruction.address;
                blockCount++;
                
                // Check if this block is inside libengine
                if (addr.compare(ENG_LO) >= 0 && addr.compare(ENG_HI) < 0) {
                    engBlockCount++;
                    
                    // Check specific targets
                    if (addr.equals(KDF)) {
                        iterator.putCallout(function(ctx) {
                            send({t:"KDF", x1: ctx.x1.toUInt32()>>>0, x2: ctx.x2.toString()});
                        });
                        kdfHit = true;
                    } else if (addr.equals(AES)) {
                        iterator.putCallout(function(ctx) {
                            send({t:"AES"});
                        });
                        aesHit = true;
                    }
                }
                
                // Keep all instructions
                do {
                    iterator.keep();
                } while (iterator.next() !== null);
            }
        });
    } catch(e) {}
});

send({t:"info", msg: "Stalker active. Waiting..."});

// Report stats periodically
setInterval(function() {
    send({t:"stats", blocks: blockCount, engBlocks: engBlockCount, kdf: kdfHit, aes: aesHit});
}, 3000);
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append((p, time.time()-t0))
        t = p.get("t","")
        if t == "KDF":
            print("  *** [{:.1f}s] KDF! x1=0x{:x} x2={} ***".format(time.time()-t0, p["x1"], p["x2"]))
        elif t == "AES":
            print("  *** [{:.1f}s] AES! ***".format(time.time()-t0))
        elif t == "stats":
            print("  [{:.1f}s] blocks={} engBlocks={} kdf={} aes={}".format(
                time.time()-t0, p["blocks"], p["engBlocks"], p["kdf"], p["aes"]))
        elif t == "info":
            print("  [i] " + p.get("msg",""))
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:150])

session.on("detached", lambda r,c: print("  [DETACH {:.1f}s] {}".format(time.time()-t0, r)))
sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

# Wait for first stats
time.sleep(5)

# Check alive
ps = adb("ps -A | grep com.snake$")
if not ps:
    print("[-] Process died!")
else:
    print("\n[+] Process alive. Tapping game to trigger activity...")
    adb("input tap 145 780")  # tap 8 Ball Pool
    time.sleep(10)
    
    # Check still alive
    ps2 = adb("ps -A | grep com.snake$")
    print("  After tap: {}".format("ALIVE" if ps2 else "DEAD"))
    
    if ps2:
        # Wait for more stats
        time.sleep(10)

# Summary
print("\n" + "="*60)
stats_events = [(p,t) for p,t in events if isinstance(p,dict) and p.get("t") == "stats"]
if stats_events:
    last_stats = stats_events[-1][0]
    print("FINAL STATS:")
    print("  Total basic blocks instrumented: {}".format(last_stats.get("blocks")))
    print("  Blocks inside libengine.so: {}".format(last_stats.get("engBlocks")))
    print("  KDF hit: {}".format(last_stats.get("kdf")))
    print("  AES hit: {}".format(last_stats.get("aes")))
else:
    print("No stats received")

kdf_events = [(p,t) for p,t in events if isinstance(p,dict) and p.get("t") == "KDF"]
aes_events = [(p,t) for p,t in events if isinstance(p,dict) and p.get("t") == "AES"]
print("  KDF events captured: {}".format(len(kdf_events)))
print("  AES events captured: {}".format(len(aes_events)))
print("="*60)

try:
    session.detach()
except:
    pass
