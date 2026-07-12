#!/usr/bin/env python3
"""
Restart snake + fast attach + install hooks progressively (retry until modules load).
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };

send({t:"boot", ts:TS(), pid:Process.id});

var RING = [];
function record(rec) { rec.ts = TS(); RING.push(rec); if (RING.length > 1500) RING.shift(); }
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
var _libc_hook_done = false;
var flutter=null, engine=null, libapp=null;
var engBase=null, engEnd=null, flutterBase=null, flutterEnd=null, libappBase=null, libappEnd=null;

function moduleOf(addr) {
    if (engBase && addr.compare(engBase) >= 0 && addr.compare(engEnd) < 0) return "libengine+" + addr.sub(engBase).toInt32().toString(16);
    if (flutterBase && addr.compare(flutterBase) >= 0 && addr.compare(flutterEnd) < 0) return "libflutter+" + addr.sub(flutterBase).toInt32().toString(16);
    if (libappBase && addr.compare(libappBase) >= 0 && addr.compare(libappEnd) < 0) return "libapp+" + addr.sub(libappBase).toInt32().toString(16);
    return addr.toString();
}

function bt(ctx) {
    try {
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 12);
        return frames.map(moduleOf);
    } catch(e) { return []; }
}

// Install libc malloc hook early — safe
var libc = Process.getModuleByName("libc.so");
var malloc = libc.findExportByName("malloc");
Interceptor.attach(malloc, {
    onEnter: function(args) { this.sz = args[0].toInt32(); },
    onLeave: function(retval) {
        if ([20,32,48,49,96,97,16,12].indexOf(this.sz) === -1) return;
        var ra = this.returnAddress;
        // Only track when engine/libapp are known
        if (!engBase && !libappBase) return;
        var mod = moduleOf(ra);
        if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0) {
            record({k:"malloc"+this.sz, addr:retval.toString(), caller:mod});
        }
    }
});
send({t:"hook_ok", target:"malloc", ts:TS()});

function tryInstallHooks() {
    if (_hooks_done) return;
    flutter = Process.findModuleByName("libflutter.so");
    engine = Process.findModuleByName("libengine.so");
    libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) {
        setTimeout(tryInstallHooks, 30);
        return;
    }
    engBase = engine.base; engEnd = engine.base.add(engine.size);
    flutterBase = flutter.base; flutterEnd = flutter.base.add(flutter.size);
    libappBase = libapp.base; libappEnd = libapp.base.add(libapp.size);
    send({t:"modules_loaded", ts:TS(), flutter:flutterBase.toString(),
          engine:engBase.toString(), libapp:libappBase.toString()});

    Interceptor.attach(engBase.add(0x161788), {
        onEnter: function(args) {
            this.out_ptr = args[0];
            this.seed1 = args[1].toInt32() >>> 0;
            this.seed2_lo = args[2].toInt32() >>> 0;
            this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"KDF", seed1:this.seed1, seed2_lo:this.seed2_lo,
                    out_hex:out.hex, out_addr:out.addr?out.addr.toString():null, bt:this.bt});
            send({t:"KDF", seed1:"0x"+this.seed1.toString(16), seed2_lo:"0x"+this.seed2_lo.toString(16),
                  out_hex:out.hex, bt:this.bt.slice(0,6), ts:TS()});
        }
    });

    Interceptor.attach(engBase.add(0x160208), {
        onEnter: function(args) {
            this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
            this.key_snap = readVec(this.key_ptr);
            this.in_snap  = readVec(this.in_ptr);
            this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"AES_dec", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                    out_hex:out.hex, out_addr:out.addr?out.addr.toString():null,
                    in_addr:this.in_snap.addr?this.in_snap.addr.toString():null,
                    bt:this.bt});
            send({t:"AES_dec", key:this.key_snap.hex.substring(0,64),
                  in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96),
                  bt:this.bt.slice(0,6), ts:TS()});
        }
    });

    Interceptor.attach(engBase.add(0x15fdec), {
        onEnter: function(args) {
            this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
            this.key_snap = readVec(this.key_ptr);
            this.in_snap  = readVec(this.in_ptr);
            this.bt = bt(this.context);
        },
        onLeave: function() {
            var out = readVec(this.out_ptr);
            record({k:"AES_enc", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                    out_hex:out.hex, out_addr:out.addr?out.addr.toString():null,
                    in_addr:this.in_snap.addr?this.in_snap.addr.toString():null,
                    bt:this.bt});
            send({t:"AES_enc", key:this.key_snap.hex.substring(0,64),
                  in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96),
                  bt:this.bt.slice(0,6), ts:TS()});
        }
    });

    Interceptor.attach(engBase.add(0x167d38), {
        onEnter: function() { this.bt = bt(this.context); },
        onLeave: function() {
            record({k:"FUN_167d38", bt:this.bt});
            send({t:"FUN_167d38", bt:this.bt.slice(0,6), ts:TS()});
        }
    });

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
                        var matches = [];
                        for (var r = RING.length - 1; r >= 0; r--) {
                            var rec = RING[r];
                            var cands = [];
                            if (rec.out_hex) cands.push(['out', rec.out_hex.toLowerCase()]);
                            if (rec.in_hex)  cands.push(['in',  rec.in_hex.toLowerCase()]);
                            if (rec.key_hex) cands.push(['key', rec.key_hex.toLowerCase()]);
                            for (var c = 0; c < cands.length; c++) {
                                var name = cands[c][0], hv = cands[c][1];
                                if (hv.length < 16) continue;
                                var m_pos = -1;
                                if (ct_hex && hv.indexOf(ct_hex) !== -1) m_pos = hv.indexOf(ct_hex);
                                else if (ct_hex && ct_hex.indexOf(hv.substring(0, Math.min(32, hv.length))) !== -1) m_pos = 0;
                                else if (iv_hex && hv.indexOf(iv_hex) !== -1) m_pos = hv.indexOf(iv_hex);
                                else if (iv_hex && iv_hex.indexOf(hv.substring(0, Math.min(32, hv.length))) !== -1) m_pos = 0;
                                else if (hv.indexOf(z48.substring(0, 16)) !== -1) m_pos = hv.indexOf(z48.substring(0, 16));
                                if (m_pos !== -1) matches.push({rec_idx:r, kind:rec.k, ts:rec.ts,
                                                 field:name, match_hex:hv.substring(0, 64), bt:rec.bt});
                            }
                        }
                        send({t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48,
                              iv_hex:iv_hex, ct_hex:ct_hex,
                              sink_bt:bt(this.context).slice(0,10),
                              ring_size:RING.length,
                              n_matches:matches.length,
                              buffer_matches:matches.slice(0,30),
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

// Also hook dlopen to know when modules load
var linker_dlopen = null;
try {
    var linker = Process.getModuleByName("linker64");
    linker_dlopen = linker.findExportByName("__loader_dlopen");
} catch(e) {}

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
            print("z48     :", p.get('z48',''))
            print("iv_hex  :", p.get('iv_hex',''))
            print("ct_hex  :", p.get('ct_hex',''))
            print("ring size:", p.get('ring_size'))
            print("N buffer_matches:", p.get('n_matches'))
            for m in p.get('buffer_matches', [])[:15]:
                print("  MATCH:", json.dumps(m)[:400])
            print("SINK backtrace:")
            for f in p.get('sink_bt', []): print("  ", f)
            print("HTTP head:", p.get('http_head',''))
            print("="*80)
        elif t in ('KDF','AES_enc','AES_dec','FUN_167d38'):
            print("[+%dms] %s" % (p.get('ts',0), t), json.dumps({k:v for k,v in p.items() if k not in ('t','ts')})[:250])
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:200]))
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print("ERR:", msg.get('description','')[:400])
        sys.stdout.flush()

# STEP 1: force-stop
print("[*] Force-stopping snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=10)
time.sleep(2)

# STEP 2: start
print("[*] Starting snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=10)

# STEP 3: poll for gadget port
print("[*] Polling for gadget listen...")
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
    print("[!] Gadget never became reachable!")
    sys.exit(1)

# STEP 4: attach + install script (which retries module lookup)
session = device.attach(device.enumerate_processes()[0].pid)
print("[+%.3fs] attached" % (time.time()-t_start))
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[+%.3fs] script loaded" % (time.time()-t_start))

# STEP 5: wait
time.sleep(35)

print("\n" + "="*80)
print("[*] Total events: %d" % len(results))
z_hits = [r for r in results if r.get('t') == 'Z_SINK_HIT']
kdf_hits = [r for r in results if r.get('t') == 'KDF']
enc_hits = [r for r in results if r.get('t') == 'AES_enc']
dec_hits = [r for r in results if r.get('t') == 'AES_dec']
fun_hits = [r for r in results if r.get('t') == 'FUN_167d38']
print("[*] Z SINK hits: %d" % len(z_hits))
print("[*] KDF: %d, AES_enc: %d, AES_dec: %d, FUN_167d38: %d" %
      (len(kdf_hits), len(enc_hits), len(dec_hits), len(fun_hits)))

with open("/tmp/proof_results.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Full results saved to /tmp/proof_results.json")
session.detach()
