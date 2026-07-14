var flutter = Process.findModuleByName("libflutter.so");
var captures = [];
var activated = false;

var ssl_write = Module.findExportByName("libflutter.so", "SSL_write");
var ssl_read = Module.findExportByName("libflutter.so", "SSL_read");

if (!ssl_write) {
    var exports = flutter.enumerateExports();
    for (var i = 0; i < exports.length; i++) {
        if (exports[i].name.indexOf("SSL_write") >= 0) ssl_write = exports[i].address;
        if (exports[i].name.indexOf("SSL_read") >= 0) ssl_read = exports[i].address;
    }
}

send({t: "init", ssl_write: ssl_write ? ssl_write.toString() : "NOT_FOUND",
      ssl_read: ssl_read ? ssl_read.toString() : "NOT_FOUND"});

if (ssl_write) {
    Interceptor.attach(ssl_write, {
        onEnter: function(args) {
            if (!activated) return;
            var buf = args[1];
            var len = args[2].toInt32();
            if (len > 0 && len < 8192) {
                try {
                    var data = buf.readByteArray(len);
                    var arr = new Uint8Array(data);
                    var hex = "";
                    var ascii = "";
                    for (var i = 0; i < arr.length; i++) {
                        hex += ("0" + arr[i].toString(16)).slice(-2);
                        ascii += (arr[i] >= 32 && arr[i] < 127) ? String.fromCharCode(arr[i]) : ".";
                    }
                    captures.push({dir: "WRITE", len: len, hex: hex, ascii: ascii});
                    send({t: "SSL_WRITE", len: len, ascii_preview: ascii.substring(0, 200)});
                } catch(e) {}
            }
        }
    });
}

if (ssl_read) {
    Interceptor.attach(ssl_read, {
        onEnter: function(args) {
            if (!activated) return;
            this.buf = args[1];
        },
        onLeave: function(retval) {
            if (!activated || !this.buf) return;
            var len = retval.toInt32();
            if (len > 0 && len < 8192) {
                try {
                    var data = this.buf.readByteArray(len);
                    var arr = new Uint8Array(data);
                    var hex = "";
                    var ascii = "";
                    for (var i = 0; i < arr.length; i++) {
                        hex += ("0" + arr[i].toString(16)).slice(-2);
                        ascii += (arr[i] >= 32 && arr[i] < 127) ? String.fromCharCode(arr[i]) : ".";
                    }
                    captures.push({dir: "READ", len: len, hex: hex, ascii: ascii});
                    send({t: "SSL_READ", len: len, ascii_preview: ascii.substring(0, 200)});
                } catch(e) {}
            }
        }
    });
}

rpc.exports = {
    setact: function() { activated = true; },
    getcaps: function() { return captures; }
};
