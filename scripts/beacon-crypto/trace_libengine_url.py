#!/usr/bin/env python3
"""
libengine.so IS building the z URL. Trace:
  1. Full backtrace at libengine memcpy call sites (0x801d80, 0x5b7f0)
  2. Every memcpy where dst is the URL buffer
  3. Any memcpy from libengine that writes ASCII hex chars into scudo
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
function bt(ctx) {
    try {
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 20);
        return frames.map(moduleOfAddr);
    } catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _memcpy = libc.findExportByName("memcpy");
var _memmove = libc.findExportByName("memmove");

// Track known URL dst regions
var url_dsts = new Set();

function makeHook(name) {
    return {
        onEnter: function(args) {
            var sz = args[2].toInt32();
            if (sz < 3 || sz > 500) return;
            var srcPtr = args[1];
            var dstPtr = args[0];
            var raw_ret = this.returnAddress;
            // Cheap early check: is this from a libengine range?
            // We'll refine below.
            var first;
            try { first = srcPtr.readCString(6); } catch(e){ return; }
            if (!first) return;
            var is_z_related = first.indexOf("z=") === 0 || first.indexOf("?z=") === 0 ||
                              first.indexOf("http") === 0 || first.indexOf("push") === 0 ||
                              first.indexOf("&v=") === 0 || first.indexOf("=0c") === 0;
            var is_hex_chars = first.length >= 2 && /^[0-9a-f]{2}/i.test(first);
            // Also track if dst matches a known URL destination
            var dst_str = dstPtr.toString();
            var is_url_dst = url_dsts.has(dst_str);

            if (!is_z_related && !is_url_dst && !(is_hex_chars && sz <= 128)) return;
            this.sz = sz; this.src = srcPtr; this.dst = dstPtr; this.ra = raw_ret;
            this.is_z = is_z_related; this.is_url_dst = is_url_dst; this.is_hex = is_hex_chars;
            updateModules();
        },
        onLeave: function() {
            if (!this.sz) return;
            var mod = moduleOfAddr(this.ra);
            // Skip if not from a lib we care about (avoid noise)
            if (!(mod.indexOf("libengine") === 0 || mod.indexOf("libapp") === 0 ||
                  mod.indexOf("libflutter") === 0 || mod.indexOf("libc.so") === 0)) return;
            var src_str = ""; try { src_str = this.src.readCString(Math.min(this.sz, 300)); } catch(e){}
            var src_hex = ""; try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200)), Math.min(this.sz, 200)); } catch(e){}
            // Track URL dst if src contains "http" or "?z="
            if (src_str && (src_str.indexOf("http") === 0 || src_str.indexOf("?z=") !== -1 || src_str.indexOf("z=") === 0)) {
                url_dsts.add(this.dst.toString());
            }
            send({t:"COPY", name:name, sz:this.sz,
                  dst:this.dst.toString(), src:this.src.toString(),
                  src_str:src_str.substring(0, 200), src_hex:src_hex,
                  caller:mod, bt:bt(this.context).slice(0,15),
                  is_z:this.is_z, is_url_dst:this.is_url_dst, is_hex:this.is_hex,
                  ts:TS()});
        }
    };
}
Interceptor.attach(_memcpy, makeHook("memcpy"));
Interceptor.attach(_memmove, makeHook("memmove"));
var _memcpy_chk = libc.findExportByName("__memcpy_chk");
if (_memcpy_chk) Interceptor.attach(_memcpy_chk, makeHook("memcpy_chk"));

// SINK
var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallSink, 15); return; }
    send({t:"modules_ready", ts:TS()});

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
    _sink_installed = true;
    send({t:"sink_ready", ts:TS()});
}
setTimeout(tryInstallSink, 30);
send({t:"init_done", ts:1});
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'COPY':
            caller = p.get('caller','')
            src_prev = p.get('src_str','')[:120]
            # only print interesting
            if 'libengine' in caller or 'push' in src_prev or 'z=0c' in src_prev or '?z=' in src_prev:
                print(f"\n--- COPY @ +{p.get('ts',0)}ms sz={p.get('sz')} name={p.get('name')} caller={caller} ---")
                print(f"  dst={p.get('dst','')} src={p.get('src','')}")
                print(f"  src_str: {src_prev}")
                print(f"  bt: {p.get('bt', [])[:8]}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] *** Z_SINK: {p.get('data','')[:200]} ***")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()

print("[*] Force-stop + start snake with gadget wrap...")
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
print(f"[+{time.time()-t_start:.3f}s] loaded, watching 40s")
time.sleep(40)

with open("/tmp/trace_url.json", "w") as f: json.dump(results, f, indent=2, default=str)
print(f"[*] {len(results)} total events. libengine copies: {sum(1 for r in results if r.get('t')=='COPY' and 'libengine' in r.get('caller',''))}")
session.detach()
