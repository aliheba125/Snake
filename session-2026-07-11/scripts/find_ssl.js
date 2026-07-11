// Find BoringSSL functions in libflutter.so (Flutter embeds its own SSL)
var flutter = Process.findModuleByName("libflutter.so");
send({t: "info", msg: "libflutter @ " + flutter.base + " size=" + flutter.size});

// BoringSSL functions are typically: SSL_read, SSL_write, SSL_connect
// In Flutter they may be internal (not exported) but let's check
var exports = flutter.enumerateExports();
var ssl_exports = [];
for (var i = 0; i < exports.length; i++) {
    var name = exports[i].name;
    if (name.indexOf("SSL") !== -1 || name.indexOf("ssl") !== -1 || 
        name.indexOf("BIO") !== -1 || name.indexOf("tls") !== -1) {
        ssl_exports.push({name: name, addr: exports[i].address.toString()});
    }
}
send({t: "ssl_exports", count: ssl_exports.length, items: ssl_exports.slice(0, 50)});

// Also look for dart:io HTTP functions
// Flutter's Dart HTTP uses _SecureSocket which calls into BoringSSL
// The key internal function is often: ssl_crypto_x509_session_verify_cert_chain
// or the simpler: SSL_do_handshake, SSL_read_ex, SSL_write_ex

// Search for symbol patterns in libflutter
var symbols = flutter.enumerateSymbols();
var ssl_syms = [];
for (var i = 0; i < symbols.length; i++) {
    var name = symbols[i].name;
    if (name.indexOf("SSL_read") !== -1 || name.indexOf("SSL_write") !== -1 ||
        name.indexOf("SSL_do_handshake") !== -1 || name.indexOf("BIO_read") !== -1 ||
        name.indexOf("BIO_write") !== -1) {
        ssl_syms.push({name: name, addr: symbols[i].address.toString()});
    }
}
send({t: "ssl_symbols", count: ssl_syms.length, items: ssl_syms.slice(0, 30)});

// Try to find any BoringSSL in any loaded library
var all_mods = Process.enumerateModules();
for (var i = 0; i < all_mods.length; i++) {
    var m = all_mods[i];
    try {
        var exp = m.findExportByName("SSL_read");
        if (exp) {
            send({t: "found_ssl", lib: m.name, fn: "SSL_read", addr: exp.toString()});
        }
    } catch(e) {}
    try {
        var exp2 = m.findExportByName("SSL_write");
        if (exp2) {
            send({t: "found_ssl", lib: m.name, fn: "SSL_write", addr: exp2.toString()});
        }
    } catch(e) {}
}

send({t: "done"});
