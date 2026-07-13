"use strict";
// Network capture: hook getaddrinfo + connect to prove server-side activation.
// Robust: only hooks stable libc exports. No Stalker.
var libc = Process.getModuleByName("libc.so");
var hits = [];
var armed = false;

function ipToStr(sockaddrPtr) {
    try {
        var family = sockaddrPtr.readU16();
        if (family === 2) { // AF_INET
            var port = (sockaddrPtr.add(2).readU8() << 8) | sockaddrPtr.add(3).readU8();
            var a = sockaddrPtr.add(4).readU8();
            var b = sockaddrPtr.add(5).readU8();
            var c = sockaddrPtr.add(6).readU8();
            var d = sockaddrPtr.add(7).readU8();
            return a+"."+b+"."+c+"."+d+":"+port;
        } else if (family === 10) { // AF_INET6
            var port6 = (sockaddrPtr.add(2).readU8() << 8) | sockaddrPtr.add(3).readU8();
            var bytes = sockaddrPtr.add(8).readByteArray(16);
            var hex = Array.from(new Uint8Array(bytes)).map(function(x){return ("0"+x.toString(16)).slice(-2);}).join("");
            return "[v6:"+hex+"]:"+port6;
        }
    } catch(e) { return "parse_err:"+e; }
    return "family?";
}

var _getaddrinfo = libc.findExportByName("getaddrinfo");
if (_getaddrinfo) {
    Interceptor.attach(_getaddrinfo, {
        onEnter: function(args) {
            try {
                var host = args[0].isNull() ? "(null)" : args[0].readCString();
                var rec = {ev:"getaddrinfo", host:host, tid:Process.getCurrentThreadId(), ts:Date.now(), armed:armed};
                hits.push(rec);
                send({t:"DNS", rec:rec});
            } catch(e) { send({t:"err", e:e.toString()}); }
        }
    });
}

var _connect = libc.findExportByName("connect");
if (_connect) {
    Interceptor.attach(_connect, {
        onEnter: function(args) {
            try {
                var addr = ipToStr(args[1]);
                var rec = {ev:"connect", addr:addr, tid:Process.getCurrentThreadId(), ts:Date.now(), armed:armed};
                hits.push(rec);
                send({t:"CONNECT", rec:rec});
            } catch(e) { send({t:"err", e:e.toString()}); }
        }
    });
}

send({t:"ready", getaddrinfo:!!_getaddrinfo, connect:!!_connect});

rpc.exports = {
    arm: function(){ armed = true; return Date.now(); },
    gethits: function(){ return hits; }
};
