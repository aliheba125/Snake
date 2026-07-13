#!/usr/bin/env python3
"""
find_writer5.py — Grow ring to 20k AND fallback to Memory.scan at sink time.
Also try multiple sizes: 48, 49, 64, 65, 96, 128.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");

function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}
function moduleOfAddr(addr) {
    var mods = Process.enumerateModules();
    for (var i = 0; i < mods.length; i++) {
        var b = mods[i].base;
        var e = b.add(mods[i].size);
        if (addr.compare(b) >= 0 && addr.compare(e) < 0) return mods[i].name + "+0x" + addr.sub(b).toString(16);
    }
    return addr.toString();
}
function fpWalk(fp, depth) {
    var chain = [];
    try {
        var cur = fp;
        for (var i = 0; i < depth; i++) {
            if (cur.isNull()) break;
            var lr = cur.add(8).readPointer();
            chain.push(lr);
            cur = cur.readPointer();
        }
    } catch(e){}
    return chain;
}

var RING_MAX = 20000;
var ring = [];
var ring_idx = 0;
var SIZES = { 48:1, 49:1, 64:1, 65:1, 80:1, 96:1, 128:1 };

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        var sz = args[0].toInt32();
        if (!SIZES[sz]) return;
        this.hit = true;
        this.sz = sz;
        try { this.fp_chain = fpWalk(this.context.fp, 6); } catch(e){ this.fp_chain=[]; }
        this.ra = this.returnAddress;
    },
    onLeave: function(retval) {
        if (!this.hit) return;
        if (retval.isNull()) return;
        var entry = { addr: retval, sz: this.sz, ts: TS(), ra: this.ra, chain: this.fp_chain };
        if (ring.length < RING_MAX) ring.push(entry);
        else { ring[ring_idx] = entry; ring_idx = (ring_idx+1) % RING_MAX; }
    }
});
send({t:"malloc_hook", ts:TS()});

// Memory.scan raw z bytes as a fallback
function bytesFromHex(hex) {
    var b = new Uint8Array(hex.length/2);
    for (var i = 0; i < hex.length; i += 2) b[i/2] = parseInt(hex.substr(i,2), 16);
    return b;
}
function scanRawInHeap(z_hex_full) {
    // Take first 24 raw bytes as pattern
    var pat_hex = "";
    for (var i = 0; i < 48; i += 2) pat_hex += z_hex_full.substr(i, 2) + " ";
    pat_hex = pat_hex.trim();
    var found = [];
    var ranges = Process.enumerateRanges({protection:'rw-', coalesce:false});
    for (var i = 0; i < ranges.length; i++) {
        var r = ranges[i];
        if (r.size > 64*1024*1024) continue;
        try {
            var res = Memory.scanSync(r.base, r.size, pat_hex);
            for (var j = 0; j < res.length; j++) {
                found.push({addr: res[j].address.toString(), file: r.file ? r.file.path : ""});
            }
            if (found.length >= 20) break;
        } catch(e){}
    }
    return found;
}

var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryInstallSink, 10); return; }
    _sink_installed = true;
    send({t:"sink_ready", ts:TS(), n_tracked_so_far: ring.length});
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex_full = m ? m[1].toLowerCase() : "";

                        // Match ring
                        var matches = [];
                        for (var k = 0; k < ring.length; k++) {
                            var tb = ring[k];
                            try {
                                var cur = hexify(tb.addr.readByteArray(tb.sz), tb.sz).toLowerCase();
                                var common = 0;
                                var maxL = Math.min(cur.length, z_hex_full.length);
                                for (var q = 0; q < maxL; q++) {
                                    if (cur[q] === z_hex_full[q]) common++;
                                    else break;
                                }
                                if (common >= 32) {
                                    var chain_res = [];
                                    for (var q2 = 0; q2 < tb.chain.length; q2++) {
                                        chain_res.push(moduleOfAddr(tb.chain[q2]));
                                    }
                                    matches.push({
                                        addr: tb.addr.toString(),
                                        sz: tb.sz,
                                        alloc_ts: tb.ts,
                                        ra: moduleOfAddr(tb.ra),
                                        chain: chain_res,
                                        common: common,
                                        hex: cur
                                    });
                                }
                            } catch(e){}
                        }
                        matches.sort(function(a,b){ return b.common - a.common; });

                        // Fallback: scan heap for raw bytes
                        var scan_hits = [];
                        try { scan_hits = scanRawInHeap(z_hex_full); } catch(e){ send({t:"scan_err", err:String(e)}); }

                        send({t:"Z_SINK_MATCH", z_hex_full:z_hex_full, ts:TS(),
                              n_tracked: ring.length,
                              n_matches: matches.length,
                              matches: matches.slice(0, 8),
                              scan_hits: scan_hits});
                        return;
                    }
                } catch(e){}
            }
        }
    });
}
setTimeout(tryInstallSink, 5);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'Z_SINK_MATCH':
            print("\n" + "="*80)
            print(f"*** Z_SINK_MATCH @ +{p.get('ts',0)}ms ***")
            print(f"z_hex_full: {p.get('z_hex_full','')[:100]}")
            print(f"tracked: {p.get('n_tracked')}, ring matches: {p.get('n_matches')}, scan hits: {len(p.get('scan_hits', []))}")
            for i, m in enumerate(p.get('matches', [])):
                print(f"\n  --- RING MATCH #{i} addr={m.get('addr')} sz={m.get('sz')} common={m.get('common')} alloc@+{m.get('alloc_ts')}ms ---")
                print(f"      ra:         {m.get('ra')}")
                print(f"      fp_chain:")
                for lr in m.get('chain', []):
                    print(f"          {lr}")
                print(f"      hex: {m.get('hex','')[:128]}")
            for i, s in enumerate(p.get('scan_hits', [])[:10]):
                print(f"  SCAN HIT #{i}: {s.get('addr')} ({s.get('file')})")
            print("="*80)
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print(f"[ERR] {msg.get('description')}", file=sys.stderr)

subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

t_start = time.time()
device = None
for i in range(120):
    time.sleep(0.08)
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
time.sleep(25)

with open("/tmp/find_writer5.json", "w") as f: json.dump(results, f, indent=2, default=str)
matches = [r for r in results if r.get('t') == 'Z_SINK_MATCH']
print(f"\n[*] Total: {len(results)}, Z_SINK_MATCH: {len(matches)}")
try: session.detach()
except: pass
