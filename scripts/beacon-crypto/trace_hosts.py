#!/usr/bin/env python3
"""
trace_hosts.py — Enumerate EVERY host/endpoint the app contacts over its lifetime.
Hooks getaddrinfo (hostname resolution) and connect (IP:port) in libc. These fire
for every new connection throughout the app's life, so they don't race with the
early beacon the way an SSL_write hook does. Answers: is there a second service?
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
function TS(){ return Date.now()-t0; }
var libc = Process.getModuleByName("libc.so");

// getaddrinfo(node, service, hints, res)
var gai = libc.findExportByName("getaddrinfo");
if (gai) {
    Interceptor.attach(gai, {
        onEnter: function(args){
            try {
                var node = args[0].isNull() ? "(null)" : args[0].readCString();
                var service = args[1].isNull() ? "(null)" : args[1].readCString();
                send({t:"DNS", ts:TS(), host:node, service:service});
            } catch(e){}
        }
    });
}

// connect(fd, sockaddr*, len) — extract IP:port
var conn = libc.findExportByName("connect");
if (conn) {
    Interceptor.attach(conn, {
        onEnter: function(args){
            try {
                var sa = args[1];
                var family = sa.readU16();
                if (family === 2) { // AF_INET
                    var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                    var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
                    send({t:"CONNECT", ts:TS(), ip:ip, port:port, family:"IPv4"});
                } else if (family === 10) { // AF_INET6
                    var port6 = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                    var b = new Uint8Array(sa.add(8).readByteArray(16));
                    var hx=''; for (var i=0;i<16;i++){ hx += ('0'+b[i].toString(16)).slice(-2); if(i%2===1&&i<15) hx+=':'; }
                    send({t:"CONNECT", ts:TS(), ip:hx, port:port6, family:"IPv6"});
                }
            } catch(e){}
        }
    });
}
send({t:"ready", ts:TS()});
"""

results=[]
def on_msg(msg,data):
    if msg['type']=='send':
        p=msg['payload']; results.append(p)
        t=p.get('t','')
        if t=='DNS':
            print(f"[+{p.get('ts')}ms] DNS resolve: {p.get('host')}  (service={p.get('service')})")
        elif t=='CONNECT':
            print(f"[+{p.get('ts')}ms] CONNECT {p.get('family')} {p.get('ip')}:{p.get('port')}")
        else:
            print(f"[+{p.get('ts',0)}ms] {t}")
        sys.stdout.flush()

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
if not device: print("no gadget"); sys.exit(1)

session=device.attach(device.enumerate_processes()[0].pid)
sc=session.create_script(SCRIPT); sc.on('message',on_msg); sc.load()
print("[*] Tracing hosts for 30s (cold launch + idle)...")
time.sleep(30)

with open("/tmp/trace_hosts.json","w") as f: json.dump(results,f,indent=2,default=str)
dns=[r for r in results if r.get('t')=='DNS']
hosts=sorted(set(r.get('host') for r in dns if r.get('host') and r.get('host')!='(null)'))
print(f"\n[*] Distinct hostnames resolved: {len(hosts)}")
for h in hosts: print(f"    {h}")
try: session.detach()
except: pass
