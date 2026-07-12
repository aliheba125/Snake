#!/usr/bin/env python3
"""
1. Hook libengine.so+0x801d7c (call site of memcpy for URL prefix)
2. Capture x0 (dst URL buffer) from context
3. Install MemoryAccessMonitor on dst+50 .. dst+200 to catch the append writes
4. onAccess: record backtrace and current byte content
5. Continue hooks; report at SINK
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
    try { return Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 20).map(moduleOfAddr); }
    catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var url_dst_ptr = null;

// SINK detector
function installSinkHook(flutter) {
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

// Once we know the URL dst pointer, we install a memory watch by hooking
// libengine's memcpy call sites again in a tighter form.
function armAppendWatch(dst_ptr) {
    var dst = dst_ptr;
    var region_start = dst.add(50);
    var region_end = dst.add(200);
    send({t:"append_watch_arm", dst:dst.toString(), region:region_start.toString()+".."+region_end.toString(), ts:TS()});

    // We can't use MemoryAccessMonitor for continuous writes easily on aarch64 across many pages.
    // Instead, hook memcpy/memmove and check if dst falls in our range.
    var _memcpy = libc.findExportByName("memcpy");
    var _memmove = libc.findExportByName("memmove");
    var _snprintf = libc.findExportByName("snprintf");
    var _strncat = libc.findExportByName("strncat");
    var _strcat = libc.findExportByName("strcat");
    var _stpcpy = libc.findExportByName("stpcpy");
    var _strcpy = libc.findExportByName("strcpy");
    var _memset = libc.findExportByName("memset");

    function inRange(p) {
        if (!p || p.isNull()) return false;
        return p.compare(region_start) >= 0 && p.compare(region_end) < 0;
    }

    function makeWatch(name, dst_arg_idx, src_arg_idx, sz_arg_idx) {
        return function(target) {
            Interceptor.attach(target, {
                onEnter: function(args) {
                    var d = args[dst_arg_idx];
                    if (!inRange(d)) return;
                    var s = null, sz = null;
                    if (src_arg_idx !== null) s = args[src_arg_idx];
                    if (sz_arg_idx !== null) sz = args[sz_arg_idx].toInt32();
                    this.hit = true;
                    this.d = d; this.s = s; this.sz = sz;
                    this.bt = bt(this.context);
                    this.name = name;
                },
                onLeave: function() {
                    if (!this.hit) return;
                    var src_hex = "";
                    if (this.s && this.sz) { try { src_hex = hexify(this.s.readByteArray(Math.min(this.sz, 256))); } catch(e){} }
                    var src_str = "";
                    if (this.s) { try { src_str = this.s.readCString(200); } catch(e){} }
                    var dst_now = ""; try { dst_now = hexify(this.d.readByteArray(200), 200); } catch(e){}
                    send({t:"APPEND_"+this.name, sz:this.sz,
                          dst:this.d.toString(), src: (this.s ? this.s.toString() : null),
                          src_hex:src_hex, src_str:src_str, dst_now:dst_now.substring(0,400),
                          bt:this.bt.slice(0, 15), ts:TS()});
                }
            });
        };
    }

    if (_memcpy) makeWatch("memcpy", 0, 1, 2)(_memcpy);
    if (_memmove) makeWatch("memmove", 0, 1, 2)(_memmove);
    if (_stpcpy) makeWatch("stpcpy", 0, 1, null)(_stpcpy);
    if (_strcpy) makeWatch("strcpy", 0, 1, null)(_strcpy);
    if (_strncat) makeWatch("strncat", 0, 1, 2)(_strncat);
    if (_strcat) makeWatch("strcat", 0, 1, null)(_strcat);
    if (_snprintf) makeWatch("snprintf", 0, null, null)(_snprintf);
    if (_memset) makeWatch("memset", 0, null, 2)(_memset);
    send({t:"append_watch_installed", ts:TS()});
}

var _prefix_hook_installed = false;
function installPrefixHook(engine) {
    if (_prefix_hook_installed) return;
    // The memcpy call for the URL prefix is at libengine.so + 0x801d7c (bl memcpy)
    // We hook at 0x801d7c to capture args right before the call.
    // But hooking at the bl instruction is complex; simpler: hook memcpy globally with a
    // filter on return address == 0x801d80 (which is where control returns).
    var _memcpy = libc.findExportByName("memcpy");
    var _memmove = libc.findExportByName("memmove");
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    function makePrefixHook(name) {
        return {
            onEnter: function(args) {
                var ra = this.returnAddress;
                if (ra.equals(target_ra_prefix) || ra.equals(target_ra_full)) {
                    this.hit = true;
                    this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
                    this.which = ra.equals(target_ra_prefix) ? "PREFIX" : "FULL";
                    this.bt = bt(this.context);
                }
            },
            onLeave: function() {
                if (!this.hit) return;
                var src_hex = "", src_str = "";
                try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200))); } catch(e){}
                try { src_str = this.src.readCString(Math.min(this.sz, 200)); } catch(e){}
                var dst_hex = "";
                try { dst_hex = hexify(this.dst.readByteArray(Math.min(this.sz, 200))); } catch(e){}
                send({t:"URL_LIBENGINE_"+this.which, name:name, sz:this.sz,
                      dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str, src_hex:src_hex.substring(0,400),
                      dst_hex_after:dst_hex.substring(0,400),
                      bt:this.bt.slice(0,15), ts:TS()});
                if (this.which === "PREFIX" && !url_dst_ptr) {
                    url_dst_ptr = this.dst;
                    // Install append watch now
                    armAppendWatch(url_dst_ptr);
                }
            }
        };
    }
    if (_memcpy) Interceptor.attach(_memcpy, makePrefixHook("memcpy"));
    if (_memmove) Interceptor.attach(_memmove, makePrefixHook("memmove"));
    _prefix_hook_installed = true;
    send({t:"prefix_hook_installed", ts:TS()});
}

var _modules_ready = false;
function tryInit() {
    if (_modules_ready) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS(), flutter:flutter.base.toString(), engine:engine.base.toString(), libapp:libapp.base.toString()});
    installSinkHook(flutter);
    installPrefixHook(engine);
    send({t:"init_ready", ts:TS()});
}
setTimeout(tryInit, 30);
send({t:"boot_done", ts:1});
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t.startswith('URL_LIBENGINE_'):
            print(f"\n{'='*80}\n*** {t} @ +{p.get('ts',0)}ms sz={p.get('sz','?')} ***")
            print(f"  dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:200]}")
            print(f"  dst_hex_after: {p.get('dst_hex_after','')[:200]}")
            print(f"  bt:")
            for f in p.get('bt',[])[:10]: print(f"    {f}")
        elif t.startswith('APPEND_'):
            print(f"\n--- {t} @ +{p.get('ts',0)}ms sz={p.get('sz','?')} ---")
            print(f"  dst={p.get('dst')} src={p.get('src','')}")
            print(f"  src_str: {p.get('src_str','')[:120]}")
            print(f"  src_hex: {p.get('src_hex','')[:120]}")
            print(f"  dst_now: {p.get('dst_now','')[:160]}")
            print(f"  bt: {p.get('bt', [])[:6]}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] Z_SINK: {p.get('data','')[:250]}")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()

print("[*] Force-stop + start snake with wrap...")
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
time.sleep(30)

with open("/tmp/watch_append.json", "w") as f: json.dump(results, f, indent=2, default=str)
print(f"\n[*] Total: {len(results)}")
libeng = [r for r in results if r.get('t','').startswith('URL_LIBENGINE_')]
app = [r for r in results if r.get('t','').startswith('APPEND_')]
print(f"[*] URL_LIBENGINE: {len(libeng)}, APPEND: {len(app)}")
session.detach()
