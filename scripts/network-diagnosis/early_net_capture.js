// Early network capture agent — runs at Gadget load time (before app code)
// Writes results to a file since there is no client connection

var libc = null;
var logFd = null;
var logPath = "/data/local/tmp/net_capture.log";

function initLog() {
    var fopen = new NativeFunction(Module.findExportByName("libc.so", "fopen"), "pointer", ["pointer", "pointer"]);
    var pathPtr = Memory.allocUtf8String(logPath);
    var modePtr = Memory.allocUtf8String("w");
    logFd = fopen(pathPtr, modePtr);
}

function log(msg) {
    if (!logFd || logFd.isNull()) return;
    var fprintf = new NativeFunction(Module.findExportByName("libc.so", "fprintf"), "int", ["pointer", "pointer"]);
    var fflush = new NativeFunction(Module.findExportByName("libc.so", "fflush"), "int", ["pointer"]);
    var s = Memory.allocUtf8String(msg + "\n");
    fprintf(logFd, s);
    fflush(logFd);
}

initLog();
log("=== Early network capture started at " + Date.now() + " ===");

var libc_mod = Process.findModuleByName("libc.so");

// Hook getaddrinfo
var gai = libc_mod.findExportByName("getaddrinfo");
if (gai) {
    Interceptor.attach(gai, {
        onEnter: function(args) {
            try { this.host = args[0].readCString(); } catch(e) { this.host = "?"; }
        },
        onLeave: function(ret) {
            log("DNS: " + this.host + " -> " + ret.toInt32());
        }
    });
}

// Hook connect
var conn = libc_mod.findExportByName("connect");
if (conn) {
    Interceptor.attach(conn, {
        onEnter: function(args) {
            var addr = args[1];
            var family = addr.readU16();
            if (family === 2) {
                var port = (addr.add(2).readU8() << 8) | addr.add(3).readU8();
                var ip = addr.add(4).readU8()+"."+addr.add(5).readU8()+"."+addr.add(6).readU8()+"."+addr.add(7).readU8();
                log("CONNECT: " + ip + ":" + port + " fd=" + args[0].toInt32());
            }
        }
    });
}

// Hook SSL_write (if available — captures HTTPS payload before encryption)
// This fires after TLS handshake
setTimeout(function() {
    var mods = Process.enumerateModules();
    for (var i = 0; i < mods.length; i++) {
        try {
            var sw = mods[i].findExportByName("SSL_write");
            if (sw) {
                Interceptor.attach(sw, {
                    onEnter: function(args) {
                        var len = args[2].toInt32();
                        if (len > 10 && len < 65536) {
                            try {
                                var txt = args[1].readUtf8String(Math.min(len, 2048));
                                log("SSL_WRITE len=" + len + " txt=" + txt.substring(0, 500));
                            } catch(e) {
                                var hex = Array.prototype.map.call(new Uint8Array(args[1].readByteArray(Math.min(len, 128))), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
                                log("SSL_WRITE len=" + len + " hex=" + hex.substring(0, 200));
                            }
                        }
                    }
                });
                var sr = mods[i].findExportByName("SSL_read");
                if (sr) {
                    Interceptor.attach(sr, {
                        onEnter: function(args) { this.buf = args[1]; },
                        onLeave: function(ret) {
                            var len = ret.toInt32();
                            if (len > 10) {
                                try {
                                    var txt = this.buf.readUtf8String(Math.min(len, 2048));
                                    log("SSL_READ len=" + len + " txt=" + txt.substring(0, 500));
                                } catch(e) {
                                    var hex = Array.prototype.map.call(new Uint8Array(this.buf.readByteArray(Math.min(len, 128))), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
                                    log("SSL_READ len=" + len + " hex=" + hex.substring(0, 200));
                                }
                            }
                        }
                    });
                }
                log("SSL hooks installed from " + mods[i].name);
                break;
            }
        } catch(e) {}
    }
}, 1000);

log("All early hooks installed");
