#!/usr/bin/env python3
"""
Deep proof run: hook libengine crypto + enum libflutter BoringSSL functions +
memory scan around SINK for raw z48 bytes + libapp allocation tracking.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };

send({t:"boot", ts:TS(), pid:Process.id});

var RING = [];
var MAX_RING = 3000;
function record(rec) { rec.ts = TS(); RING.push(rec); if (RING.length > MAX_RING) RING.shift(); }
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
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 16);
        return frames.map(function(f){ return { addr:f.toString(), mod:moduleOf(f) }; });
    } catch(e) { return []; }
}

// libc malloc — safe, install early
var libc = Process.getModuleByName("libc.so");
var malloc = libc.findExportByName("malloc");
Interceptor.attach(malloc, {
    onEnter: function(args) { this.sz = args[0].toInt32(); },
    onLeave: function(retval) {
        if ([20,32,48,49,96,97,16,12,64].indexOf(this.sz) === -1) return;
        var ra = this.returnAddress;
        if (!engBase && !libappBase) return;
        var mod = moduleOf(ra);
        if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0 || mod.indexOf("libflutter") === 0) {
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
        setTimeout(tryInstallHooks, 20);
        return;
    }
    engBase = engine.base; engEnd = engine.base.add(engine.size);
    flutterBase = flutter.base; flutterEnd = flutter.base.add(flutter.size);
    libappBase = libapp.base; libappEnd = libapp.base.add(libapp.size);
    send({t:"modules_loaded", ts:TS(), flutter:flutterBase.toString(),
          engine:engBase.toString(), libapp:libappBase.toString(),
          flutter_size:flutter.size, engine_size:engine.size, libapp_size:libapp.size});

    // === libengine crypto candidates ===
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
            send({t:"KDF", ts:TS(), seed1:"0x"+this.seed1.toString(16), out_hex:out.hex});
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
                    out_hex:out.hex, bt:this.bt});
            send({t:"AES_dec", ts:TS(), key:this.key_snap.hex.substring(0,64),
                  in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96)});
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
                    out_hex:out.hex, bt:this.bt});
            send({t:"AES_enc", ts:TS(), key:this.key_snap.hex.substring(0,64),
                  in_hex:this.in_snap.hex.substring(0,96), out_hex:out.hex.substring(0,96)});
        }
    });
    Interceptor.attach(engBase.add(0x167d38), {
        onEnter: function() { this.bt = bt(this.context); },
        onLeave: function() { record({k:"FUN_167d38", bt:this.bt}); send({t:"FUN_167d38", ts:TS()}); }
    });

    // === libflutter BoringSSL — try exported symbols ===
    var flutter_syms = ['SSL_write','SSL_read','EVP_EncryptInit_ex','EVP_EncryptUpdate',
                        'EVP_EncryptFinal_ex','EVP_DecryptInit_ex','EVP_DecryptUpdate',
                        'EVP_CipherInit_ex','EVP_CipherUpdate','EVP_MAC_init',
                        'AES_encrypt','AES_decrypt','AES_set_encrypt_key','AES_set_decrypt_key',
                        'CRYPTO_gcm128_encrypt','CRYPTO_gcm128_decrypt',
                        'CRYPTO_chacha_20','SHA256_Init','SHA256_Update','SHA256_Final',
                        'HKDF','HKDF_extract','HKDF_expand','PKCS5_PBKDF2_HMAC'];
    var found_syms = [];
    for (var i = 0; i < flutter_syms.length; i++) {
        var addr = flutter.findExportByName(flutter_syms[i]);
        if (addr) {
            found_syms.push({sym:flutter_syms[i], addr:addr.toString()});
            (function(sym, a) {
                try {
                    Interceptor.attach(a, {
                        onEnter: function(args) {
                            this.bt = bt(this.context);
                            this.args_snap = [args[0]?args[0].toString():"", args[1]?args[1].toString():"",
                                              args[2]?args[2].toString():"", args[3]?args[3].toString():""];
                            // Try to read a few bytes from arg1 as buffer
                            var buf_hex = "";
                            try {
                                var sz = 0;
                                if (sym.indexOf("SSL_write") === -1) sz = 64;
                                if (sz > 0) buf_hex = hexify(args[1].readByteArray(sz), sz);
                            } catch(e) {}
                            this.buf_hex = buf_hex;
                        },
                        onLeave: function(rv) {
                            record({k:"FLUTTER_"+sym, args:this.args_snap, buf_hex:this.buf_hex, bt:this.bt});
                            send({t:"FLUTTER_"+sym, ts:TS(), buf_hex:this.buf_hex});
                        }
                    });
                } catch(e) {}
            })(flutter_syms[i], addr);
        }
    }
    send({t:"flutter_exports_found", syms:found_syms});

    // === libapp exported symbols check ===
    var libapp_exports = libapp.enumerateExports().slice(0, 20);
    send({t:"libapp_exports_sample", exports:libapp_exports});

    // === SINK ===
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

                        // Build a byte pattern to scan memory for the RAW 48 bytes
                        // Extract raw bytes from hex
                        var raw = "";
                        for (var j = 0; j < 96; j += 2) {
                            var b = parseInt(z48.substring(j, j+2), 16);
                            raw += ('0' + b.toString(16)).slice(-2);
                            if (j < 6) raw += " ";
                        }
                        // Build memory scan pattern for FIRST 16 bytes of z48 (IV)
                        var scan_pattern = "";
                        for (var j = 0; j < 32; j += 2) {
                            scan_pattern += z48.substring(j, j+2);
                            if (j < 30) scan_pattern += " ";
                        }
                        // Scan the process memory (rw regions) for this pattern
                        var raw_locations = [];
                        try {
                            var ranges = Process.enumerateRanges({protection: 'rw-'});
                            for (var rr = 0; rr < ranges.length && raw_locations.length < 10; rr++) {
                                if (ranges[rr].size > 200000000) continue;
                                try {
                                    var found = Memory.scanSync(ranges[rr].base, ranges[rr].size, scan_pattern);
                                    for (var ff = 0; ff < found.length && raw_locations.length < 10; ff++) {
                                        // Read context around this
                                        var addr = found[ff].address;
                                        var before_hex="", after_hex="";
                                        try { before_hex = hexify(addr.sub(64).readByteArray(64)); } catch(e){}
                                        try { after_hex = hexify(addr.readByteArray(96)); } catch(e){}
                                        raw_locations.push({addr:addr.toString(),
                                                             before64:before_hex.substring(before_hex.length-128),
                                                             at:after_hex.substring(0, 192)});
                                    }
                                } catch(e){}
                            }
                        } catch(e){}

                        // Also match RING contents
                        var matches = [];
                        for (var r = RING.length - 1; r >= 0; r--) {
                            var rec = RING[r];
                            var cands = [];
                            if (rec.out_hex) cands.push(['out', rec.out_hex.toLowerCase()]);
                            if (rec.in_hex)  cands.push(['in',  rec.in_hex.toLowerCase()]);
                            if (rec.key_hex) cands.push(['key', rec.key_hex.toLowerCase()]);
                            if (rec.buf_hex) cands.push(['buf', rec.buf_hex.toLowerCase()]);
                            for (var c = 0; c < cands.length; c++) {
                                var hv = cands[c][1];
                                if (hv.length < 16) continue;
                                if (hv.indexOf(z48.substring(0,32)) !== -1 ||
                                    hv.indexOf(iv_hex) !== -1 || hv.indexOf(ct_hex.substring(0,32)) !== -1) {
                                    matches.push({rec_idx:r, kind:rec.k, ts:rec.ts,
                                                  field:cands[c][0], match_hex:hv.substring(0, 64), bt:rec.bt});
                                }
                            }
                        }
                        send({t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48,
                              iv_hex:iv_hex, ct_hex:ct_hex,
                              sink_bt:bt(this.context).slice(0,16),
                              ring_size:RING.length,
                              n_matches:matches.length,
                              buffer_matches:matches.slice(0,10),
                              raw_locations:raw_locations,
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
            print("z48     :", p.get('z48',''))
            print("iv_hex  :", p.get('iv_hex',''))
            print("ct_hex  :", p.get('ct_hex',''))
            print("RING size:", p.get('ring_size'))
            print("N buffer_matches:", p.get('n_matches'))
            for m in p.get('buffer_matches', [])[:10]:
                print("  MATCH:", json.dumps(m)[:400])
            print("SINK backtrace (16 frames):")
            for f in p.get('sink_bt', []): print("  ", f)
            print("Raw z48 locations in memory:", len(p.get('raw_locations', [])))
            for r in p.get('raw_locations', [])[:8]:
                print("   raw@%s" % r.get('addr'))
                print("     before: ...", r.get('before64','')[-64:])
                print("     at:     ", r.get('at','')[:80])
            print("="*80)
        elif t == 'flutter_exports_found':
            print("[+%dms] flutter exports found: %d" % (p.get('ts',0), len(p.get('syms',[]))))
            for s in p.get('syms', []): print("  ", s)
        elif t == 'libapp_exports_sample':
            print("[+%dms] libapp exports sample:" % p.get('ts',0))
            for e in p.get('exports', [])[:10]: print("  ", e)
        elif t.startswith('FLUTTER_') or t in ('KDF','AES_enc','AES_dec','FUN_167d38'):
            print("[+%dms] %s" % (p.get('ts',0), t), json.dumps({k:v for k,v in p.items() if k not in ('t','ts')})[:200])
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
    print("[!] Gadget never became reachable!"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
print("[+%.3fs] attached" % (time.time()-t_start))
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[+%.3fs] script loaded" % (time.time()-t_start))
time.sleep(40)

print("\n" + "="*80)
print("[*] Total events: %d" % len(results))
z_hits = [r for r in results if r.get('t') == 'Z_SINK_HIT']
kdf_hits = [r for r in results if r.get('t') == 'KDF']
enc_hits = [r for r in results if r.get('t') == 'AES_enc']
dec_hits = [r for r in results if r.get('t') == 'AES_dec']
fun_hits = [r for r in results if r.get('t') == 'FUN_167d38']
flutter_hits = [r for r in results if r.get('t','').startswith('FLUTTER_')]
print("[*] Z SINK: %d, KDF: %d, AES_enc: %d, AES_dec: %d, FUN_167d38: %d, FLUTTER_syms: %d"
      % (len(z_hits), len(kdf_hits), len(enc_hits), len(dec_hits), len(fun_hits), len(flutter_hits)))

with open("/tmp/proof_results2.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Full results saved to /tmp/proof_results2.json")
session.detach()
