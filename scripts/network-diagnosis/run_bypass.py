"""
Connect to Gadget, load compiled agent (with Java bridge),
then use Java to call SystemCallProvider.call("VM") to trigger game load.
Also install KDF/AES hooks on engine process to capture seeds.
"""
import frida
import time
import sys
import json

print("[*] Connecting to Gadget on 127.0.0.1:27052...")
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget (main process)")

# Load the compiled agent (includes frida-java-bridge)
with open("/tmp/compiled_conn.js") as f:
    compiled_code = f.read()

script = session.create_script(compiled_code)

results = []
def on_message(message, data):
    if message["type"] == "send":
        p = message["payload"]
        results.append((p, data))
        t = p.get("t", "")
        if t == "log":
            print("  [LOG]", p.get("m", ""))
        elif t == "kdf":
            print("\n  *** KDF SEEDS: seed1={} seed2={} ***".format(p.get("s1"), p.get("s2")))
        elif t == "aes_in":
            print("  [AES-IN] len={} kdf={}".format(p.get("len"), p.get("kdf")))
            if data:
                print("    hex={}".format(data.hex()[:64]))
        elif t == "aes_out":
            txt = p.get("txt", "")
            print("  [AES-OUT] len={}".format(p.get("len")))
            if txt:
                print("    TEXT: {}".format(repr(txt[:300])))
            if data:
                print("    HEX: {}".format(data.hex()[:96]))
        elif t == "ilil":
            print("  [ILIL] ilil({}) = {}".format(p.get("arg"), repr(p.get("ret"))))
        elif t == "chl":
            print("  [CHL] chl(byte[{}]) = {} hex={}".format(p.get("inlen"), p.get("ret"), p.get("inhex","")[:32]))
        elif t == "pm":
            print("  [PM] {}({})".format(p.get("fn"), p.get("pkg")))
        elif t == "ssl_w":
            print("  [SSL-W] len={} txt={}".format(p.get("len"), repr(p.get("txt","")[:200])))
        elif t == "ssl_r":
            print("  [SSL-R] len={} txt={}".format(p.get("len"), repr(p.get("txt","")[:200])))
        elif t == "call":
            print("  [CALL] {}".format(p.get("fn")))
        elif t == "exec":
            print("  [EXEC] {}".format(p.get("cmd")))
        else:
            if t not in ("info",):
                print("  [{}] {}".format(t, str(p)[:200]))
    elif message["type"] == "error":
        print("  [ERR] {}".format(message.get("description", "?")[:300]))

script.on("message", on_message)
script.load()
print("[+] Compiled agent loaded. Initializing...")
time.sleep(3)

# Initialize the agent (installs all hooks)
try:
    init_result = script.exports_sync.init()
    print("[+] Init result:", init_result)
except Exception as e:
    print("[-] Init error:", e)

time.sleep(3)

# Now try to dump native strings (this triggers ilil calls)
print("\n[*] Dumping native strings (active extraction)...")
try:
    dump_result = script.exports_sync.dump_list(
        [0xf11301, 0xf11501, 0xf11520, 0xf11521, 0xf21501, 0xf31501],
        False
    )
    print("[+] Dump result:", json.dumps(dump_result, indent=2))
except Exception as e:
    print("[-] Dump error:", e)

# Wait and collect any passive events
print("\n[*] Monitoring for 30s (app should be making requests at startup)...")
time.sleep(30)

# Summary
print("\n" + "="*60)
kdf_msgs = [p for p,_ in results if p.get("t") == "kdf"]
aes_msgs = [p for p,_ in results if p.get("t") in ("aes_in", "aes_out")]
ilil_msgs = [p for p,_ in results if p.get("t") == "ilil"]
chl_msgs = [p for p,_ in results if p.get("t") == "chl"]
ssl_msgs = [p for p,_ in results if p.get("t") in ("ssl_w", "ssl_r")]
call_msgs = [p for p,_ in results if p.get("t") == "call"]

print("SUMMARY:")
print("  KDF seeds: {}".format(len(kdf_msgs)))
print("  AES ops: {}".format(len(aes_msgs)))
print("  Native strings: {}".format(len(ilil_msgs)))
print("  License checks: {}".format(len(chl_msgs)))
print("  SSL traffic: {}".format(len(ssl_msgs)))
print("  Decrypt fn calls: {}".format(len(call_msgs)))

if kdf_msgs:
    print("\n  --- KDF Seeds ---")
    for k in kdf_msgs:
        print("    seed1={} seed2={}".format(k.get("s1"), k.get("s2")))

if ilil_msgs:
    print("\n  --- Decrypted Strings ---")
    for s,_ in [(p,d) for p,d in results if p.get("t") == "ilil"][:20]:
        print("    [{}] = {}".format(s.get("arg"), repr(s.get("ret"))))

print("="*60)
session.detach()
