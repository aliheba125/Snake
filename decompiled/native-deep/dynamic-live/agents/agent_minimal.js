// Minimal agent: Native KDF/AES hooks + Java Native.ilil/chl/djp ONLY
// NO PackageManager hooks, NO exec hooks - to isolate crash cause
import Java from 'frida-java-bridge';

function baseOf(n) { try { var m = Process.findModuleByName(n); return m ? m.base : null; } catch (e) { return null; } }
function readVec(v) {
  try {
    var PSZ = Process.pointerSize;
    var b = v.readPointer(), e = v.add(PSZ).readPointer();
    var l = e.sub(b).toInt32();
    if (l > 0 && l < 0x20000) return { ptr: b, len: l };
  } catch (e) {}
  return null;
}
function hx(ptr, len) {
  try { return Array.prototype.map.call(new Uint8Array(ptr.readByteArray(len)), function(c){return('0'+c.toString(16)).slice(-2)}).join(''); }
  catch (e) { return null; }
}
function txt(ptr, len) {
  try { return ptr.readUtf8String(Math.min(len, 4096)); } catch (e) { return null; }
}

var lastKdf = null;

function installNative() {
  var b = baseOf('libengine.so');
  if (!b) { send({t:'log',m:'libengine NOT loaded'}); return false; }
  
  Interceptor.attach(b.add(0x161788), {
    onEnter: function(a) {
      lastKdf = {s1: '0x'+(a[1].toUInt32()>>>0).toString(16), s2: a[2].toString()};
      send({t:'kdf', s1: lastKdf.s1, s2: lastKdf.s2});
    }
  });
  
  Interceptor.attach(b.add(0x160208), {
    onEnter: function(a) {
      this.o = a[2];
      var v = readVec(a[1]);
      if (v) send({t:'aes_in', kdf: lastKdf, len: v.len, hex: hx(v.ptr, Math.min(v.len, 64))});
    },
    onLeave: function() {
      var v = readVec(this.o);
      if (v) send({t:'aes_out', len: v.len, hex: hx(v.ptr, Math.min(v.len, 128)), txt: txt(v.ptr, v.len)});
    }
  });
  
  try { Interceptor.attach(b.add(0x17e148), {onEnter: function(){send({t:'call',fn:'FUN_0017e148'})}}); } catch(e){}
  try { Interceptor.attach(b.add(0x189774), {onEnter: function(){send({t:'call',fn:'FUN_00189774'})}}); } catch(e){}
  
  send({t:'log', m:'native hooks @ '+b});
  return true;
}

function getNativeClass() {
  var NAME = 'com.snake.helper.Native';
  try { return Java.use(NAME); } catch(e) {}
  try {
    var loaders = Java.enumerateClassLoadersSync();
    for (var i = 0; i < loaders.length; i++) {
      try { var f = Java.ClassFactory.get(loaders[i]); var C = f.use(NAME); if (C) return C; } catch(e) {}
    }
  } catch(e) {}
  return null;
}

function installJavaMinimal() {
  // ONLY hook Native.ilil, Native.chl, Native.djp
  // NO PackageManager, NO Runtime.exec, NO other hooks
  var N = getNativeClass();
  if (!N) { send({t:'log', m:'Native class not found'}); return false; }
  
  try {
    N.ilil.implementation = function(x) {
      var r = this.ilil(x);
      send({t:'ilil', arg: x, ret: ''+r});
      return r;
    };
  } catch(e) { send({t:'log', m:'ilil hook err: '+e}); }
  
  try {
    N.chl.implementation = function(bytes) {
      var r = this.chl(bytes);
      send({t:'chl', inlen: bytes ? bytes.length : 0, ret: r});
      return r;
    };
  } catch(e) { send({t:'log', m:'chl hook err: '+e}); }
  
  try {
    N.djp.implementation = function(x) {
      var r = this.djp(x);
      send({t:'djp', arg: x, len: r ? r.length : 0});
      return r;
    };
  } catch(e) { send({t:'log', m:'djp hook err: '+e}); }
  
  send({t:'log', m:'Java minimal hooks installed (NO PM, NO exec)'});
  return true;
}

rpc.exports = {
  init: function() {
    var nat = false, jav = false;
    try { nat = installNative(); } catch(e) { send({t:'log',m:'native err: '+e}); }
    try {
      if (Java.available) {
        Java.perform(function() {
          try { jav = installJavaMinimal(); } catch(e) { send({t:'log',m:'java err: '+e}); }
        });
      }
    } catch(e) { send({t:'log',m:'java perform err: '+e}); }
    return {nativeHooks: nat, javaHooks: jav};
  }
};

send({t:'log', m:'agent_minimal ready; java='+Java.available});
