#!/usr/bin/env python3
"""
Hook memcpy called from anywhere inside _INIT_34 (libengine 0x7edb3c..0x932db2).
Record ALL memcpys with return address in that range, capture source content
and destination. Look for the memcpy that copies hex chars into the URL buffer
(dst matches the URL buffer address that we get from the PREFIX memcpy).
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

var libc = Process.getModuleByName("libc.so");
var moduleList = [];
function updateModules() { moduleList = Process.enumerateModules(); return moduleList; }
function moduleOfAddr(addr) {
    for (var i = 0; i < moduleList.length; i++) {
        var b = moduleList[i].base;
        var e = b.add(moduleList[i].size);
        if (addr.compare(b) >= 0 && addr.compare(e) < 0) return moduleList[i].name + "+" + addr.sub(b).toInt32().toString(16);
    }
    return addr.toString();
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 200;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

// Also track prefix's URL buffer to find hex-append that lands in it
var url_dst_low = null, url_dst_high = null;

var _hook_installed = false;
function installHooks(engine, flutter) {
    if (_hook_installed) return;
    var _memcpy = libc.findExportByName("memcpy");
    var _memmove = libc.findExportByName("memmove");
    var init34_start = engine.base.add(0x7edb3c);
    var init34_end   = engine.base.add(0x7edb3c + 0x145276);
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    function mkhook(name) {
        return {
            onEnter: function(args) {
                var ra = this.returnAddress;
                var in_init34 = ra.compare(init34_start) >= 0 && ra.compare(init34_end) < 0;
                var is_full = ra.equals(target_ra_full);
                if (!in_init34 && !is_full) return;
                var sz = args[2].toInt32();
                // Only significant sizes
                if (sz < 1 || sz > 2000) return;
                this.dst = args[0]; this.src = args[1]; this.sz = sz;
                this.ra = ra; this.in_init34 = in_init34; this.is_full = is_full;
                this.tid = Process.getCurrentThreadId();
                // Check if dst is inside known URL buffer
                this.hits_url = false;
                if (url_dst_low !== null) {
                    try {
                        if (this.dst.compare(url_dst_low) >= 0 && this.dst.compare(url_dst_high) < 0) this.hits_url = true;
                    } catch(e){}
                }
            },
            onLeave: function(rv) {
                if (!this.dst) return;
                var src_hex = ""; try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200))); } catch(e){}
                var src_str = ""; try { src_str = this.src.readCString(Math.min(this.sz, 200)); } catch(e){}
                var ra_off = this.ra.sub(Process.getModuleByName("libengine.so").base).toInt32();
                send({t: this.is_full ? "FULL_READ" : "INIT34_MEMCPY",
                      hook_name:name, sz:this.sz, tid:this.tid,
                      ra:"0x"+ra_off.toString(16),
                      dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str.substring(0,200),
                      src_hex:src_hex,
                      hits_url_buf:this.hits_url,
                      ts:TS()});
                // Track URL buffer once we see the prefix
                if (this.ra.equals(target_ra_prefix) || (src_str && src_str.indexOf("https://push-") === 0)) {
                    url_dst_low = this.dst;
                    url_dst_high = this.dst.add(200);
                }
            }
        };
    }
    Interceptor.attach(_memcpy, mkhook("memcpy"));
    Interceptor.attach(_memmove, mkhook("memmove"));
    _hook_installed = true;
    send({t:"hooks_ready", ts:TS()});

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        send({t:"Z_SINK_HIT", data:s.substring(0,500), ts:TS()});
                        return;
                    }
                } catch(e){}
            }
        }
    });
}

var _modules_ready = false;
function tryInit() {
    if (_modules_ready) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    if (!flutter || !engine) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS(), engine:engine.base.toString()});
    installHooks(engine, flutter);
}
setTimeout(tryInit, 30);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'INIT34_MEMCPY':
            print(f"[+{p.get('ts',0)}ms] INIT34 memcpy sz={p.get('sz')} ra={p.get('ra')} hits_url={p.get('hits_url_buf')} dst={p.get('dst')}")
            src_str = p.get('src_str','')[:100]
            src_hex = p.get('src_hex','')[:120]
            if src_str.strip(): print(f"    src_str: {src_str}")
            print(f"    src_hex: {src_hex}")
        elif t == 'FULL_READ':
            print(f"\n=== FULL_READ @ +{p.get('ts',0)}ms sz={p.get('sz')} ===")
            print(f"    dst={p.get('dst')} src={p.get('src')}")
            print(f"    src_str: {p.get('src_str','')[:250]}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] Z_SINK: {p.get('data','')[:250]}")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()

subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

t_start = time.time()
device = None
for i in range(90):
    time.sleep(0.15)
    try:
        d = frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs: device = d; print(f"[+{time.time()-t_start:.3f}s] Gadget PID {procs[0].pid}"); break
    except: pass
if not device: print("[!] no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
time.sleep(15)

with open("/tmp/init34_memcpys.json", "w") as f: json.dump(results, f, indent=2, default=str)
i34 = [r for r in results if r.get('t') == 'INIT34_MEMCPY']
i34_url = [r for r in i34 if r.get('hits_url_buf')]
print(f"\n[*] INIT34 memcpys: {len(i34)}, hits_url_buf: {len(i34_url)}")
session.detach()
