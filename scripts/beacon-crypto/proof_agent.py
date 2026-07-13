#!/usr/bin/env python3
"""
PROOF-BY-PROVENANCE for z-encryption.
Buffer identity is required. Timing correlation alone is NOT accepted as proof.
"""
import frida, json, time, sys

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };

var flutter = Process.getModuleByName("libflutter.so");
var engine  = Process.getModuleByName("libengine.so");
var libapp  = Process.getModuleByName("libapp.so");
var libc    = Process.getModuleByName("libc.so");

send({t:"modules", flutter:flutter.base.toString(), engine:engine.base.toString(),
      libapp:libapp.base.toString(), flutter_size:flutter.size, engine_size:engine.size,
      libapp_size:libapp.size});

var engBase = engine.base, engEnd = engine.base.add(engine.size);
var flutterBase = flutter.base, flutterEnd = flutter.base.add(flutter.size);
var libappBase = libapp.base, libappEnd = libapp.base.add(libapp.size);

function moduleOf(addr) {
    if (addr.compare(engBase) >= 0 && addr.compare(engEnd) < 0) return "libengine+" + addr.sub(engBase).toInt32().toString(16);
    if (addr.compare(flutterBase) >= 0 && addr.compare(flutterEnd) < 0) return "libflutter+" + addr.sub(flutterBase).toInt32().toString(16);
    if (addr.compare(libappBase) >= 0 && addr.compare(libappEnd) < 0) return "libapp+" + addr.sub(libappBase).toInt32().toString(16);
    return addr.toString();
}

function bt(ctx) {
    var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 12);
    return frames.map(function(f){ return moduleOf(f); });
}

var RING = [];
var RING_MAX = 800;
function record(rec) { rec.ts = TS(); RING.push(rec); if (RING.length > RING_MAX) RING.shift(); }

function hex(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var out = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) out += ('0'+arr[i].toString(16)).slice(-2);
    return out;
}

function readVec(vecPtr) {
    try {
        var begin_p = vecPtr.readPointer();
        var end_p = vecPtr.add(8).readPointer();
        var len = end_p.sub(begin_p).toInt32();
        if (len > 0 && len < 4096) return { addr: begin_p, len: len, hex: hex(begin_p.readByteArray(len), 256) };
    } catch(e) {}
    return { addr: null, len: 0, hex: "" };
}

// H1: KDF at libengine + 0x161788
Interceptor.attach(engBase.add(0x161788), {
    onEnter: function(args) {
        this.out_ptr = args[0];
        this.seed1 = args[1].toInt32() >>> 0;
        this.seed2_lo = args[2].toInt32() >>> 0;
        this.bt_frames = bt(this.context);
    },
    onLeave: function(retval) {
        var out = readVec(this.out_ptr);
        record({k:"KDF", seed1:"0x"+this.seed1.toString(16), seed2_lo:"0x"+this.seed2_lo.toString(16),
                out_addr: out.addr ? out.addr.toString() : "null",
                out_hex:out.hex, bt:this.bt_frames});
        send({t:"KDF", seed1:"0x"+this.seed1.toString(16), seed2_lo:"0x"+this.seed2_lo.toString(16),
              out_hex:out.hex, bt:this.bt_frames.slice(0,6), ts:TS()});
    }
});
send({t:"hook_installed", target:"FUN_00161788 (KDF)"});

// H2: AES decrypt at 0x160208
Interceptor.attach(engBase.add(0x160208), {
    onEnter: function(args) {
        this.key_ptr = args[0]; this.in_ptr = args[1]; this.out_ptr = args[2];
        this.bt_frames = bt(this.context);
        this.key_snap = readVec(this.key_ptr);
        this.in_snap  = readVec(this.in_ptr);
    },
    onLeave: function(retval) {
        var out = readVec(this.out_ptr);
        record({k:"AES_dec", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                out_addr: out.addr ? out.addr.toString() : "null",
                out_hex:out.hex, bt:this.bt_frames});
        send({t:"AES_dec", key:this.key_snap.hex.substring(0,64),
              in_hex:this.in_snap.hex.substring(0,64), out_hex:out.hex.substring(0,96),
              bt:this.bt_frames.slice(0,6), ts:TS()});
    }
});
send({t:"hook_installed", target:"FUN_00160208 (AES decrypt)"});

// H3: AES encrypt at 0x15fdec
Interceptor.attach(engBase.add(0x15fdec), {
    onEnter: function(args) {
        this.key_ptr = args[0]; this.in_ptr = args[1]; this.out_ptr = args[2];
        this.bt_frames = bt(this.context);
        this.key_snap = readVec(this.key_ptr);
        this.in_snap  = readVec(this.in_ptr);
    },
    onLeave: function(retval) {
        var out = readVec(this.out_ptr);
        record({k:"AES_enc", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                out_addr: out.addr ? out.addr.toString() : "null",
                out_hex:out.hex, bt:this.bt_frames});
        send({t:"AES_enc", key:this.key_snap.hex.substring(0,64),
              in_hex:this.in_snap.hex.substring(0,64), out_hex:out.hex.substring(0,96),
              bt:this.bt_frames.slice(0,6), ts:TS()});
    }
});
send({t:"hook_installed", target:"FUN_0015fdec (AES encrypt)"});

// H4: FUN_00167d38 (z-builder candidate)
Interceptor.attach(engBase.add(0x167d38), {
    onEnter: function(args) { this.bt_frames = bt(this.context); },
    onLeave: function(retval) {
        record({k:"FUN_167d38", bt:this.bt_frames});
        send({t:"FUN_167d38", bt:this.bt_frames.slice(0,6), ts:TS()});
    }
});
send({t:"hook_installed", target:"FUN_00167d38"});

// SINK: libflutter+0x6d4be8
Interceptor.attach(flutter.base.add(0x6d4be8), {
    onEnter: function(args) {
        for (var i = 0; i < 4; i++) {
            try {
                var p = args[i];
                if (p.isNull()) continue;
                var s = p.readCString(600);
                if (s && (s.indexOf("z=0c") !== -1)) {
                    var m = s.match(/z=([0-9a-f]{98,})/i);
                    var z_hex_full = m ? m[1] : "";
                    var z48 = z_hex_full.length >= 98 ? z_hex_full.substring(2, 98) : "";
                    var iv_hex = z48.substring(0, 32);
                    var ct_hex = z48.substring(32);

                    // Walk RING backward looking for buffer identity: any record whose
                    // out_hex/in_hex CONTAINS z48 or matches iv_hex or ct_hex
                    var matches = [];
                    for (var r = RING.length - 1; r >= 0; r--) {
                        var rec = RING[r];
                        var cands = [
                            ['out',rec.out_hex],
                            ['in',rec.in_hex],
                            ['key',rec.key_hex]
                        ].filter(function(x){return typeof x[1] === "string" && x[1].length > 0});
                        for (var c = 0; c < cands.length; c++) {
                            var name = cands[c][0], hv = cands[c][1].toLowerCase();
                            if (hv.length < 16) continue;
                            // Direct substring match against z48
                            if (z48.indexOf(hv) !== -1 || hv.indexOf(z48.substring(0,32)) !== -1 ||
                                iv_hex.indexOf(hv) !== -1 || hv.indexOf(iv_hex) !== -1 ||
                                ct_hex.indexOf(hv) !== -1 || hv.indexOf(ct_hex) !== -1 ||
                                hv.indexOf(z48.substring(0,16)) !== -1) {
                                matches.push({rec_idx:r, kind:rec.k, ts:rec.ts,
                                              field:name, match_hex:hv.substring(0,64), bt:rec.bt});
                            }
                        }
                    }

                    send({t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48,
                          iv_hex:iv_hex, ct_hex:ct_hex,
                          sink_bt:bt(this.context).slice(0,10),
                          ring_size:RING.length,
                          buffer_matches:matches.slice(0,30),
                          n_matches:matches.length,
                          http_head:s.substring(0,300),
                          ts:TS()});
                    return;
                }
            } catch(e) {}
        }
    }
});
send({t:"hook_installed", target:"SINK libflutter+0x6d4be8"});

// H6: libc malloc(20/32/48/49/96/97) — only from libapp/libengine
var malloc_addr = libc.findExportByName("malloc");
Interceptor.attach(malloc_addr, {
    onEnter: function(args) { this.sz = args[0].toInt32(); },
    onLeave: function(retval) {
        if (this.sz === 20 || this.sz === 32 || this.sz === 48 || this.sz === 49 ||
            this.sz === 96 || this.sz === 97 || this.sz === 12 || this.sz === 16) {
            var ra = this.returnAddress;
            var mod = moduleOf(ra);
            if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0) {
                record({k:"malloc"+this.sz, addr:retval.toString(), caller:mod});
            }
        }
    }
});
send({t:"hook_installed", target:"libc malloc(small sizes)"});

send({t:"ALL_HOOKS_READY", ts:TS()});
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
            for m in p.get('buffer_matches', [])[:10]:
                print("  MATCH:", json.dumps(m)[:400])
            print("SINK backtrace (first 10 frames):")
            for f in p.get('sink_bt', []):
                print("  ", f)
            print("HTTP head:", p.get('http_head',''))
            print("="*80)
        elif t in ('KDF','AES_enc','AES_dec','FUN_167d38'):
            print("[+%dms] %s" % (p.get('ts',0), t), json.dumps({k:v for k,v in p.items() if k not in ('t','ts')})[:250])
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:300]))
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print("ERR:", msg.get('description','')[:300])
        sys.stdout.flush()

dm = frida.get_device_manager()
device = dm.add_remote_device("127.0.0.1:27052")
procs = device.enumerate_processes()
if not procs:
    print("No gadget!"); sys.exit(1)
print("[*] Attaching to Gadget PID %d..." % procs[0].pid)
session = device.attach(procs[0].pid)
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print("[*] Script loaded. Gadget was on_load=wait; app should now resume once script is running.")
time.sleep(60)

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

# Save all results
with open("/tmp/proof_results.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Results saved to /tmp/proof_results.json")

session.detach()
