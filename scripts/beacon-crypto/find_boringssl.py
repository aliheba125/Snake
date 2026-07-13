#!/usr/bin/env python3
"""
Locate BoringSSL crypto functions inside libflutter.so by pattern matching:
- AES-256 S-box constant bytes
- ChaCha20 constant "expand 32-byte k"
- SHA-256 initial hash values
- HMAC/HKDF patterns
This uses Frida to enumerate memory/read symbols to find crypto function entry points
in the stripped libflutter binary.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
send({t:"boot", ts:0});

function tryFind() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryFind, 30); return; }

    var base = flutter.base;
    var size = flutter.size;
    send({t:"flutter", base:base.toString(), size:size});

    // Pattern 1: AES-256 S-box (starts with 0x63 0x7c 0x77 0x7b ...)
    var aes_sbox = "63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76";
    // Pattern 2: ChaCha20 "expand 32-byte k"
    var chacha_const = "65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b";
    // Pattern 3: SHA-256 initial H values (H0..H7 as 32-bit big-endian)
    // H0=0x6a09e667  H1=0xbb67ae85 ...
    var sha256_h = "67 e6 09 6a 85 ae 67 bb 72 f3 6e 3c 3a f5 4f a5";
    // Pattern 4: AES Te0 table start (0xa56363c6 = little-endian 0xc6636363)
    var aes_te0 = "c6 63 63 a5";

    var patterns = [
        ["AES_SBOX",   aes_sbox],
        ["CHACHA20",   chacha_const],
        ["SHA256_H0",  sha256_h],
        ["AES_TE0",    aes_te0]
    ];
    for (var pi = 0; pi < patterns.length; pi++) {
        try {
            var found = Memory.scanSync(base, size, patterns[pi][1]);
            send({t:"scan", name:patterns[pi][0], count:found.length,
                  addrs:found.map(function(f){return {addr:f.address.toString(), off:f.address.sub(base).toInt32().toString(16)};})});
        } catch(e) {
            send({t:"scan_err", name:patterns[pi][0], err:e.toString()});
        }
    }

    // Also scan for hex-encoding lookup table "0123456789abcdef"
    var hex_lower = "30 31 32 33 34 35 36 37 38 39 61 62 63 64 65 66";
    var hex_upper = "30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46";
    try {
        var hl = Memory.scanSync(base, size, hex_lower);
        send({t:"scan", name:"HEX_LOWER", count:hl.length,
              addrs:hl.map(function(f){return {addr:f.address.toString(), off:f.address.sub(base).toInt32().toString(16)};})});
        var hu = Memory.scanSync(base, size, hex_upper);
        send({t:"scan", name:"HEX_UPPER", count:hu.length,
              addrs:hu.map(function(f){return {addr:f.address.toString(), off:f.address.sub(base).toInt32().toString(16)};})});
    } catch(e){}

    // Same scan on libapp.so and libengine.so
    var libapp = Process.findModuleByName("libapp.so");
    var engine = Process.findModuleByName("libengine.so");
    for (var mm = 0; mm < 2; mm++) {
        var mod = mm === 0 ? libapp : engine;
        if (!mod) continue;
        for (var pi = 0; pi < patterns.length; pi++) {
            try {
                var found = Memory.scanSync(mod.base, mod.size, patterns[pi][1]);
                if (found.length > 0)
                    send({t:"scan_mod", mod:mod.name, name:patterns[pi][0], count:found.length,
                          off:found[0].address.sub(mod.base).toInt32().toString(16)});
            } catch(e){}
        }
        try {
            var hl2 = Memory.scanSync(mod.base, mod.size, hex_lower);
            if (hl2.length > 0)
                send({t:"scan_mod", mod:mod.name, name:"HEX_LOWER", count:hl2.length,
                      off:hl2[0].address.sub(mod.base).toInt32().toString(16)});
        } catch(e){}
    }

    // Search libflutter for stored strings related to TLS/BoringSSL
    var suspicious = ["EVP_aes_", "EVP_", "AES_", "SHA256", "HKDF", "GCM",
                      "chacha20", "poly1305", "aes256-gcm", "aes-128-gcm"];
    var strhits = [];
    for (var si = 0; si < suspicious.length; si++) {
        var str = suspicious[si];
        // Convert string to hex pattern
        var pat = "";
        for (var c = 0; c < str.length; c++) {
            pat += ('0' + str.charCodeAt(c).toString(16)).slice(-2);
            if (c < str.length-1) pat += " ";
        }
        try {
            var hits = Memory.scanSync(base, size, pat);
            if (hits.length > 0) {
                strhits.push({str:str, count:hits.length,
                              first_off: hits[0].address.sub(base).toInt32().toString(16)});
            }
        } catch(e){}
    }
    send({t:"flutter_string_hits", hits:strhits});
    send({t:"done"});
}
setTimeout(tryFind, 500);
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        print(json.dumps(p, indent=2))
        sys.stdout.flush()

dm = frida.get_device_manager()
device = dm.add_remote_device("127.0.0.1:27052")
procs = device.enumerate_processes()
if not procs: print("No gadget!"); sys.exit(1)
session = device.attach(procs[0].pid)
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
time.sleep(15)

with open("/tmp/boringssl_scan.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
session.detach()
