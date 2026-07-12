#!/usr/bin/env python3
"""Test injecting crafted data into DAT_009280f8 (response store)."""
import frida, time, subprocess

SCRIPT = """
'use strict';
var eng = null;
function init(){
    eng = Process.findModuleByName("libengine.so");
    if(!eng){setTimeout(init,10);return;}
    send({t:"eng"});
    setTimeout(function(){
        var gptr = eng.base.add(0x8280f8);
        var ptr0 = gptr.readPointer();
        send({t:"before", ptr: ptr0.toString(), isNull: ptr0.isNull()});
        if (!ptr0.isNull()) {
            var a = new Uint8Array(ptr0.readByteArray(32));
            var h=''; for(var i=0;i<32;i++) h+=('0'+a[i].toString(16)).slice(-2);
            send({t:"before_hex", hex:h});
            var craft = new Uint8Array(32);
            for(var i=0;i<32;i++) craft[i] = (0xAA + i) & 0xFF;
            ptr0.writeByteArray(craft.buffer);
            send({t:"injected"});
            var a2 = new Uint8Array(ptr0.readByteArray(32));
            var h2=''; for(var i=0;i<32;i++) h2+=('0'+a2[i].toString(16)).slice(-2);
            send({t:"after_hex", hex:h2});
        } else {
            var buf = Memory.alloc(32);
            var craft = new Uint8Array(32);
            for(var i=0;i<32;i++) craft[i] = (0xAA + i) & 0xFF;
            buf.writeByteArray(craft.buffer);
            gptr.writePointer(buf);
            send({t:"allocated_wrote", ptr:buf.toString()});
        }
        setTimeout(function(){ send({t:"alive_5s"}); }, 5000);
    }, 2000);
}
init();
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
if not device: print("no gadget"); exit(1)
session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT)
sc.on("message", lambda m,d: print(m.get("payload") if m["type"]=="send" else m))
sc.load()
time.sleep(10)
try:
    procs=device.enumerate_processes()
    print(f"process still alive: {bool(procs)}")
except: print("process dead")
try: session.detach()
except: pass
