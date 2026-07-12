var app = Process.findModuleByName("libapp.so");
send({t:"info", msg:"libapp base="+app.base+" size="+app.size});

var poolBase = app.base.add(0x480080);
send({t:"info", msg:"Pool base: " + poolBase});

// Try reading compressed pointer at pp+0x114d8
try {
    var raw = poolBase.add(0x114d8).readByteArray(16);
    send({t:"raw", offset:"0x114d8"}, raw);
    
    // Also read pp+0x112b0 ("not Installed")
    var raw2 = poolBase.add(0x112b0).readByteArray(16);
    send({t:"raw", offset:"0x112b0"}, raw2);
    
    // Read pp+0x88 ("key" - known string for validation)
    var raw3 = poolBase.add(0x88).readByteArray(16);
    send({t:"raw", offset:"0x88"}, raw3);
    
    // Read pp+0x120 ("https" - known)
    var raw4 = poolBase.add(0x120).readByteArray(16);
    send({t:"raw", offset:"0x120"}, raw4);
} catch(e) {
    send({t:"error", msg: e.message});
}

send({t:"done"});
