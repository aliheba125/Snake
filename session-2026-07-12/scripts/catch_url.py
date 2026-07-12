#!/usr/bin/env python3
"""
Catch the moment the URL 'https://push-...?z=0c...&v=20' is assembled.
Hook memcpy/memmove with early exit unless size is 100-250. Inside filter,
peek first bytes of src; only log if they start with 'https', 'http', '?z=', 'z=0'.
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
function bt(ctx) {
    try {
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 16);
        return frames.map(moduleOfAddr);
    } catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _memcpy = libc.findExportByName("memcpy");
var _memmove = libc.findExportByName("memmove");
var _memcpy_chk = libc.findExportByName("__memcpy_chk");
var _strcpy = libc.findExportByName("strcpy");
var _strcpy_chk = libc.findExportByName("__strcpy_chk");
var _strncpy = libc.findExportByName("strncpy");
var _strdup = libc.findExportByName("strdup");
var _strndup = libc.findExportByName("strndup");

function makeCopyHook(name) {
    return {
        onEnter: function(args) {
            var sz = args[2].toInt32();
            // Cheap filter: only 40..500 bytes (URLs, hex strings)
            if (sz < 40 || sz > 500) return;
            // Peek first byte
            var srcPtr = args[1];
            try {
                var firstBytes = srcPtr.readCString(6);
                if (!firstBytes) return;
                if (firstBytes.indexOf("z=") === 0 || firstBytes.indexOf("?z=") === 0 || firstBytes.indexOf("http") === 0 || firstBytes.indexOf("&v=") === 0 || firstBytes.indexOf("push-") === 0 || firstBytes.indexOf("europe") === 0) {
                    // z-related copy detected
                    this.sz = sz;
                    this.dst = args[0];
                    this.src = srcPtr;
                    this.ra = this.returnAddress;
                    updateModules();
                }
            } catch(e) {}
        },
        onLeave: function() {
            if (!this.sz) return;
            var mod = moduleOfAddr(this.ra);
            var src_str = "";
            try { src_str = this.src.readCString(Math.min(this.sz, 300)); } catch(e){}
            var src_hex = "";
            try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200))); } catch(e){}
            send({t:"URL_COPY", name:name, sz:this.sz,
                  dst:this.dst.toString(), src:this.src.toString(),
                  src_str:src_str, src_hex_prefix:src_hex.substring(0,80),
                  caller:mod, bt:bt(this.context).slice(0,10), ts:TS()});
        }
    };
}

if (_memcpy) Interceptor.attach(_memcpy, makeCopyHook("memcpy"));
if (_memmove) Interceptor.attach(_memmove, makeCopyHook("memmove"));
if (_memcpy_chk) Interceptor.attach(_memcpy_chk, makeCopyHook("memcpy_chk"));
if (_strcpy) Interceptor.attach(_strcpy, {
    onEnter: function(args) {
        try {
            var first = args[1].readCString(6);
            if (!first) return;
            if (first.indexOf("z=") === 0 || first.indexOf("?z=") === 0 || first.indexOf("http") === 0) {
                this.hit = true; this.src = args[1]; this.dst = args[0]; this.ra = this.returnAddress;
                updateModules();
            }
        } catch(e){}
    },
    onLeave: function() {
        if (!this.hit) return;
        var mod = moduleOfAddr(this.ra);
        var s = "";
        try { s = this.src.readCString(300); } catch(e){}
        send({t:"URL_STRCPY", src:this.src.toString(), dst:this.dst.toString(),
              src_str:s, caller:mod, bt:bt(this.context).slice(0,10), ts:TS()});
    }
});

// Also hook mmap+mprotect for RWX to catch JIT emission
var _mmap = libc.findExportByName("mmap");
var _mprotect = libc.findExportByName("mprotect");

// SINK
var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallSink, 15); return; }
    send({t:"modules_ready", ts:TS()});
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        send({t:"Z_SINK_HIT", data:s.substring(0,500), ts:TS()});
                        return;
                    }
                } catch(e){}
            }
        }
    });
    _sink_installed = true;
    send({t:"sink_ready", ts:TS()});
}

setTimeout(tryInstallSink, 30);
send({t:"init_done", ts:1});
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t in ('URL_COPY','URL_STRCPY'):
            print("\n" + "-"*60)
            print(f"*** {t} @ +{p.get('ts',0)}ms sz={p.get('sz','?')} name={p.get('name','')} ***")
            print(f"    dst={p.get('dst','')} src={p.get('src','')} caller={p.get('caller','')}")
            print(f"    src_str: {p.get('src_str','')[:200]}")
            print(f"    src_hex: {p.get('src_hex_prefix','')[:80]}")
            print(f"    backtrace:")
            for f in p.get('bt',[]): print("      ", f)
            print("-"*60)
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] Z_SINK: {p.get('data','')[:200]}")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:220]}")
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print(f"ERR: {msg.get('description','')[:300]}")
        sys.stdout.flush()

print("[*] Setting wrap.com.snake for gadget attach...")
subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

print("[*] Polling for gadget...")
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
print(f"[+{time.time()-t_start:.3f}s] script loaded, monitoring 40s")
time.sleep(40)

# Save results
with open("/tmp/catch_url.json", "w") as f: json.dump(results, f, indent=2, default=str)
print(f"\n[*] Total events: {len(results)}")
url_copies = [r for r in results if r.get('t') in ('URL_COPY','URL_STRCPY')]
print(f"[*] URL copies: {len(url_copies)}")
session.detach()
