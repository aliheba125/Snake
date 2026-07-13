"use strict";
// Native-level hook of art::JNI::RegisterNatives to map method name -> native fn ptr,
// then Interceptor.attach the "ilil"/"djp"/decision native impls in libengine.so.
// Must run at spawn (JNI_OnLoad registers at library load).
var installed = false;
var log = [];
var engBase = null, engEnd = null;

function rec(o){ o.ts = Date.now(); log.push(o); send({t:"LOG", rec:o}); }

function hookRegisterNatives() {
    var libart = Process.findModuleByName("libart.so");
    if (!libart) return false;
    // Find RegisterNatives symbol
    var sym = null;
    var exps = libart.enumerateSymbols();
    for (var i=0;i<exps.length;i++){
        var n = exps[i].name;
        if (n.indexOf("RegisterNatives") >= 0 && n.indexOf("CheckJNI")<0) { sym = exps[i]; break; }
    }
    if (!sym) {
        // try exports
        var e = libart.enumerateExports();
        for (var j=0;j<e.length;j++){ if (e[j].name.indexOf("RegisterNatives")>=0){ sym=e[j]; break; } }
    }
    if (!sym) { send({t:"NOSYM"}); return false; }
    send({t:"FOUND_SYM", name:sym.name, addr:sym.address.toString()});

    Interceptor.attach(sym.address, {
        onEnter: function(args){
            // jint RegisterNatives(JNIEnv*, jclass, const JNINativeMethod*, jint)
            try {
                var methods = args[2];
                var count = args[3].toInt32();
                for (var k=0;k<count;k++){
                    var entry = methods.add(k*Process.pointerSize*3);
                    var namePtr = entry.readPointer();
                    var sigPtr = entry.add(Process.pointerSize).readPointer();
                    var fnPtr = entry.add(Process.pointerSize*2).readPointer();
                    var nm = namePtr.readCString();
                    var sg = sigPtr.readCString();
                    var mod = Process.findModuleByAddress(fnPtr);
                    var inEng = mod && mod.name.indexOf("libengine")>=0;
                    rec({ev:"REG", name:nm, sig:sg, fn:fnPtr.toString(),
                          fnMod:(mod?mod.name:"?"), fnOff:(mod?"0x"+fnPtr.sub(mod.base).toString(16):null)});
                    if (inEng && (nm==="ilil"||nm==="djp"||nm==="chl"||nm==="aior"||nm==="awl"||nm==="ac"||nm==="pjowqpxe")) {
                        attachNative(nm, sg, fnPtr);
                    }
                }
            } catch(e){ send({t:"REG_ERR", e:e.toString()}); }
        }
    });
    return true;
}

function attachNative(name, sig, fnPtr) {
    try {
        Interceptor.attach(fnPtr, {
            onEnter: function(a){
                this._name = name;
                // JNI: a[0]=env, a[1]=clazz/this, a[2]=first java arg
                this._arg2 = a[2];
                if (name==="ilil") { this._i = a[2].toInt32(); }
            },
            onLeave: function(ret){
                var info = {ev:"NATIVE_CALL", fn:this._name};
                if (this._name==="ilil") {
                    info.arg_i = this._i;
                    // ret is jstring; deref via env not trivial. Log ptr; read later if possible.
                    info.retPtr = ret.toString();
                }
                rec(info);
            }
        });
        send({t:"ATTACHED", name:name, fn:fnPtr.toString()});
    } catch(e){ send({t:"ATTACH_ERR", name:name, e:e.toString()}); }
}

// Retry until libart present
var tries=0;
var iv = setInterval(function(){
    tries++;
    if (installed) { clearInterval(iv); return; }
    if (hookRegisterNatives()) { installed=true; clearInterval(iv); send({t:"HOOK_READY"}); }
    if (tries>200){ clearInterval(iv); send({t:"GIVEUP"}); }
}, 20);

rpc.exports = { getlog: function(){ return log; } };
