"use strict";
// Minimal single-point hook on ilil (0xf1188) — JNI String ilil(int).
// Captures the integer index passed. When "Code is Not valid" is shown,
// the index that produced it reveals the error/verdict code.
// Also hooks djp (0xaf978, byte[] djp(int)) which may return decrypted blobs.
var eng = null;
var log = [];
var armed = false;
function rec(o){ o.ts = Date.now(); o.armed = armed; log.push(o); send({t:"LOG", rec:o}); }

function init(){
    eng = Process.findModuleByName("libengine.so");
    if (!eng){ setTimeout(init, 50); return; }
    var ilil = eng.base.add(0xf1188);
    var djp  = eng.base.add(0xaf978);

    // JNI native: (JNIEnv* env, jclass clazz, jint i). arg index = args[2]
    Interceptor.attach(ilil, {
        onEnter: function(a){
            this.env = a[0];
            this.idx = a[2].toInt32();
        },
        onLeave: function(ret){
            // ret is jstring. Read via env->GetStringUTFChars is complex; try to read
            // the java string chars: on ART, jstring -> we can use env functions.
            var s = null;
            try {
                var env = this.env;
                // GetStringUTFChars is at JNIEnv function table index 169 (offset 169*8)
                var fnTab = env.readPointer();
                var getUtf = fnTab.add(169*8).readPointer();
                var getUtfFn = new NativeFunction(getUtf, 'pointer', ['pointer','pointer','pointer']);
                var chars = getUtfFn(env, ret, ptr(0));
                if (!chars.isNull()) s = chars.readCString();
            } catch(e){ s = "(read_err:"+e+")"; }
            rec({fn:"ilil", idx:this.idx, idxHex:"0x"+(this.idx>>>0).toString(16), ret:s});
        }
    });

    Interceptor.attach(djp, {
        onEnter: function(a){ this.idx = a[2].toInt32(); },
        onLeave: function(ret){ rec({fn:"djp", idx:this.idx, idxHex:"0x"+(this.idx>>>0).toString(16)}); }
    });

    send({t:"HOOKED", ilil:ilil.toString(), djp:djp.toString()});
}
init();

rpc.exports = {
    arm: function(){ armed = true; return Date.now(); },
    getlog: function(){ return log; }
};
