#!/usr/bin/env python3
"""
capture_response.py — Capture BOTH the outgoing request AND the server response
by hooking SSL_write (sink) and SSL_read at libflutter.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var flut = null, reported_req = false, reported_resp = false;
var z_url = null;

function tryInit(){
    flut = Process.findModuleByName("libflutter.so");
    if(!flut){setTimeout(tryInit,10);return;}
    send({t:"ready",ts:Date.now()});

    // SSL_write (outgoing) at +0x6d4be8
    Interceptor.attach(flut.base.add(0x6d4be8), {
        onEnter: function(args) {
            if(reported_req) return;
            for(var i=0;i<4;i++){try{
                var p=args[i]; if(p.isNull()) continue;
                var s=p.readCString(1200);
                if(s && s.indexOf("z=0c")!==-1){
                    reported_req=true;
                    z_url=s;
                    send({t:"REQUEST", data:s.substring(0,800)});
                    return;
                }
            }catch(e){}}
        }
    });

    // SSL_read (incoming) — try common offsets. In BoringSSL, SSL_read is near SSL_write.
    // From earlier analysis: look for the function that returns data after SSL_write.
    // Alternative: hook recv/read on the fd. Or hook the Dart-level response.
    // Simplest: hook libc read() filtered by content (HTTP response pattern).
    var libc = Process.getModuleByName("libc.so");
    var _read = libc.findExportByName("read");
    Interceptor.attach(_read, {
        onLeave: function(retval) {
            if(!reported_req || reported_resp) return;
            var n = retval.toInt32();
            if(n < 10 || n > 8192) return;
            try {
                var buf = this.context.x1;  // arg1 of read()
                var s = buf.readCString(Math.min(n, 2048));
                if(s && (s.indexOf("HTTP/")===0 || s.indexOf("HTTP/1")!==-1 || s.indexOf("content-type")!==-1)) {
                    reported_resp = true;
                    send({t:"RESPONSE", data:s.substring(0, 1500), len:n});
                }
            } catch(e){}
        },
        onEnter: function(args) {
            // save buf pointer for onLeave
            this.context.x1 = args[1];
        }
    });
}
setTimeout(tryInit, 5);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        print(f"[{p.get('t')}] {json.dumps(p, default=str)[:600]}")
        sys.stdout.flush()

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

device = None
for i in range(90):
    time.sleep(0.08)
    try:
        d = frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        if d.enumerate_processes(): device = d; break
    except: pass
if not device: print("no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
sc = session.create_script(SCRIPT)
sc.on('message', on_msg)
sc.load()
time.sleep(15)

with open("/tmp/capture_response.json","w") as f: json.dump(results,f,indent=2,default=str)
print(f"\ntotal msgs: {len(results)}")
try: session.detach()
except: pass
