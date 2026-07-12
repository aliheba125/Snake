#!/usr/bin/env python3
"""
Find who writes the raw z bytes into the 64-byte allocation.

Strategy:
  1. Hook libc malloc with returnAddress == libengine.so+0x800290 (the wrapper).
  2. Filter for size == 64.
  3. On leave, capture the buffer address AND the caller-of-0x800270 (via FP walk).
  4. Immediately install a super-tight polling loop on the buffer (via setInterval 1ms)
     that records EVERY time the buffer content changes, along with timestamp.
  5. Report first non-zero content + backtrace of who was executing at that moment.

Also hook the memcpy sites to correlate with URL assembly timing.
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

var tracked_bufs = [];  // {addr, sz, alloc_ts, prev_hex, caller_lr, watch_active}
var MAX_WATCHED = 20;

function armWatch(bufAddr, sz, caller_lr) {
    if (tracked_bufs.length >= MAX_WATCHED) return;
    var entry = {
        addr: bufAddr,
        sz: sz,
        alloc_ts: TS(),
        prev_hex: "",
        caller_lr: caller_lr,
        watch_active: true,
        first_write_ts: null,
        first_content: null,
        poll_count: 0,
        change_events: [],
    };
    try {
        entry.prev_hex = hexify(bufAddr.readByteArray(sz), sz);
    } catch(e){}
    tracked_bufs.push(entry);
    send({t:"WATCH_ARM", addr:bufAddr.toString(), sz:sz, caller_lr:caller_lr, ts:TS()});
}

// Poll all tracked buffers every 1ms
setInterval(function() {
    var now = TS();
    for (var i = 0; i < tracked_bufs.length; i++) {
        var e = tracked_bufs[i];
        if (!e.watch_active) continue;
        e.poll_count++;
        // Stop watching after 500ms of no change following a change, or 3000ms total
        if (now - e.alloc_ts > 3000) { e.watch_active = false; continue; }
        try {
            var cur = hexify(e.addr.readByteArray(e.sz), e.sz);
            if (cur !== e.prev_hex) {
                if (e.first_write_ts === null) {
                    e.first_write_ts = now;
                    e.first_content = cur;
                }
                // Record the change
                var diff_offset = 0;
                var mn = Math.min(cur.length, e.prev_hex.length);
                for (diff_offset = 0; diff_offset < mn; diff_offset++) {
                    if (cur[diff_offset] !== e.prev_hex[diff_offset]) break;
                }
                e.change_events.push({t: now, offset_hex: diff_offset, before: e.prev_hex.substring(0,128), after: cur.substring(0,128)});
                if (e.change_events.length > 20) e.change_events.shift();
                e.prev_hex = cur;
                // If buffer looks like it starts with 0c and has 47 more bytes of data, dump summary
                if (cur.charAt(0) === '0' && cur.charAt(1) === 'c' && cur.length >= 96) {
                    // We have a strong candidate — dump and stop watching
                    send({t:"BUFFER_FILLED", addr:e.addr.toString(), sz:e.sz,
                          caller_lr:e.caller_lr,
                          first_write_ts:e.first_write_ts, alloc_ts:e.alloc_ts,
                          delta_ms:e.first_write_ts - e.alloc_ts,
                          content_hex:cur.substring(0,192),
                          n_changes:e.change_events.length,
                          poll_count:e.poll_count,
                          all_changes:e.change_events});
                    e.watch_active = false;
                }
            }
        } catch(err) { e.watch_active = false; }
    }
}, 1);

var _malloc = libc.findExportByName("malloc");
var _hooks_ready = false;

function installHooks(engine, flutter) {
    if (_hooks_ready) return;
    var target_ra_alloc_wrapper = engine.base.add(0x800290);
    // The bl at 0x80028c goes to 0x81f140 (malloc PLT).
    // We hook libc malloc and filter by return address == 0x800290.
    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            if (!ra.equals(target_ra_alloc_wrapper)) return;
            var sz = args[0].toInt32();
            if (sz !== 64) return;
            this.hit = true;
            this.sz = sz;
            // Walk fp chain to get caller of 0x800270
            // At malloc entry: fp = 0x800270's stack frame (after its own stp x29,x30)
            //   fp[0] = 0x800270's own saved fp = fp of caller of 0x800270
            //   fp[8] = 0x800270's own saved LR = 0x800290 (already known)
            // To get caller of 0x800270: walk one frame up
            try {
                var fp = this.context.fp;
                var caller_fp = fp.readPointer();
                var caller_lr = fp.add(8).readPointer();  // this is 0x800290 (wrapper's LR)
                // walk one more:
                var caller2_lr = caller_fp.add(8).readPointer();  // LR of caller of 0x800270
                this.caller_lr = caller2_lr.toString();
                updateModules();
                this.caller_lr_mod = moduleOfAddr(caller2_lr);
                // Also walk deeper
                var caller2_fp = caller_fp.readPointer();
                var caller3_lr = caller2_fp.add(8).readPointer();
                this.caller3_lr = caller3_lr.toString();
                this.caller3_lr_mod = moduleOfAddr(caller3_lr);
            } catch(e){ this.caller_lr = "?"; }
        },
        onLeave: function(retval) {
            if (!this.hit) return;
            send({t:"ALLOC_64", addr:retval.toString(),
                  sz:this.sz, caller_lr:this.caller_lr, caller_lr_mod:this.caller_lr_mod,
                  caller3_lr:this.caller3_lr, caller3_lr_mod:this.caller3_lr_mod,
                  ts:TS()});
            armWatch(retval, this.sz, this.caller_lr_mod);
        }
    });

    // SINK
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        send({t:"Z_SINK_HIT", data:s.substring(0,300), ts:TS()});
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
        if t == 'BUFFER_FILLED':
            print("\n" + "="*80)
            print(f"*** BUFFER_FILLED — RAW Z BUFFER LOCATED ***")
            print(f"  addr: {p.get('addr')}, sz: {p.get('sz')}")
            print(f"  caller_lr: {p.get('caller_lr')}")
            print(f"  alloc @ +{p.get('alloc_ts')}ms, first_write @ +{p.get('first_write_ts')}ms, delta = {p.get('delta_ms')}ms")
            print(f"  poll_count: {p.get('poll_count')}, n_changes: {p.get('n_changes')}")
            print(f"  final content_hex: {p.get('content_hex')}")
            print(f"  ALL CHANGES:")
            for c in p.get('all_changes', []):
                print(f"    +{c.get('t')}ms offset_hex={c.get('offset_hex')}")
                print(f"      before: {c.get('before','')[:96]}")
                print(f"      after : {c.get('after','')[:96]}")
            print("="*80)
        elif t == 'ALLOC_64':
            print(f"[+{p.get('ts',0)}ms] ALLOC_64 addr={p.get('addr')} caller_lr={p.get('caller_lr_mod')} caller3_lr={p.get('caller3_lr_mod','')}")
        elif t == 'WATCH_ARM':
            print(f"[+{p.get('ts',0)}ms] WATCH_ARM addr={p.get('addr')}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] *** Z_SINK: {p.get('data','')[:200]}")
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
time.sleep(30)

with open("/tmp/find_writer.json", "w") as f: json.dump(results, f, indent=2, default=str)
allocs = [r for r in results if r.get('t') == 'ALLOC_64']
filled = [r for r in results if r.get('t') == 'BUFFER_FILLED']
print(f"\n[*] Total: {len(results)}, ALLOC_64: {len(allocs)}, BUFFER_FILLED: {len(filled)}")
session.detach()
