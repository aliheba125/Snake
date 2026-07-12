import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# App should be running with Gadget already from previous attempt
focus = adb("dumpsys window | grep mCurrentFocus")
print("Current focus:", focus)

if "com.snake" not in focus:
    print("Restarting...")
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/data/local/tmp/libskia_helper.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(20)
    focus = adb("dumpsys window | grep mCurrentFocus")
    print("After restart:", focus)

subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached to Gadget")

SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
if (eng) {
    Interceptor.attach(eng.base.add(0x161788), {
        onEnter: function(a) { send("KDF s1=0x"+(a[1].toUInt32()>>>0).toString(16)+" s2="+a[2]); }
    });
    Interceptor.attach(eng.base.add(0x160208), {
        onEnter: function(a) { this.o=a[2]; },
        onLeave: function() {
            try{var p=this.o.readPointer(),e=this.o.add(8).readPointer(),l=e.sub(p).toInt32();
            if(l>0&&l<65536){var t=null;try{t=p.readUtf8String(Math.min(l,512))}catch(x){}
            send("AES_OUT len="+l+(t?" txt="+t.substring(0,200):""));}}catch(x){}
        }
    });
    try{Interceptor.attach(eng.base.add(0x17e148),{onEnter:function(){send("CALL 0x17e148")}})}catch(e){}
    try{Interceptor.attach(eng.base.add(0x189774),{onEnter:function(){send("CALL 0x189774")}})}catch(e){}
    send("NATIVE-ONLY hooks installed @ "+eng.base);
} else {
    send("libengine NOT loaded");
}
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        print("  " + str(m["payload"])[:200])
    elif m["type"] == "error":
        print("  ERR: " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(2)

print("\n[*] Tapping 8 Ball Pool (145, 780)...")
adb("input tap 145 780")
time.sleep(6)

focus2 = adb("dumpsys window | grep mCurrentFocus")
print("Focus after tap: " + focus2)

alive = "com.snake" in focus2
print("APP SURVIVED: " + str(alive))

if alive:
    print("[+] Waiting 30s...")
    time.sleep(30)

print("\nTotal events: " + str(len(events)))
crypto = [e for e in events if "KDF" in str(e) or "AES" in str(e) or "CALL" in str(e)]
print("Crypto events: " + str(len(crypto)))
for e in crypto:
    print("  " + str(e))

session.detach()
