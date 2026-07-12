#!/usr/bin/env python3
"""
find_writer4.py - Minimal overhead approach:
  1. Hook malloc IMMEDIATELY at boot, filter size==64 only
  2. NO polling — just record (addr, ra, fp_chain, alloc_ts) into ring buffer
  3. When Z_SINK fires: snapshot ALL tracked buffers once and match by hex prefix
  4. Report caller LR resolutions for matching buffer(s)
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

// Ring buffer of 64-byte allocations
var RING_MAX = 3000;
var ring = [];
var ring_idx = 0;

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        var sz = args[0].toInt32();
        if (sz !== 64) return;
        this.hit = true;
        try { this.fp_chain = fpWalk(this.context.fp, 6); } catch(e){ this.fp_chain=[]; }
        this.ra = this.returnAddress;
    },
    onLeave: function(retval) {
        if (!this.hit) return;
        if (retval.isNull()) return;
        var entry = { addr: retval, ts: TS(), ra: this.ra, chain: this.fp_chain };
        if (ring.length < RING_MAX) ring.push(entry);
        else { ring[ring_idx] = entry; ring_idx = (ring_idx+1) % RING_MAX; }
    }
});
send({t:"malloc_hook", ts:TS()});

// SINK hook when libflutter loads
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

                        // Snapshot ALL tracked buffers NOW and match
                        var matches = [];
                        for (var k = 0; k < ring.length; k++) {
                            var tb = ring[k];
                            try {
                                var cur = hexify(tb.addr.readByteArray(64), 64).toLowerCase();
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
                        send({t:"Z_SINK_MATCH", z_hex_full:z_hex_full, ts:TS(),
                              n_tracked: ring.length,
                              n_matches: matches.length,
                              matches: matches.slice(0, 8)});
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
            print(f"tracked: {p.get('n_tracked')}, matches: {p.get('n_matches')}")
            for i, m in enumerate(p.get('matches', [])):
                print(f"\n  --- MATCH #{i} addr={m.get('addr')} common={m.get('common')} alloc@+{m.get('alloc_ts')}ms ---")
                print(f"      ra:         {m.get('ra')}")
                print(f"      fp_chain:")
                for lr in m.get('chain', []):
                    print(f"          {lr}")
                print(f"      hex: {m.get('hex','')[:128]}")
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
time.sleep(20)

with open("/tmp/find_writer4.json", "w") as f: json.dump(results, f, indent=2, default=str)
matches = [r for r in results if r.get('t') == 'Z_SINK_MATCH']
print(f"\n[*] Total: {len(results)}, Z_SINK_MATCH: {len(matches)}")
try: session.detach()
except: pass
