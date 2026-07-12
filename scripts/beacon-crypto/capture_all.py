#!/usr/bin/env python3
"""
capture_all.py — Complete proof capture:
  - Master key (32B) at *(libengine+0x8280f0)
  - S-box (256B) at *(libengine+0x8281a8)
  - Hook malloc(16/32/64) via wrapper 0x800290
  - When caller2_lr is in libengine (specifically inside FUN_00160014's bl-return zone),
    snapshot: state (256B from param_1), iter/end pointers from FUN_001604e0 frame,
    surrounding plaintext memory (backward from end pointer)
  - Capture z from libflutter SSL_write
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
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
function safeReadBytes(p, n) {
    try { return hexify(p.readByteArray(n), n); } catch(e) { return null; }
}
function safeReadPtr(p) {
    try { return p.readPointer(); } catch(e) { return null; }
}

var libc = Process.getModuleByName("libc.so");
var _malloc = libc.findExportByName("malloc");

// Wait for libengine and libflutter
var libengine = null, libflutter = null;
var KEY_GLOBAL = null, SBOX_GLOBAL = null;
var WRAPPER_RA = null;         // 0x800290 — malloc-return in wrapper
var FEED_CALLER_LR_MIN = null; // libengine + 0x60050
var FEED_CALLER_LR_MAX = null; // libengine + 0x60060
var FINALIZE_CALLER_LR_MIN = null; // FUN_0016007c range
var FINALIZE_CALLER_LR_MAX = null;

var master_key = null;
var sbox = null;

function tryInit() {
    libengine = Process.findModuleByName("libengine.so");
    libflutter = Process.findModuleByName("libflutter.so");
    if (!libengine || !libflutter) { setTimeout(tryInit, 15); return; }
    KEY_GLOBAL = libengine.base.add(0x8280f0);
    SBOX_GLOBAL = libengine.base.add(0x8281a8);
    WRAPPER_RA = libengine.base.add(0x800290);
    FEED_CALLER_LR_MIN = libengine.base.add(0x60050);
    FEED_CALLER_LR_MAX = libengine.base.add(0x60060);
    FINALIZE_CALLER_LR_MIN = libengine.base.add(0x600c8);
    FINALIZE_CALLER_LR_MAX = libengine.base.add(0x60200);
    send({t:"modules_ready", ts:TS(), libengine:libengine.base.toString(), libflutter:libflutter.base.toString()});
    installHooks();
    setInterval(pollGlobals, 20);
}

function pollGlobals() {
    if (!master_key) {
        var p = safeReadPtr(KEY_GLOBAL);
        if (p && !p.isNull()) {
            var b = safeReadBytes(p, 32);
            if (b) { master_key = b; send({t:"MASTER_KEY", ts:TS(), ptr:p.toString(), hex:b}); }
        }
    }
    if (!sbox) {
        var p = safeReadPtr(SBOX_GLOBAL);
        if (p && !p.isNull()) {
            var b = safeReadBytes(p, 256);
            if (b) { sbox = b; send({t:"SBOX", ts:TS(), ptr:p.toString(), hex:b}); }
        }
    }
}

var captured_hits = [];
var MAX_HITS = 30;
var z_reported = false;

function installHooks() {
    // Malloc hook
    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            if (!ra.equals(WRAPPER_RA)) return;
            var sz = args[0].toInt32();
            if (sz !== 16 && sz !== 32 && sz !== 64 && sz !== 128) return;
            this.hit = true;
            this.sz = sz;
            try {
                // this.context.fp = wrapper's x29
                // [wrapper.x29 + 16] = x19 saved by wrapper (= FUN_001604e0's x19 = param_1 = state pointer)
                var fp_wrapper = this.context.fp;
                this.state_ptr = safeReadPtr(fp_wrapper.add(16));
                var fp2 = safeReadPtr(fp_wrapper);   // FUN_001604e0's x29
                this.fp2 = fp2;
                // Read caller2_lr = [fp2 + 8] = FUN_001604e0's saved LR = return to FUN_00160014
                this.caller2_lr = fp2 ? safeReadPtr(fp2.add(8)) : null;
                // Read x21 (iter) and x22 (end) from FUN_001604e0's frame
                // FUN_001604e0 saves x21 at [sp+120] and x22 at [sp+112]
                // sp of FUN_001604e0 = fp2 - 48. So x21 at [fp2 + 72], x22 at [fp2 + 64]
                this.iter_x21 = fp2 ? safeReadPtr(fp2.add(72)) : null;
                this.end_x22  = fp2 ? safeReadPtr(fp2.add(64)) : null;
            } catch(e) { this.err = String(e); }
        },
        onLeave: function(retval) {
            if (!this.hit) return;
            if (captured_hits.length >= MAX_HITS) return;
            var caller_in_feed = false;
            var caller_in_finalize = false;
            if (this.caller2_lr) {
                var lr = this.caller2_lr;
                if (lr.compare(FEED_CALLER_LR_MIN) >= 0 && lr.compare(FEED_CALLER_LR_MAX) < 0) {
                    caller_in_feed = true;
                }
                if (lr.compare(FINALIZE_CALLER_LR_MIN) >= 0 && lr.compare(FINALIZE_CALLER_LR_MAX) < 0) {
                    caller_in_finalize = true;
                }
            }
            var hit = {
                ts: TS(), sz: this.sz, buf: retval.toString(),
                state_ptr: this.state_ptr ? this.state_ptr.toString() : null,
                caller2_lr: this.caller2_lr ? moduleOfAddr(this.caller2_lr) : null,
                iter_x21: this.iter_x21 ? this.iter_x21.toString() : null,
                end_x22:  this.end_x22 ? this.end_x22.toString() : null,
                caller_in_feed: caller_in_feed,
                caller_in_finalize: caller_in_finalize
            };
            // Read state struct dump (256 bytes at state_ptr)
            if (this.state_ptr && !this.state_ptr.isNull()) {
                hit.state_hex = safeReadBytes(this.state_ptr, 256);
                // Read key state at *(state+0x30)
                var kp = safeReadPtr(this.state_ptr.add(0x30));
                if (kp && !kp.isNull()) {
                    hit.rotating_key_hex = safeReadBytes(kp, 32);
                }
                // Read state[0].data (master key copy on state)
                var mk = safeReadPtr(this.state_ptr);
                if (mk && !mk.isNull()) {
                    hit.state0_data_hex = safeReadBytes(mk, 64);
                }
            }
            // Read backward from end_x22 to capture plaintext
            if (this.end_x22 && !this.end_x22.isNull()) {
                var back = 128;
                try {
                    var end = this.end_x22;
                    var start = end.sub(back);
                    hit.plaintext_backward_hex = safeReadBytes(start, back);
                    hit.plaintext_backward_start = start.toString();
                } catch(e){}
            }
            // Read output vector current state
            hit.output_buf_hex = safeReadBytes(retval, this.sz);
            captured_hits.push(hit);
            send({t:"MALLOC_HIT", hit:hit});
        }
    });

    // SINK
    Interceptor.attach(libflutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            if (z_reported) return;
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        z_reported = true;
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex = m ? m[1] : "";
                        // Refresh globals one last time
                        pollGlobals();
                        send({t:"Z_SINK", ts:TS(), z:z_hex, url:s.substring(0, 300),
                              master_key:master_key, sbox:sbox,
                              n_hits: captured_hits.length,
                              hits: captured_hits});
                        return;
                    }
                } catch(e){}
            }
        }
    });

    send({t:"hooks_ready", ts:TS()});
}

setTimeout(tryInit, 5);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'Z_SINK':
            print("\n" + "="*80)
            print(f"*** Z_SINK @ +{p.get('ts',0)}ms ***")
            print(f"z:          {p.get('z','')}")
            print(f"master_key: {p.get('master_key')}")
            print(f"sbox first 64: {(p.get('sbox') or '')[:128]}")
            hits = p.get('hits', [])
            print(f"# malloc hits: {len(hits)}")
            for h in hits[:12]:
                mark = "FEED" if h.get('caller_in_feed') else ("FIN" if h.get('caller_in_finalize') else "?")
                print(f"  [{mark}] +{h.get('ts')}ms sz={h.get('sz')} state={h.get('state_ptr')} caller={h.get('caller2_lr')}")
                if h.get('rotating_key_hex'):
                    print(f"        rotating_key: {h.get('rotating_key_hex')}")
                if h.get('state0_data_hex'):
                    print(f"        state0_data:  {(h.get('state0_data_hex') or '')[:64]}")
                if h.get('plaintext_backward_hex'):
                    print(f"        pt_back:      {(h.get('plaintext_backward_hex') or '')[-96:]}")
            print("="*80)
        elif t == 'MALLOC_HIT':
            pass  # too noisy, only print at Z_SINK
        elif t in ('MASTER_KEY','SBOX','modules_ready','boot','hooks_ready'):
            print(f"[+{p.get('ts',0)}ms] {t}: {json.dumps({k:v for k,v in p.items() if k not in ('hits',)}, default=str)[:200]}")
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

with open("/tmp/capture_all.json", "w") as f: json.dump(results, f, indent=2, default=str)
z_sinks = [r for r in results if r.get('t') == 'Z_SINK']
print(f"\n[*] Total: {len(results)}, Z_SINK: {len(z_sinks)}")
try: session.detach()
except: pass
