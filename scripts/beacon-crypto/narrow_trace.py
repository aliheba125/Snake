#!/usr/bin/env python3
"""
Narrow buffer trace: hook only memcpy sizes 48/49 (raw z) and 96/97 (hex z).
Also hook mprotect for RWX (JIT). Track first appearance of iv/ct pattern.
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
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 12);
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

// Buffer TRACE (small: only size 48/49/96/97 which are z-relevant)
var TRACE = [];
function trace(rec) { rec.ts = TS(); TRACE.push(rec); if (TRACE.length > 5000) TRACE.shift(); }
var ALLOCS = [];
function alloc(rec) { rec.ts = TS(); ALLOCS.push(rec); if (ALLOCS.length > 5000) ALLOCS.shift(); }

var _malloc = libc.findExportByName("malloc");
var _calloc = libc.findExportByName("calloc");
var _memcpy = libc.findExportByName("memcpy");
var _memmove = libc.findExportByName("memmove");

// Only track allocations of size 20, 32, 48, 49, 96, 97 (z-related)
// AND from modules we care about
Interceptor.attach(_malloc, {
    onEnter: function(args) { this.sz = args[0].toInt32(); },
    onLeave: function(retval) {
        var sz = this.sz;
        if (sz !== 20 && sz !== 32 && sz !== 48 && sz !== 49 && sz !== 96 && sz !== 97 && sz !== 16) return;
        updateModules();  // Cheap since we cache
        var mod = moduleOfAddr(this.returnAddress);
        if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0 ||
            mod.indexOf("libflutter") === 0 || mod.indexOf("base.apk") === 0) {
            alloc({k:"malloc"+sz, addr:retval.toString(), caller:mod, bt:bt(this.context).slice(0,6)});
        }
    }
});

// Hook memcpy but with fast size filter
function makeCopyHook(name) {
    return {
        onEnter: function(args) {
            var sz = args[2].toInt32();
            // ONLY z-relevant sizes to avoid perf collapse
            if (sz !== 48 && sz !== 49 && sz !== 96 && sz !== 97 && sz !== 20 && sz !== 32 && sz !== 16) return;
            this.sz = sz;
            this.dst = args[0];
            this.src = args[1];
            this.ra = this.returnAddress;
        },
        onLeave: function() {
            if (!this.sz) return;
            updateModules();
            var mod = moduleOfAddr(this.ra);
            if (!(mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0 ||
                  mod.indexOf("libflutter") === 0 || mod.indexOf("base.apk") === 0)) return;
            var src_hex = "";
            try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 96)), Math.min(this.sz, 96)); } catch(e){}
            trace({k:name, sz:this.sz, dst:this.dst.toString(), src:this.src.toString(),
                   src_hex:src_hex, caller:mod, bt: bt(this.context).slice(0,4)});
        }
    };
}
Interceptor.attach(_memcpy, makeCopyHook("memcpy"));
Interceptor.attach(_memmove, makeCopyHook("memmove"));
var _memcpy_chk = libc.findExportByName("__memcpy_chk");
if (_memcpy_chk) Interceptor.attach(_memcpy_chk, makeCopyHook("memcpy_chk"));

// Hook mprotect for RWX (JIT emitter)
var _mprotect = libc.findExportByName("mprotect");
if (_mprotect) {
    Interceptor.attach(_mprotect, {
        onEnter: function(args) {
            var prot = args[2].toInt32();
            if ((prot & 5) === 5 || (prot & 7) === 7 || (prot & 3) === 3) {  // R+X or RWX or RW
                updateModules();
                var caller = moduleOfAddr(this.returnAddress);
                if (caller.indexOf("libapp") === 0 || caller.indexOf("libengine") === 0 || caller.indexOf("libflutter") === 0) {
                    // Log only interesting mprotect changes
                    if (Math.random() < 0.05) {  // sample 5% to reduce noise
                        // Skip
                    }
                }
            }
        }
    });
}

// SINK
var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallSink, 15); return; }
    send({t:"modules_ready", ts:TS(), flutter:flutter.base.toString(),
          engine:engine.base.toString(), libapp:libapp.base.toString()});

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

                        // Search TRACE for byte identity — full or partial (16 hex = 8 raw bytes minimum)
                        var direct_hits = [], partial_hits = [];
                        var iv_prefix = iv_hex.substring(0, 16), ct_prefix = ct_hex.substring(0, 16);
                        for (var ti = TRACE.length - 1; ti >= 0; ti--) {
                            var rec = TRACE[ti];
                            var h = (rec.src_hex||"").toLowerCase();
                            if (!h || h.length < 16) continue;
                            if (h.indexOf(iv_hex) !== -1 || h.indexOf(ct_hex) !== -1 ||
                                h.indexOf(z48.substring(0,32)) !== -1) {
                                direct_hits.push(rec);
                            } else if (h.indexOf(iv_prefix) !== -1 || h.indexOf(ct_prefix) !== -1 ||
                                       h.indexOf(z48.substring(0,16)) !== -1) {
                                partial_hits.push(rec);
                            }
                        }

                        // Scan process memory for iv_hex pattern to find current buffer locations
                        var iv_pattern = "";
                        for (var j = 0; j < 32; j += 2) {
                            iv_pattern += iv_hex.substring(j, j+2);
                            if (j < 30) iv_pattern += " ";
                        }
                        var mem_locations = [];
                        try {
                            var ranges = Process.enumerateRanges({protection: 'rw-'});
                            for (var rr = 0; rr < ranges.length && mem_locations.length < 15; rr++) {
                                if (ranges[rr].size > 100000000) continue;
                                try {
                                    var found = Memory.scanSync(ranges[rr].base, ranges[rr].size, iv_pattern);
                                    for (var ff = 0; ff < found.length && mem_locations.length < 15; ff++) {
                                        var addr = found[ff].address;
                                        var context_hex = "";
                                        try { context_hex = hexify(addr.readByteArray(64)); } catch(e){}
                                        mem_locations.push({addr:addr.toString(),
                                                             mod:moduleOfAddr(addr),
                                                             region_base:ranges[rr].base.toString(),
                                                             hex_at:context_hex});
                                    }
                                } catch(e){}
                            }
                        } catch(e){}

                        send({t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48, iv_hex:iv_hex, ct_hex:ct_hex,
                              trace_len:TRACE.length, alloc_len:ALLOCS.length,
                              n_direct:direct_hits.length, n_partial:partial_hits.length,
                              direct:direct_hits.slice(0, 30),
                              partial:partial_hits.slice(0, 15),
                              recent_allocs:ALLOCS.slice(-30),
                              mem_locations:mem_locations,
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
            print("TRACE:", p.get('trace_len'), "  ALLOCS:", p.get('alloc_len'))
            print("DIRECT byte-hits:", p.get('n_direct'))
            for i, rec in enumerate(p.get('direct', [])[:15]):
                print(f"  DIRECT #{i}: {rec.get('k')} sz={rec.get('sz')} caller={rec.get('caller')} dst={rec.get('dst')} src={rec.get('src')}")
                print(f"    src_hex[:96]: {rec.get('src_hex','')[:96]}")
                print(f"    bt: {rec.get('bt', [])}")
            print("PARTIAL byte-hits:", p.get('n_partial'))
            for i, rec in enumerate(p.get('partial', [])[:8]):
                print(f"  PARTIAL #{i}: {rec.get('k')} sz={rec.get('sz')} caller={rec.get('caller')}")
                print(f"    src_hex[:96]: {rec.get('src_hex','')[:96]}")
            print("RECENT ALLOCS:")
            for a in p.get('recent_allocs', [])[-15:]:
                print(f"  ALLOC: {a.get('k')} addr={a.get('addr')} caller={a.get('caller')} bt={a.get('bt', [])[:3]}")
            print("MEM LOCATIONS OF iv_hex (raw bytes in memory):")
            for m in p.get('mem_locations', []):
                print(f"  MEM: addr={m.get('addr')} mod={m.get('mod')} region_base={m.get('region_base')}")
                print(f"    hex_at[:64]: {m.get('hex_at','')[:64]}")
            print("SINK backtrace:")
            for f in p.get('sink_bt', []): print("  ", f)
            print("="*80)
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:250]))
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print("ERR:", msg.get('description','')[:300])
        sys.stdout.flush()

print("[*] Force-stopping snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=10)
time.sleep(2)
print("[*] Starting snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=10)

print("[*] Polling for gadget...")
t_start = time.time()
device = None
last_pid = None
for i in range(80):
    time.sleep(0.15)
    try:
        dm = frida.get_device_manager()
        d = dm.add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs:
            pid = procs[0].pid
            if last_pid is None:
                last_pid = pid
                # See if PID stabilizes (not being restarted)
            elif last_pid == pid:
                device = d
                print("[+%.3fs] Gadget stable PID %d" % (time.time()-t_start, pid))
                break
    except Exception:
        pass

if not device:
    # Take whatever we have
    try:
        dm = frida.get_device_manager()
        d = dm.add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs: device = d; print("[+%.3fs] Fallback to PID %d" % (time.time()-t_start, procs[0].pid))
    except: pass

if not device: print("[!] no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
print("[+%.3fs] attached" % (time.time()-t_start))
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[+%.3fs] script loaded" % (time.time()-t_start))
time.sleep(40)

with open("/tmp/narrow_trace.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Saved.")
session.detach()
