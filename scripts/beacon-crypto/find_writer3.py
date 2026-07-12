#!/usr/bin/env python3
"""
find_writer3.py - Hook malloc IMMEDIATELY at boot, before engine loads.
Track EVERY 64-byte allocation with high-freq snapshots.
At Z_SINK, find the tracked buffer whose content matches z payload.
Then dump caller_lr (fp-walk) for that specific allocation.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");
var _calloc = libc.findExportByName("calloc");
var _realloc = libc.findExportByName("realloc");
var _memalign = libc.findExportByName("memalign");
var _posix_memalign = libc.findExportByName("posix_memalign");

function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

// moduleOfAddr — lazy, only used at report time
function moduleOfAddr(addr) {
    var mods = Process.enumerateModules();
    for (var i = 0; i < mods.length; i++) {
        var b = mods[i].base;
        var e = b.add(mods[i].size);
        if (addr.compare(b) >= 0 && addr.compare(e) < 0) return mods[i].name + "+0x" + addr.sub(b).toString(16);
    }
    return addr.toString();
}

var tracked_bufs = [];  // {addr, sz, alloc_ts, prev_hex, ra, fp_lr_chain(raw), snapshots}
var MAX_WATCHED = 2000;
var addr_to_idx = {};

function fpWalk(fp, depth) {
    var chain = [];
    try {
        var cur_fp = fp;
        for (var i = 0; i < depth; i++) {
            if (cur_fp.isNull()) break;
            var caller_lr = cur_fp.add(8).readPointer();
            chain.push(caller_lr);
            cur_fp = cur_fp.readPointer();
        }
    } catch(e){}
    return chain;
}

// Hook malloc IMMEDIATELY, size=64 filter only
Interceptor.attach(_malloc, {
    onEnter: function(args) {
        var sz = args[0].toInt32();
        if (sz !== 64) return;
        this.hit = true;
        this.ra = this.returnAddress;
        try {
            this.fp_chain = fpWalk(this.context.fp, 6);
        } catch(e){ this.fp_chain = []; }
    },
    onLeave: function(retval) {
        if (!this.hit) return;
        if (retval.isNull()) return;
        var key = retval.toString();
        var entry = {
            addr: retval, sz: 64, alloc_ts: TS(),
            prev_hex: "",
            ra_raw: this.ra,
            fp_chain_raw: this.fp_chain,
            snapshots: []
        };
        try {
            entry.prev_hex = hexify(retval.readByteArray(64), 64);
            entry.snapshots.push({t:TS(), hex:entry.prev_hex});
        } catch(e){}
        if (tracked_bufs.length >= MAX_WATCHED) {
            var old = tracked_bufs.shift();
            delete addr_to_idx[old.addr.toString()];
        }
        addr_to_idx[key] = tracked_bufs.length;
        tracked_bufs.push(entry);
    }
});

// Also hook calloc for 64-byte
if (_calloc) {
    Interceptor.attach(_calloc, {
        onEnter: function(args) {
            var n = args[0].toInt32();
            var s = args[1].toInt32();
            if (n * s !== 64) return;
            this.hit = true; this.ra = this.returnAddress;
            try { this.fp_chain = fpWalk(this.context.fp, 6); } catch(e){ this.fp_chain=[]; }
        },
        onLeave: function(retval) {
            if (!this.hit) return; if (retval.isNull()) return;
            var entry = {
                addr: retval, sz: 64, alloc_ts: TS(),
                prev_hex: "", ra_raw: this.ra,
                fp_chain_raw: this.fp_chain, snapshots: []
            };
            try { entry.prev_hex = hexify(retval.readByteArray(64), 64);
                  entry.snapshots.push({t:TS(), hex:entry.prev_hex}); } catch(e){}
            if (tracked_bufs.length >= MAX_WATCHED) {
                var old = tracked_bufs.shift(); delete addr_to_idx[old.addr.toString()];
            }
            addr_to_idx[retval.toString()] = tracked_bufs.length;
            tracked_bufs.push(entry);
        }
    });
}
send({t:"malloc_hook_installed", ts:TS()});

// Poll every 2ms for content change
setInterval(function() {
    var now = TS();
    for (var i = 0; i < tracked_bufs.length; i++) {
        var e = tracked_bufs[i];
        if (now - e.alloc_ts > 8000) continue;
        try {
            var cur = hexify(e.addr.readByteArray(e.sz), e.sz);
            if (cur !== e.prev_hex) {
                e.snapshots.push({t:now, hex:cur});
                if (e.snapshots.length > 30) e.snapshots.shift();
                e.prev_hex = cur;
            }
        } catch(err) {}
    }
}, 2);

// SINK hook — wait until libflutter loaded
var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryInstallSink, 15); return; }
    _sink_installed = true;
    send({t:"sink_ready", ts:TS()});
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex_full = m ? m[1] : "";
                        var report = [];
                        for (var k = 0; k < tracked_bufs.length; k++) {
                            var tb = tracked_bufs[k];
                            // Match by any snapshot's hex matching z_hex_full prefix
                            var best_common = 0;
                            var best_snap = null;
                            for (var j = 0; j < tb.snapshots.length; j++) {
                                var h = tb.snapshots[j].hex.toLowerCase();
                                var common = 0;
                                var maxL = Math.min(h.length, z_hex_full.length);
                                for (var q = 0; q < maxL; q++) {
                                    if (h[q] === z_hex_full[q]) common++;
                                    else break;
                                }
                                if (common > best_common) { best_common = common; best_snap = tb.snapshots[j]; }
                            }
                            if (best_common >= 32) {
                                // Resolve fp_chain now
                                var chain_resolved = [];
                                for (var q = 0; q < tb.fp_chain_raw.length; q++) {
                                    chain_resolved.push(moduleOfAddr(tb.fp_chain_raw[q]));
                                }
                                report.push({
                                    addr: tb.addr.toString(),
                                    alloc_ts: tb.alloc_ts,
                                    ra: moduleOfAddr(tb.ra_raw),
                                    fp_chain: chain_resolved,
                                    best_common: best_common,
                                    n_snapshots: tb.snapshots.length,
                                    snapshots: tb.snapshots
                                });
                            }
                        }
                        // Sort by common desc
                        report.sort(function(a,b){ return b.best_common - a.best_common; });
                        send({t:"Z_SINK_MATCH", z_hex_full:z_hex_full, ts:TS(),
                              n_tracked: tracked_bufs.length,
                              n_matches: report.length,
                              matches: report.slice(0, 5)});
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
            print(f"tracked buffers: {p.get('n_tracked')}, matches: {p.get('n_matches')}")
            for i, m in enumerate(p.get('matches', [])):
                print(f"\n  --- MATCH #{i} addr={m.get('addr')} common={m.get('best_common')} alloc@+{m.get('alloc_ts')}ms ---")
                print(f"      ra:         {m.get('ra')}")
                print(f"      fp_chain:")
                for lr in m.get('fp_chain', []):
                    print(f"          {lr}")
                snaps = m.get('snapshots', [])
                print(f"      SNAPSHOTS ({len(snaps)}):")
                for s in snaps[:8]:
                    print(f"        +{s.get('t')}ms: {s.get('hex','')[:96]}")
                if len(snaps) > 8:
                    print(f"        ... ({len(snaps)-8} more) ...")
                    for s in snaps[-3:]:
                        print(f"        +{s.get('t')}ms: {s.get('hex','')[:96]}")
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
for i in range(90):
    time.sleep(0.10)
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
time.sleep(20)

with open("/tmp/find_writer3.json", "w") as f: json.dump(results, f, indent=2, default=str)
matches = [r for r in results if r.get('t') == 'Z_SINK_MATCH']
print(f"\n[*] Total: {len(results)}, Z_SINK_MATCH: {len(matches)}")
try: session.detach()
except: pass
