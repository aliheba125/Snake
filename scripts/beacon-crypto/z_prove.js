// z-proof script — runs in Gadget script-mode (no client needed).
// Writes provenance records to /data/local/tmp/z_proof.jsonl (one JSON per line).
'use strict';
var t0 = Date.now();
function TS() { return Date.now() - t0; }

var OUT_PATH = "/data/local/tmp/z_proof.jsonl";
var outFile = null;

function tryOpen() {
    try { outFile = new File(OUT_PATH, "a"); return true; } catch(e) { return false; }
}
tryOpen();

function log(obj) {
    obj.ts = TS();
    var line = JSON.stringify(obj);
    if (outFile) { try { outFile.write(line + "\n"); outFile.flush(); } catch(e){} }
}

log({t:"start"});

function moduleOf(engBase, engEnd, flutterBase, flutterEnd, libappBase, libappEnd, addr) {
    if (addr.compare(engBase) >= 0 && addr.compare(engEnd) < 0) return "libengine+" + addr.sub(engBase).toInt32().toString(16);
    if (addr.compare(flutterBase) >= 0 && addr.compare(flutterEnd) < 0) return "libflutter+" + addr.sub(flutterBase).toInt32().toString(16);
    if (addr.compare(libappBase) >= 0 && addr.compare(libappEnd) < 0) return "libapp+" + addr.sub(libappBase).toInt32().toString(16);
    return addr.toString();
}

function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

// Wait for libengine + libflutter + libapp to load, then install hooks
function tryInstall() {
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) return false;
    installHooks(flutter, engine, libapp);
    return true;
}

var _installed = false;
function retryInstall() {
    if (_installed) return;
    if (tryInstall()) { _installed = true; log({t:"hooks_installed"}); return; }
    setTimeout(retryInstall, 100);
}

function installHooks(flutter, engine, libapp) {
    var engBase = engine.base, engEnd = engine.base.add(engine.size);
    var flutterBase = flutter.base, flutterEnd = flutter.base.add(flutter.size);
    var libappBase = libapp.base, libappEnd = libapp.base.add(libapp.size);
    var libc = Process.findModuleByName("libc.so");

    function modOf(a) { return moduleOf(engBase, engEnd, flutterBase, flutterEnd, libappBase, libappEnd, a); }
    function bt(ctx) {
        try {
            var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 12);
            return frames.map(modOf);
        } catch(e) { return []; }
    }

    log({t:"modules", engine:engBase.toString(), flutter:flutterBase.toString(), libapp:libappBase.toString()});

    // RING buffer of recent hook records (kept in memory for SINK correlation)
    var RING = [];
    function record(rec) { rec.ts = TS(); RING.push(rec); if (RING.length > 800) RING.shift(); }

    function readVec(vecPtr) {
        try {
            var begin_p = vecPtr.readPointer();
            var end_p = vecPtr.add(8).readPointer();
            var len = end_p.sub(begin_p).toInt32();
            if (len > 0 && len < 4096) return { addr: begin_p, len: len, hex: hexify(begin_p.readByteArray(len)) };
        } catch(e) {}
        return { addr: null, len: 0, hex: "" };
    }

    // KDF at libengine+0x161788
    try {
        Interceptor.attach(engBase.add(0x161788), {
            onEnter: function(args) {
                this.out_ptr = args[0];
                this.seed1 = args[1].toInt32() >>> 0;
                this.seed2_lo = args[2].toInt32() >>> 0;
                this.bt = bt(this.context);
            },
            onLeave: function() {
                var out = readVec(this.out_ptr);
                var rec = {k:"KDF", seed1:this.seed1, seed2_lo:this.seed2_lo,
                           out_hex:out.hex, out_addr:out.addr?out.addr.toString():null, bt:this.bt};
                record(rec); log(rec);
            }
        });
        log({t:"hook_ok", target:"FUN_00161788"});
    } catch(e) { log({t:"hook_err", target:"FUN_00161788", err:e.toString()}); }

    // AES decrypt at 0x160208
    try {
        Interceptor.attach(engBase.add(0x160208), {
            onEnter: function(args) {
                this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
                this.key_snap = readVec(this.key_ptr);
                this.in_snap  = readVec(this.in_ptr);
                this.bt = bt(this.context);
            },
            onLeave: function() {
                var out = readVec(this.out_ptr);
                var rec = {k:"AES_dec", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                           out_hex:out.hex, out_addr:out.addr?out.addr.toString():null,
                           in_addr:this.in_snap.addr?this.in_snap.addr.toString():null,
                           bt:this.bt};
                record(rec); log(rec);
            }
        });
        log({t:"hook_ok", target:"FUN_00160208"});
    } catch(e) { log({t:"hook_err", target:"FUN_00160208", err:e.toString()}); }

    // AES encrypt at 0x15fdec
    try {
        Interceptor.attach(engBase.add(0x15fdec), {
            onEnter: function(args) {
                this.key_ptr=args[0]; this.in_ptr=args[1]; this.out_ptr=args[2];
                this.key_snap = readVec(this.key_ptr);
                this.in_snap  = readVec(this.in_ptr);
                this.bt = bt(this.context);
            },
            onLeave: function() {
                var out = readVec(this.out_ptr);
                var rec = {k:"AES_enc", key_hex:this.key_snap.hex, in_hex:this.in_snap.hex,
                           out_hex:out.hex, out_addr:out.addr?out.addr.toString():null,
                           in_addr:this.in_snap.addr?this.in_snap.addr.toString():null,
                           bt:this.bt};
                record(rec); log(rec);
            }
        });
        log({t:"hook_ok", target:"FUN_0015fdec"});
    } catch(e) { log({t:"hook_err", target:"FUN_0015fdec", err:e.toString()}); }

    // FUN_00167d38 (z-builder candidate)
    try {
        Interceptor.attach(engBase.add(0x167d38), {
            onEnter: function() { this.bt = bt(this.context); },
            onLeave: function() {
                var rec = {k:"FUN_167d38", bt:this.bt};
                record(rec); log(rec);
            }
        });
        log({t:"hook_ok", target:"FUN_00167d38"});
    } catch(e) { log({t:"hook_err", target:"FUN_00167d38", err:e.toString()}); }

    // SINK: libflutter+0x6d4be8
    try {
        Interceptor.attach(flutter.base.add(0x6d4be8), {
            onEnter: function(args) {
                for (var i = 0; i < 4; i++) {
                    try {
                        var p = args[i];
                        if (p.isNull()) continue;
                        var s = p.readCString(600);
                        if (s && s.indexOf("z=0c") !== -1) {
                            var m = s.match(/z=([0-9a-f]{98,})/i);
                            var z_hex_full = m ? m[1] : "";
                            var z48 = z_hex_full.length >= 98 ? z_hex_full.substring(2, 98) : "";
                            var iv_hex = z48.substring(0, 32);
                            var ct_hex = z48.substring(32);

                            // BUFFER-IDENTITY MATCH: search RING for records with hex overlap
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
                                    var overlap_pos = -1;
                                    // ct match
                                    if (ct_hex.length > 0 && hv.indexOf(ct_hex) !== -1) overlap_pos = hv.indexOf(ct_hex);
                                    else if (ct_hex.length > 0 && ct_hex.indexOf(hv.substring(0, Math.min(32, hv.length))) !== -1) overlap_pos = 0;
                                    // iv match
                                    else if (iv_hex.length > 0 && hv.indexOf(iv_hex) !== -1) overlap_pos = hv.indexOf(iv_hex);
                                    else if (iv_hex.length > 0 && iv_hex.indexOf(hv.substring(0, Math.min(32, hv.length))) !== -1) overlap_pos = 0;
                                    // z48 substring
                                    else if (hv.indexOf(z48.substring(0, 16)) !== -1) overlap_pos = hv.indexOf(z48.substring(0, 16));

                                    if (overlap_pos !== -1) {
                                        matches.push({rec_idx:r, kind:rec.k, ts:rec.ts,
                                                     field:name, match_hex:hv.substring(0, 64),
                                                     bt:rec.bt});
                                    }
                                }
                            }

                            var sink_rec = {t:"Z_SINK_HIT", z_hex_full:z_hex_full, z48:z48,
                                            iv_hex:iv_hex, ct_hex:ct_hex,
                                            sink_bt:bt(this.context).slice(0,10),
                                            ring_size:RING.length,
                                            n_matches:matches.length,
                                            buffer_matches:matches.slice(0,30),
                                            http_head:s.substring(0,300)};
                            log(sink_rec);
                            return;
                        }
                    } catch(e) {}
                }
            }
        });
        log({t:"hook_ok", target:"SINK_libflutter+0x6d4be8"});
    } catch(e) { log({t:"hook_err", target:"SINK", err:e.toString()}); }

    // malloc(20/32/48) from libapp/libengine
    if (libc) {
        try {
            var malloc_addr = libc.findExportByName("malloc");
            Interceptor.attach(malloc_addr, {
                onEnter: function(args) { this.sz = args[0].toInt32(); },
                onLeave: function(retval) {
                    if (this.sz === 20 || this.sz === 32 || this.sz === 48 || this.sz === 49 ||
                        this.sz === 96 || this.sz === 97 || this.sz === 16 || this.sz === 12) {
                        var mod = modOf(this.returnAddress);
                        if (mod.indexOf("libapp") === 0 || mod.indexOf("libengine") === 0) {
                            var rec = {k:"malloc"+this.sz, addr:retval.toString(), caller:mod};
                            record(rec);
                        }
                    }
                }
            });
            log({t:"hook_ok", target:"malloc"});
        } catch(e) { log({t:"hook_err", target:"malloc", err:e.toString()}); }
    }
}

retryInstall();
log({t:"script_ready"});
