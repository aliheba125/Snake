#!/usr/bin/env python3
"""
Track z BACKWARDS: log every memcpy/memmove/malloc call that could carry the
z bytes, plus every hex-encoding character-write. At sink time (when the URL
is assembled), walk backward through the log and find the chain of buffers
whose content matches z's bytes.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

// Modules
var flutter=null, engine=null, libapp=null;
var libc = Process.getModuleByName("libc.so");
var moduleList = [];

function updateModules() {
    moduleList = Process.enumerateModules();
    return moduleList;
}
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
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 16);
        return frames.map(function(f){ return moduleOfAddr(f); });
    } catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

// Trace log — every memcpy/memmove/malloc from tracked callers
var TRACE = [];
function trace(rec) { rec.ts = TS(); TRACE.push(rec); if (TRACE.length > 20000) TRACE.shift(); }

// Alloc log
var ALLOCS = [];
function alloc(rec) { rec.ts = TS(); ALLOCS.push(rec); if (ALLOCS.length > 5000) ALLOCS.shift(); }

var _malloc = libc.findExportByName("malloc");
var _memcpy = libc.findExportByName("memcpy");
var _memmove = libc.findExportByName("memmove");
var _memcpy_chk = libc.findExportByName("__memcpy_chk");
var _memmove_chk = libc.findExportByName("__memmove_chk");

// Install ALWAYS-on hooks (safe: libc)
if (_malloc) {
    Interceptor.attach(_malloc, {
        onEnter: function(args) { this.sz = args[0].toInt32(); },
        onLeave: function(retval) {
            if (this.sz < 12 || this.sz > 200) return;
            var mod = moduleOfAddr(this.returnAddress);
            // Track allocations from libapp/libengine/libflutter only
            if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0 || mod.indexOf("libflutter") === 0 || mod.indexOf("base.apk") === 0) {
                alloc({k:"malloc", sz:this.sz, addr:retval.toString(), caller:mod});
            }
        }
    });
}

function makeCopyHook(name) {
    return {
        onEnter: function(args) {
            var sz = args[2].toInt32();
            if (sz < 12 || sz > 512) return;  // relevant sizes only
            this.sz = sz;
            this.dst = args[0];
            this.src = args[1];
            this.ra = this.returnAddress;
        },
        onLeave: function() {
            if (!this.sz) return;
            var mod = moduleOfAddr(this.ra);
            // Track copies from libapp/libengine/libflutter/base.apk callers
            if (!(mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0 ||
                  mod.indexOf("libflutter") === 0 || mod.indexOf("base.apk") === 0)) return;
            var src_hex = "", dst_hex_before = "";
            try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 96)), Math.min(this.sz, 96)); } catch(e){}
            trace({k:name, sz:this.sz,
                   dst:this.dst.toString(), src:this.src.toString(),
                   src_hex:src_hex, caller:mod});
        }
    };
}
if (_memcpy) Interceptor.attach(_memcpy, makeCopyHook("memcpy"));
if (_memmove) Interceptor.attach(_memmove, makeCopyHook("memmove"));
if (_memcpy_chk) Interceptor.attach(_memcpy_chk, makeCopyHook("memcpy_chk"));
if (_memmove_chk) Interceptor.attach(_memmove_chk, makeCopyHook("memmove_chk"));

// Wait for modules and install SINK
var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    updateModules();
    flutter = Process.findModuleByName("libflutter.so");
    engine = Process.findModuleByName("libengine.so");
    libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallSink, 15); return; }
    send({t:"modules_ready", ts:TS(), flutter:flutter.base.toString(), engine:engine.base.toString(), libapp:libapp.base.toString()});

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex_full = m ? m[1] : "";
                        var z48 = z_hex_full.length >= 98 ? z_hex_full.substring(2, 98) : "";
                        var iv_hex = z48.substring(0, 32);
                        var ct_hex = z48.substring(32);

                        // Walk TRACE backward for byte-identity hits
                        var direct_hits = [];    // src_hex contains iv or ct
                        var partial_hits = [];   // src_hex contains 16-hex-char (8 raw bytes) prefix of iv/ct

                        var iv_prefix = iv_hex.substring(0, 16);   // 8 bytes
                        var ct_prefix = ct_hex.substring(0, 16);
                        var z48_prefix = z48.substring(0, 16);

                        for (var ti = TRACE.length - 1; ti >= 0; ti--) {
                            var rec = TRACE[ti];
                            var h = rec.src_hex;
                            if (!h) continue;
                            if (h.indexOf(iv_hex) !== -1 || h.indexOf(ct_hex) !== -1 ||
                                h.indexOf(z48.substring(0,32)) !== -1) {
                                direct_hits.push({ti:ti, rec:rec});
                            } else if (h.indexOf(iv_prefix) !== -1 || h.indexOf(ct_prefix) !== -1 ||
                                       h.indexOf(z48_prefix) !== -1) {
                                partial_hits.push({ti:ti, rec:rec});
                            }
                        }

                        // Also check ALLOCS for buffers whose address matches the src/dst of any hit
                        var alloc_hits = [];
                        var hit_addrs = new Set();
                        for (var h = 0; h < Math.min(direct_hits.length, 20); h++) {
                            hit_addrs.add(direct_hits[h].rec.src);
                            hit_addrs.add(direct_hits[h].rec.dst);
                        }
                        for (var ai = 0; ai < ALLOCS.length; ai++) {
                            if (hit_addrs.has(ALLOCS[ai].addr)) alloc_hits.push(ALLOCS[ai]);
                        }

                        send({t:"Z_SINK_HIT",
                              z_hex_full:z_hex_full, z48:z48, iv_hex:iv_hex, ct_hex:ct_hex,
                              trace_len:TRACE.length,
                              alloc_len:ALLOCS.length,
                              n_direct: direct_hits.length,
                              n_partial: partial_hits.length,
                              direct_hits: direct_hits.slice(0, 30),
                              partial_hits: partial_hits.slice(0, 15),
                              alloc_hits: alloc_hits.slice(0, 30),
                              sink_bt: bt(this.context).slice(0, 12),
                              ts:TS()});
                        return;
                    }
                } catch(e) {}
            }
        }
    });
    _sink_installed = true;
    send({t:"sink_installed", ts:TS()});
}

setTimeout(tryInstallSink, 30);
send({t:"init_done", ts:TS()});
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'Z_SINK_HIT':
            print("\n" + "="*80)
            print("*** Z SINK HIT @ +%dms ***" % p.get('ts',0))
            print("z48:", p.get('z48'))
            print("iv :", p.get('iv_hex'))
            print("ct :", p.get('ct_hex'))
            print("trace log:", p.get('trace_len'), "alloc log:", p.get('alloc_len'))
            print("direct byte-hits: %d, partial hits: %d" % (p.get('n_direct',0), p.get('n_partial',0)))
            for i, h in enumerate(p.get('direct_hits', [])[:15]):
                rec = h.get('rec', {})
                print(f"  DIRECT #{i}: {rec.get('k')} sz={rec.get('sz')} caller={rec.get('caller')} dst={rec.get('dst')} src={rec.get('src')}")
                print(f"    src_hex[:64]: {rec.get('src_hex','')[:64]}")
            for i, h in enumerate(p.get('partial_hits', [])[:8]):
                rec = h.get('rec', {})
                print(f"  PARTIAL #{i}: {rec.get('k')} sz={rec.get('sz')} caller={rec.get('caller')}")
                print(f"    src_hex[:64]: {rec.get('src_hex','')[:64]}")
            for i, a in enumerate(p.get('alloc_hits', [])[:8]):
                print(f"  ALLOC #{i}: sz={a.get('sz')} addr={a.get('addr')} caller={a.get('caller')}")
            print("SINK backtrace:")
            for f in p.get('sink_bt', []): print("  ", f)
            print("="*80)
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:250]))
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print("ERR:", msg.get('description','')[:300])
        sys.stdout.flush()

# Restart snake and attach with early tracking
print("[*] Force-stopping snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=10)
time.sleep(2)
print("[*] Starting snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=10)

print("[*] Polling for gadget...")
t_start = time.time()
device = None
for i in range(80):
    time.sleep(0.15)
    try:
        dm = frida.get_device_manager()
        d = dm.add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs:
            device = d
            print("[+%.3fs] Gadget found PID %d" % (time.time()-t_start, procs[0].pid))
            break
    except Exception:
        pass
if not device: print("[!] no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
print("[+%.3fs] attached" % (time.time()-t_start))
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[+%.3fs] script loaded" % (time.time()-t_start))
time.sleep(35)

print("\n" + "="*80)
z_hits = [r for r in results if r.get('t') == 'Z_SINK_HIT']
print(f"[*] Z SINK hits: {len(z_hits)}")
with open("/tmp/backward_trace.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Saved to /tmp/backward_trace.json")
session.detach()
