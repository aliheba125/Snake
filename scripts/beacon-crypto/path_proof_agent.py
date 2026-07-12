#!/usr/bin/env python3
"""
Third proof run: enumerate ALL modules + wider memory scan + track dlopen for late loading.
Focus: find what maps at 0xeb090... range and locate raw z48 in memory.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };

send({t:"boot", ts:TS(), pid:Process.id});

var RING = [];
function record(rec) { rec.ts = TS(); RING.push(rec); if (RING.length > 3000) RING.shift(); }
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 512;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}
function readVec(vecPtr) {
    try {
        var begin_p = vecPtr.readPointer();
        var end_p = vecPtr.add(8).readPointer();
        var len = end_p.sub(begin_p).toInt32();
        if (len > 0 && len < 4096) return { addr: begin_p, len: len, hex: hexify(begin_p.readByteArray(len)) };
    } catch(e) {}
    return { addr: null, len: 0, hex: "" };
}

var _hooks_done = false;
var flutter=null, engine=null, libapp=null, libc = Process.getModuleByName("libc.so");
var engBase=null, engEnd=null, flutterBase=null, flutterEnd=null, libappBase=null, libappEnd=null;

// Enumerate ALL modules with their address ranges
function allModules() {
    var mods = Process.enumerateModules();
    return mods.map(function(m){ return {name:m.name, base:m.base.toString(), size:m.size, end:m.base.add(m.size).toString(), path:m.path||""}; });
}

// Which module contains a given address?
function moduleOfAddr(addr, mods) {
    if (typeof mods === 'undefined') mods = Process.enumerateModules();
    for (var i = 0; i < mods.length; i++) {
        var b = mods[i].base;
        var e = b.add(mods[i].size);
        if (addr.compare(b) >= 0 && addr.compare(e) < 0) {
            return mods[i].name + "+" + addr.sub(b).toInt32().toString(16);
        }
    }
    return addr.toString();
}

function bt(ctx, mods) {
    try {
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 20);
        return frames.map(function(f){ return moduleOfAddr(f, mods); });
    } catch(e) { return []; }
}

// Install libc malloc hook early
var malloc = libc.findExportByName("malloc");
Interceptor.attach(malloc, {
    onEnter: function(args) { this.sz = args[0].toInt32(); },
    onLeave: function(retval) {
        if ([20,32,48,49,96,97,16,12,64,128].indexOf(this.sz) === -1) return;
        if (!engBase && !libappBase) return;
        record({k:"malloc"+this.sz, addr:retval.toString(), ret_addr:this.returnAddress.toString()});
    }
});
send({t:"hook_ok", target:"malloc", ts:TS()});

// Hook dlopen to know when modules load
var dlopen = libc.findExportByName("android_dlopen_ext") || libc.findExportByName("dlopen");
if (dlopen) {
    Interceptor.attach(dlopen, {
        onEnter: function(args) {
            try { this.path = args[0].readCString(); } catch(e) { this.path = "?"; }
        },
        onLeave: function() {
            send({t:"dlopen", ts:TS(), path:this.path});
        }
    });
    send({t:"hook_ok", target:"dlopen"});
}

function tryInstallHooks() {
    if (_hooks_done) return;
    flutter = Process.findModuleByName("libflutter.so");
    engine = Process.findModuleByName("libengine.so");
    libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallHooks, 20); return; }
    engBase = engine.base; engEnd = engine.base.add(engine.size);
    flutterBase = flutter.base; flutterEnd = flutter.base.add(flutter.size);
    libappBase = libapp.base; libappEnd = libapp.base.add(libapp.size);

    var mods = allModules();
    send({t:"modules_loaded", ts:TS(), count:mods.length, modules:mods.slice(0, 60)});

    // === libengine crypto ===
    Interceptor.attach(engBase.add(0x161788), {
        onEnter: function(args) {
            this.out_ptr = args[0]; this.seed1 = args[1].toInt32() >>> 0;
            this.seed2_lo = args[2].toInt32() >>> 0; this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"KDF", seed1:this.seed1, seed2_lo:this.seed2_lo, out_hex:out.hex, bt:this.bt});
            send({t:"KDF", ts:TS(), seed1:"0x"+this.seed1.toString(16), out_hex:out.hex});
        }
    });
    Interceptor.attach(engBase.add(0x160208), {
        onEnter: function(args) {
            this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
            this.key_snap = readVec(this.key_ptr); this.in_snap = readVec(this.in_ptr);
            this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"AES_dec", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex, out_hex:out.hex, bt:this.bt});
            send({t:"AES_dec", ts:TS(), key:this.key_snap.hex.substring(0,64), in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96)});
        }
    });
    Interceptor.attach(engBase.add(0x15fdec), {
        onEnter: function(args) {
            this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
            this.key_snap = readVec(this.key_ptr); this.in_snap = readVec(this.in_ptr);
            this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"AES_enc", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex, out_hex:out.hex, bt:this.bt});
            send({t:"AES_enc", ts:TS(), key:this.key_snap.hex.substring(0,64), in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96)});
        }
    });
    Interceptor.attach(engBase.add(0x167d38), {
        onEnter: function() { this.bt = bt(this.context); },
        onLeave: function() { record({k:"FUN_167d38", bt:this.bt}); send({t:"FUN_167d38", ts:TS()}); }
    });

    // SINK — deeper backtrace + broader memory scan
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

                        // Build byte scan pattern from first 16 bytes of z48 (IV)
                        var scan_pattern = "";
                        for (var j = 0; j < 32; j += 2) {
                            scan_pattern += z48.substring(j, j+2);
                            if (j < 30) scan_pattern += " ";
                        }
                        // Scan ALL rw regions (not just anon) — includes stack, heap, libapp data
                        var raw_locations = [];
                        try {
                            var mods_now = Process.enumerateModules();
                            var ranges = Process.enumerateRanges({protection: 'rw-'});
                            for (var rr = 0; rr < ranges.length && raw_locations.length < 30; rr++) {
                                if (ranges[rr].size > 200000000) continue;
                                try {
                                    var found = Memory.scanSync(ranges[rr].base, ranges[rr].size, scan_pattern);
                                    for (var ff = 0; ff < found.length && raw_locations.length < 30; ff++) {
                                        var addr = found[ff].address;
                                        var before_hex = "", after_hex = "";
                                        try { before_hex = hexify(addr.sub(64).readByteArray(64)); } catch(e){}
                                        try { after_hex = hexify(addr.readByteArray(96)); } catch(e){}
                                        var mod_here = moduleOfAddr(addr, mods_now);
                                        raw_locations.push({addr:addr.toString(),
                                                             mod:mod_here,
                                                             region_base:ranges[rr].base.toString(),
                                                             region_size:ranges[rr].size,
                                                             before64:before_hex,
                                                             at:after_hex});
                                    }
                                } catch(e){}
                            }
                        } catch(e){}

                        var sink_bt = bt(this.context, Process.enumerateModules()).slice(0, 20);

                        send({t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48,
                              iv_hex:iv_hex, ct_hex:ct_hex,
                              sink_bt:sink_bt,
                              ring_size:RING.length,
                              raw_locations:raw_locations,
                              n_raw_locations:raw_locations.length,
                              http_head:s.substring(0,300),
                              ts:TS()});
                        return;
                    }
                } catch(e) {}
            }
        }
    });

    _hooks_done = true;
    send({t:"all_hooks_installed", ts:TS()});
}

setTimeout(tryInstallHooks, 30);
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
            print("z_hex   :", p.get('z_hex_full','')[:100])
            print("iv_hex  :", p.get('iv_hex',''))
            print("ct_hex  :", p.get('ct_hex',''))
            print("RING size:", p.get('ring_size'))
            print("SINK backtrace (deep):")
            for f in p.get('sink_bt', []): print("  ", f)
            print("N raw locations:", p.get('n_raw_locations'))
            for r in p.get('raw_locations', [])[:15]:
                print("  RAW LOC:", r.get('addr'), "mod:", r.get('mod'))
                print("    before[-64:]:", r.get('before64','')[-64:])
                print("    at[:96]:", r.get('at','')[:96])
            print("="*80)
        elif t == 'modules_loaded':
            print("[+%dms] %d modules loaded. First 30:" % (p.get('ts',0), p.get('count',0)))
            for m in p.get('modules', [])[:30]:
                print("  %s @ %s size=%d" % (m.get('name'), m.get('base'), m.get('size')))
        elif t == 'dlopen':
            path = p.get('path','')
            if path and 'libc' not in path and 'libm' not in path and 'linker' not in path:
                print("[+%dms] dlopen: %s" % (p.get('ts',0), path))
        elif t in ('KDF','AES_enc','AES_dec','FUN_167d38'):
            print("[+%dms] %s %s" % (p.get('ts',0), t, json.dumps({k:v for k,v in p.items() if k not in ('t','ts')})[:250]))
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:200]))
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print("ERR:", msg.get('description','')[:400])
        sys.stdout.flush()

print("[*] Force-stopping snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=10)
time.sleep(2)
print("[*] Starting snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=10)

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
            print("[+%.3fs] Gadget found (PID %d)" % (time.time()-t_start, procs[0].pid))
            break
    except Exception:
        pass

if not device:
    print("[!] Gadget not reachable!"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
print("[+%.3fs] attached" % (time.time()-t_start))
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[+%.3fs] script loaded" % (time.time()-t_start))
time.sleep(45)

print("\n" + "="*80)
z_hits = [r for r in results if r.get('t') == 'Z_SINK_HIT']
kdf_hits = [r for r in results if r.get('t') == 'KDF']
enc_hits = [r for r in results if r.get('t') == 'AES_enc']
dec_hits = [r for r in results if r.get('t') == 'AES_dec']
fun_hits = [r for r in results if r.get('t') == 'FUN_167d38']
print("[*] Z SINK: %d, KDF: %d, AES_enc: %d, AES_dec: %d, FUN_167d38: %d"
      % (len(z_hits), len(kdf_hits), len(enc_hits), len(dec_hits), len(fun_hits)))

with open("/tmp/proof_results3.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Full results saved to /tmp/proof_results3.json")
session.detach()
