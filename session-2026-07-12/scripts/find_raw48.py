#!/usr/bin/env python3
"""
Find the 48 raw bytes that hex-encode to the z payload:
  1. Hook malloc — record every allocation of size 32..80 (candidate for raw 48-byte buffer)
  2. Hook the memcpy at libengine.so+0x801e2c with sz=98
  3. When that fires, iterate recent allocations; for each buffer of size 40..64,
     read its bytes and check if hex(bytes) is a prefix of z's hex ASCII
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
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

// Ring buffer of recent small allocations from libengine
var ALLOCS = [];
function record_alloc(rec) { rec.ts = TS(); ALLOCS.push(rec); if (ALLOCS.length > 400) ALLOCS.shift(); }

var _malloc = libc.findExportByName("malloc");
var _calloc = libc.findExportByName("calloc");
var _memcpy = libc.findExportByName("memcpy");

var _hooks_ready = false;
function installHooks(engine, flutter) {
    if (_hooks_ready) return;

    // Malloc — track sizes 24..96 from libengine
    Interceptor.attach(_malloc, {
        onEnter: function(args) { this.sz = args[0].toInt32(); this.ra = this.returnAddress; },
        onLeave: function(retval) {
            if (this.sz < 20 || this.sz > 200) return;
            updateModules();
            var mod = moduleOfAddr(this.ra);
            if (mod.indexOf("libengine") !== 0) return;
            record_alloc({addr:retval.toString(), sz:this.sz, caller:mod});
        }
    });

    // Memcpy at 0x801e2c (the URL z-hex write)
    var ra_z_write = engine.base.add(0x801e2c);
    var ra_z_prev  = engine.base.add(0x800bd8); // std::string append site
    Interceptor.attach(_memcpy, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            var is_z_write = ra.equals(ra_z_write);
            var is_append = ra.equals(ra_z_prev);
            if (!is_z_write && !is_append) return;
            this.is_z = is_z_write; this.is_ap = is_append;
            this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
            if (this.sz < 20 || this.sz > 200) { this.is_z = this.is_ap = false; return; }
        },
        onLeave: function() {
            if (!this.is_z && !this.is_ap) return;
            var src_str = ""; try { src_str = this.src.readCString(Math.min(this.sz, 200)); } catch(e){}
            var src_hex = ""; try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 100))); } catch(e){}
            var tag = this.is_z ? "Z_WRITE" : "APPEND";
            
            // Only investigate if the src content looks like our z hex (starts with '0c' and is longer than 40 hex chars)
            if (src_str && src_str.length >= 40 && /^[0-9a-f]+$/i.test(src_str)) {
                // This is a hex string — the z hex payload or a similar one!
                // Cross-reference against ALLOCS: for each recent 48-byte allocation,
                // check if its raw bytes hex-encode to a PREFIX of src_str
                var matches = [];
                for (var i = ALLOCS.length - 1; i >= 0 && i > ALLOCS.length - 50; i--) {
                    var alloc = ALLOCS[i];
                    if (alloc.sz < 40 || alloc.sz > 80) continue;
                    try {
                        var buf_hex = hexify(ptr(alloc.addr).readByteArray(alloc.sz));
                        // Check if buf_hex matches src_str (or is prefix)
                        var min_len = Math.min(buf_hex.length, src_str.length);
                        if (min_len >= 32) {
                            var common = 0;
                            for (var k = 0; k < min_len; k++) {
                                if (buf_hex[k].toLowerCase() === src_str[k].toLowerCase()) common++;
                                else break;
                            }
                            if (common >= 32) {
                                matches.push({alloc:alloc, buf_hex:buf_hex, common_prefix_len:common});
                            }
                        }
                    } catch(e){}
                }
                send({t:tag, sz:this.sz,
                      dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str.substring(0,150),
                      src_hex_prefix:src_hex.substring(0,120),
                      alloc_matches:matches.slice(0,10),
                      total_allocs:ALLOCS.length, ts:TS()});
            }
        }
    });

    _hooks_ready = true;
    send({t:"hooks_ready", ts:TS()});

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        send({t:"Z_SINK_HIT", data:s.substring(0,300), ts:TS()});
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
    send({t:"modules_ready", ts:TS()});
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
        if t in ('Z_WRITE','APPEND'):
            print(f"\n=== {t} @ +{p.get('ts',0)}ms sz={p.get('sz')} ===")
            print(f"  dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:150]}")
            print(f"  src_hex_prefix: {p.get('src_hex_prefix','')[:80]}")
            am = p.get('alloc_matches',[])
            print(f"  ALLOC MATCHES: {len(am)} (out of {p.get('total_allocs')} tracked allocs)")
            for m in am:
                a = m.get('alloc',{})
                print(f"    → addr={a.get('addr')} sz={a.get('sz')} caller={a.get('caller')}")
                print(f"      buf_hex[:96]: {m.get('buf_hex','')[:96]}")
                print(f"      common_prefix_len: {m.get('common_prefix_len')}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] Z_SINK: {p.get('data','')[:200]}")
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
time.sleep(20)

with open("/tmp/find_raw48.json", "w") as f: json.dump(results, f, indent=2, default=str)
session.detach()
