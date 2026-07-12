// Gadget capture agent — installed at process load via LD_PRELOAD (no ptrace).
// Captures backend socket I/O + attempts libflutter/libssl SSL plaintext.
(function () {
    var LOG = "/data/local/tmp/snake_cap.log";
    var t0 = Date.now();
    function T() { return "+" + (Date.now() - t0) + "ms"; }
    function w(line) {
        try {
            var f = new File(LOG, "a");
            f.write(line + "\n");
            f.flush();
            f.close();
        } catch (e) {}
    }
    w("=== GADGET AGENT LOADED " + new Date().toISOString() + " ===");

    function ascii(ptr, len) {
        var n = Math.min(len, 400);
        var s = "";
        try {
            for (var i = 0; i < n; i++) {
                var b = ptr.add(i).readU8();
                s += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
            }
        } catch (e) {}
        return s;
    }

    function installLibc() {
        var libc = Process.findModuleByName("libc.so");
        if (!libc) return false;
        var BACKEND = "92.205.103.45";
        var beFds = {};

        Interceptor.attach(libc.findExportByName("connect"), {
            onEnter: function (a) {
                try {
                    var fd = a[0].toInt32(), sa = a[1], fam = sa.readU16();
                    if (fam === 2) {
                        var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                        var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
                        if (ip === BACKEND && port > 0) { beFds[fd] = 1; w(T() + " CONNECT backend fd=" + fd); }
                    }
                } catch (e) {}
            }
        });
        Interceptor.attach(libc.findExportByName("close"), {
            onEnter: function (a) { var fd = a[0].toInt32(); if (beFds[fd]) { w(T() + " CLOSE fd=" + fd); delete beFds[fd]; } }
        });
        ["write", "sendto", "send"].forEach(function (fn) {
            var p = libc.findExportByName(fn); if (!p) return;
            Interceptor.attach(p, {
                onEnter: function (a) { this.fd = a[0].toInt32(); this.buf = a[1]; },
                onLeave: function (r) { var n = r.toInt32(); if (n > 0 && beFds[this.fd]) w(T() + " " + fn.toUpperCase() + " fd=" + this.fd + " n=" + n + " :: " + ascii(this.buf, n)); }
            });
        });
        ["read", "recvfrom", "recv"].forEach(function (fn) {
            var p = libc.findExportByName(fn); if (!p) return;
            Interceptor.attach(p, {
                onEnter: function (a) { this.fd = a[0].toInt32(); this.buf = a[1]; },
                onLeave: function (r) { var n = r.toInt32(); if (n > 0 && beFds[this.fd]) w(T() + " " + fn.toUpperCase() + " fd=" + this.fd + " n=" + n + " :: " + ascii(this.buf, Math.min(n, 200))); }
            });
        });
        w(T() + " libc socket hooks installed");
        return true;
    }

    // libssl plaintext (Firebase + any system-TLS)
    function installSSL() {
        try {
            var mods = Process.enumerateModules();
            var ssl = null;
            for (var i = 0; i < mods.length; i++) if (mods[i].name === "libssl.so") { ssl = mods[i]; break; }
            if (!ssl) { w(T() + " libssl not yet loaded"); return; }
            var wr = ssl.findExportByName("SSL_write"), rd = ssl.findExportByName("SSL_read");
            if (wr) Interceptor.attach(wr, {
                onEnter: function (a) { this.b = a[1]; },
                onLeave: function (r) { var n = r.toInt32(); if (n > 0) w(T() + " SSL_write n=" + n + " :: " + ascii(this.b, n)); }
            });
            if (rd) Interceptor.attach(rd, {
                onEnter: function (a) { this.b = a[1]; },
                onLeave: function (r) { var n = r.toInt32(); if (n > 0) w(T() + " SSL_read n=" + n + " :: " + ascii(this.b, n)); }
            });
            w(T() + " libssl SSL hooks installed");
        } catch (e) { w(T() + " SSL hook err " + e); }
    }

    installLibc();
    installSSL();
    // Retry SSL install after libs load
    var tries = 0;
    var iv = setInterval(function () { tries++; installSSL(); if (tries > 8) clearInterval(iv); }, 1500);
    w(T() + " agent init complete");
})();
