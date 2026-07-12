#!/usr/bin/env python3
"""
full_flow.py — Capture the COMPLETE network flow of a cold launch + idle.
Hooks libflutter SSL_write (all outgoing plaintext) over a long window, logging
every call with timestamp, destination hints, and content. This reveals:
  - the ordered sequence of requests the app makes
  - whether the 33-byte z-response is reused in any later request
  - whether a second service (rest.snakeseller.com) is contacted and with what
Also attempts to hook SSL_read to capture responses.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS(){ return Date.now()-t0; }
function toPrintable(bytes, max){
    max = max || 400;
    var out = '';
    var n = Math.min(bytes.length, max);
    for (var i=0;i<n;i++){
        var c = bytes[i];
        if (c >= 32 && c < 127) out += String.fromCharCode(c);
        else out += '\\x' + ('0'+c.toString(16)).slice(-2);
    }
    return out;
}
function toHex(bytes, max){
    max = max || 400;
    var s=''; var n=Math.min(bytes.length,max);
    for (var i=0;i<n;i++) s += ('0'+bytes[i].toString(16)).slice(-2);
    return s;
}

var flut = null;
function init(){
    flut = Process.findModuleByName("libflutter.so");
    if(!flut){ setTimeout(init,10); return; }
    send({t:"ready", ts:TS(), base:flut.base.toString()});

    // SSL_write at +0x6d4be8: int SSL_write(SSL *ssl, const void *buf, int num)
    Interceptor.attach(flut.base.add(0x6d4be8), {
        onEnter: function(args){
            try {
                var buf = args[1];
                var num = args[2].toInt32();
                if (num <= 0 || num > 65536) return;
                var arr = new Uint8Array(Memory.readByteArray(buf, Math.min(num, 800)));
                var printable = toPrintable(arr, 800);
                // Only log application data (HTTP), skip TLS handshake noise
                send({t:"SSL_WRITE", ts:TS(), num:num, data:printable});
            } catch(e){}
        }
    });

    // Try to locate SSL_read. In BoringSSL, SSL_read has same signature.
    // Heuristic: scan exports (none) — instead hook a range of candidate offsets is unsafe.
    // Use a robust approach: hook 'SSL_read' by following the plaintext read path is hard;
    // instead we rely on SSL_write capture (requests) which is what answers the key question.
    send({t:"hooks_ready", ts:TS()});
}
setTimeout(init, 5);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'SSL_WRITE':
            d = p.get('data','')
            # Extract request line / host if HTTP
            first = d.split('\\r\\n')[0] if '\\r\\n' in d else d[:80]
            host = ''
            for line in d.split('\\r\\n'):
                if line.lower().startswith('host:'): host = line; break
            print(f"[+{p.get('ts')}ms] SSL_WRITE ({p.get('num')} bytes)")
            print(f"    first line: {first[:120]}")
            if host: print(f"    {host}")
            # print a chunk
            print(f"    data[:200]: {d[:200]}")
            print()
        else:
            print(f"[+{p.get('ts',0)}ms] {t}: {json.dumps(p,default=str)[:120]}")
        sys.stdout.flush()
    elif msg['type']=='error':
        print(f"[ERR] {msg.get('description')}", file=sys.stderr)

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(1)
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

device=None
for i in range(90):
    time.sleep(0.08)
    try:
        d=frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        if d.enumerate_processes(): device=d; break
    except: pass
if not device: print("no gadget"); sys.exit(1)

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on('message',on_msg); sc.load()
print("[*] Capturing 30s of network flow...")
time.sleep(30)

with open("/tmp/full_flow.json","w") as f: json.dump(results,f,indent=2,default=str)
writes=[r for r in results if r.get('t')=='SSL_WRITE']
print(f"\n[*] Total SSL_WRITE calls: {len(writes)}")
try: session.detach()
except: pass
