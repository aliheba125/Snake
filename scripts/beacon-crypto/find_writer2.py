#!/usr/bin/env python3
"""
Improved version:
  1. Track all 64-byte allocations with caller LR (fp walk 2 levels up)
  2. Continuously poll every tracked buffer, recording ALL changes with backtrace-of-current-thread
  3. When Z_SINK fires, dump matching info for the buffer whose raw content matches z payload
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
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var tracked_bufs = [];  // {addr, sz, alloc_ts, prev_hex, caller_lr, snapshots}
var MAX_WATCHED = 60;
var seen_addrs = {};

function armWatch(bufAddr, sz, caller_lr, caller3_lr) {
    var key = bufAddr.toString();
    if (seen_addrs[key]) {
        // Reset if realloc'd
        for (var i = 0; i < tracked_bufs.length; i++) {
            if (tracked_bufs[i].addr.equals(bufAddr)) {
                tracked_bufs[i].alloc_ts = TS();
                tracked_bufs[i].snapshots = [];
                tracked_bufs[i].prev_hex = "";
                return;
            }
        }
    }
    if (tracked_bufs.length >= MAX_WATCHED) tracked_bufs.shift();
    seen_addrs[key] = true;
    var entry = {
        addr: bufAddr, sz: sz,
        alloc_ts: TS(), prev_hex: "",
        caller_lr: caller_lr, caller3_lr: caller3_lr,
        snapshots: []
    };
    try { entry.prev_hex = hexify(bufAddr.readByteArray(sz), sz); } catch(e){}
    entry.snapshots.push({t:TS(), hex:entry.prev_hex.substring(0,128)});
    tracked_bufs.push(entry);
}

// Poll every 1ms
setInterval(function() {
    var now = TS();
    for (var i = 0; i < tracked_bufs.length; i++) {
        var e = tracked_bufs[i];
        if (now - e.alloc_ts > 5000) continue;  // stop tracking after 5s
        try {
            var cur = hexify(e.addr.readByteArray(e.sz), e.sz);
            if (cur !== e.prev_hex) {
                e.snapshots.push({t:now, hex:cur.substring(0,128)});
                if (e.snapshots.length > 40) e.snapshots.shift();
                e.prev_hex = cur;
            }
        } catch(err) {}
    }
}, 1);

var _malloc = libc.findExportByName("malloc");
var _hooks_ready = false;

function installHooks(engine, flutter) {
    if (_hooks_ready) return;
    var target_ra_alloc_wrapper = engine.base.add(0x800290);
    var engBase = engine.base;

    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            if (!ra.equals(target_ra_alloc_wrapper)) return;
            var sz = args[0].toInt32();
            if (sz !== 64) return;
            this.hit = true;
            this.sz = sz;
            try {
                var fp = this.context.fp;
                var caller_fp = fp.readPointer();
                var caller2_lr = caller_fp.add(8).readPointer();
                this.caller_lr = moduleOfAddr(caller2_lr);
                var caller2_fp = caller_fp.readPointer();
                var caller3_lr_raw = caller2_fp.add(8).readPointer();
                this.caller3_lr = moduleOfAddr(caller3_lr_raw);
            } catch(e){ this.caller_lr = "?"; this.caller3_lr = "?"; }
        },
        onLeave: function(retval) {
            if (!this.hit) return;
            armWatch(retval, this.sz, this.caller_lr, this.caller3_lr);
        }
    });

    // SINK — when z appears, dump all tracked buffers and find the matching one
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex_full = m ? m[1] : "";
                        // z_hex_full = "0c" + 96 hex chars = 98 hex chars total = 49 raw bytes
                        // Raw bytes: first 49 bytes of z_hex_full when interpreted as hex
                        // Actually: z_hex_full IS the hex-encoded 49 raw bytes
                        // Find tracked buffer whose FIRST 49 bytes (as hex) == z_hex_full
                        var z_prefix = z_hex_full.substring(0, 96).toLowerCase();  // 48 raw bytes worth
                        var match_report = [];
                        for (var k = 0; k < tracked_bufs.length; k++) {
                            var tb = tracked_bufs[k];
                            try {
                                var cur = hexify(tb.addr.readByteArray(tb.sz), tb.sz).toLowerCase();
                                // Check if cur STARTS WITH z_hex_full or z_hex_full is a substring
                                var common = 0;
                                var maxLen = Math.min(cur.length, z_hex_full.length);
                                for (var j = 0; j < maxLen; j++) {
                                    if (cur[j] === z_hex_full[j]) common++;
                                    else break;
                                }
                                if (common >= 32) {
                                    match_report.push({
                                        addr: tb.addr.toString(),
                                        sz: tb.sz,
                                        caller_lr: tb.caller_lr,
                                        caller3_lr: tb.caller3_lr,
                                        alloc_ts: tb.alloc_ts,
                                        common_prefix_len: common,
                                        current_hex: cur.substring(0, 128),
                                        snapshots: tb.snapshots
                                    });
                                }
                            } catch(e){}
                        }
                        send({t:"Z_SINK_MATCH", z_hex_full:z_hex_full, ts:TS(),
                              n_tracked: tracked_bufs.length,
                              n_matches: match_report.length,
                              matches: match_report});
                        return;
                    }
                } catch(e){}
            }
        }
    });

    _hooks_ready = true;
    send({t:"hooks_ready", ts:TS()});
}

var _modules_ready = false;
function tryInit() {
    if (_modules_ready) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    if (!flutter || !engine) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS(), engine:engine.base.toString()});
    installHooks(engine, flutter);
}
setTimeout(tryInit, 30);
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
            for m in p.get('matches', []):
                print(f"\n  --- MATCH addr={m.get('addr')} sz={m.get('sz')} ---")
                print(f"      caller_lr:  {m.get('caller_lr')}")
                print(f"      caller3_lr: {m.get('caller3_lr')}")
                print(f"      alloc @+{m.get('alloc_ts')}ms")
                print(f"      common_prefix_len: {m.get('common_prefix_len')}")
                print(f"      current_hex: {m.get('current_hex','')[:128]}")
                snaps = m.get('snapshots', [])
                print(f"      SNAPSHOTS ({len(snaps)}):")
                for s in snaps:
                    print(f"        +{s.get('t')}ms: {s.get('hex','')[:96]}")
            print("="*80)
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()

subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

t_start = time.time()
device = None
for i in range(90):
    time.sleep(0.15)
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

with open("/tmp/find_writer2.json", "w") as f: json.dump(results, f, indent=2, default=str)
matches = [r for r in results if r.get('t') == 'Z_SINK_MATCH']
print(f"\n[*] Total: {len(results)}, Z_SINK_MATCH: {len(matches)}")
session.detach()
