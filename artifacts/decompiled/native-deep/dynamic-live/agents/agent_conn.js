import Java from 'frida-java-bridge';

function b2h(arr) {
  try { var s = ''; for (var i = 0; i < arr.length; i++) s += ('0' + ((arr[i] + 256) % 256).toString(16)).slice(-2); return s; }
  catch (e) { return null; }
}
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
  try { var ba = ptr.readByteArray(len); return Array.prototype.map.call(new Uint8Array(ba), function (c) { return ('0' + c.toString(16)).slice(-2); }).join(''); }
  catch (e) { return null; }
}
function txt(ptr, len) {
  try { var s = ptr.readUtf8String(Math.min(len, 4096)); return s; } catch (e) {}
  return null;
}

// native AES/KDF hooks -> capture seed1/seed2 + ciphertext(in) + plaintext(out)
var lastKdf = null;
function installNative() {
  var b = baseOf('libengine.so');
  if (!b) { send({ t: 'log', m: 'libengine NOT loaded' }); return false; }
  Interceptor.attach(b.add(0x161788), {
    onEnter: function (a) { lastKdf = { s1: '0x' + (a[1].toUInt32() >>> 0).toString(16), s2: a[2].toString() }; send({ t: 'kdf', s1: lastKdf.s1, s2: lastKdf.s2 }); }
  });
  Interceptor.attach(b.add(0x160208), {
    onEnter: function (a) { this.o = a[2]; var v = readVec(a[1]); send({ t: 'aes_in', kdf: lastKdf, len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null }); },
    onLeave: function () { var v = readVec(this.o); send({ t: 'aes_out', len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null, txt: v ? txt(v.ptr, v.len) : null }); }
  });
  // enclosing decryptor functions (callers of AES) - confirm when the engine decrypt path runs
  try { Interceptor.attach(b.add(0x17e148), { onEnter: function () { send({ t: 'call', fn: 'FUN_0017e148' }); } }); } catch (e) {}
  try { Interceptor.attach(b.add(0x189774), { onEnter: function () { send({ t: 'call', fn: 'FUN_00189774' }); } }); } catch (e) {}
  send({ t: 'log', m: 'native AES/KDF + decryptor hooks @ ' + b });
  installSSL();
  return true;
}

// BoringSSL plaintext capture (network payload before TLS)
function installSSL() {
  function expAny(n) { var f = null; try { f = Module.getGlobalExportByName(n); } catch (e) {} if (!f) { var mods = Process.enumerateModules(); for (var i = 0; i < mods.length && !f; i++) { try { f = mods[i].findExportByName(n); } catch (e) {} } } return f; }
  var w = expAny('SSL_write'), r = expAny('SSL_read');
  if (w) Interceptor.attach(w, { onEnter: function (a) { var n = a[2].toInt32(); send({ t: 'ssl_w', len: n, txt: txt(a[1], n) }); } });
  if (r) Interceptor.attach(r, { onEnter: function (a) { this.b = a[1]; }, onLeave: function (x) { var n = x.toInt32(); if (n > 0) send({ t: 'ssl_r', len: n, txt: txt(this.b, n) }); } });
  send({ t: 'log', m: 'SSL hooks w=' + w + ' r=' + r });
}

function getNativeClass() {
  var NAME = 'com.snake.helper.Native';
  try { return Java.use(NAME); } catch (e) {}
  try {
    var loaders = Java.enumerateClassLoadersSync();
    for (var i = 0; i < loaders.length; i++) {
      try { var f = Java.ClassFactory.get(loaders[i]); var C = f.use(NAME); if (C) return C; } catch (e) {}
    }
  } catch (e) {}
  return null;
}

// hook PackageManager to reveal which game package the engine looks for
function installPMHooks() {
  try {
    var PM = Java.use('android.app.ApplicationPackageManager');
    ['getPackageInfo', 'getApplicationInfo', 'getLaunchIntentForPackage', 'getPackageUid'].forEach(function (mname) {
      try {
        PM[mname].overloads.forEach(function (o) {
          o.implementation = function () {
            var pkg = arguments.length > 0 ? ('' + arguments[0]) : '?';
            send({ t: 'pm', fn: mname, pkg: pkg });
            return o.apply(this, arguments);
          };
        });
      } catch (e) {}
    });
    send({ t: 'log', m: 'PackageManager hooks installed' });
  } catch (e) { send({ t: 'log', m: 'PM hook err ' + e }); }
  // also catch Runtime.exec("pm ...") and ProcessBuilder
  try {
    var RT = Java.use('java.lang.Runtime');
    RT.exec.overload('[Ljava.lang.String;').implementation = function (arr) { try { send({ t: 'exec', cmd: arr.join(' ') }); } catch (e) {} return this.exec(arr); };
    RT.exec.overload('java.lang.String').implementation = function (c) { send({ t: 'exec', cmd: '' + c }); return this.exec(c); };
  } catch (e) {}
}

// passive hooks (catch any app-driven calls too)
function installJavaHooks() {
  installPMHooks();
  var N = getNativeClass();
  if (!N) return false;
  try {
    N.ilil.implementation = function (x) { var r = this.ilil(x); send({ t: 'ilil', arg: x, ret: '' + r }); return r; };
    N.djp.implementation = function (x) { var r = this.djp(x); var h = null; try { h = b2h(Java.array('byte', r)); } catch (e) {} send({ t: 'djp', arg: x, len: (r ? r.length : 0), hex: h }); return r; };
    N.chl.implementation = function (bytes) { var r = this.chl(bytes); send({ t: 'chl', inlen: (bytes ? bytes.length : 0), inhex: (bytes ? b2h(bytes) : null), ret: r }); return r; };
    send({ t: 'log', m: 'Java Native passive hooks installed' });
    return true;
  } catch (e) { send({ t: 'log', m: 'java hook err: ' + e }); return false; }
}

function hexToBytes(h) { var a = []; for (var i = 0; i < h.length; i += 2) a.push(parseInt(h.substr(i, 2), 16)); return a; }
function mkVec(bytes) {
  var buf = Memory.alloc(bytes.length || 1);
  if (bytes.length) buf.writeByteArray(bytes);
  var vec = Memory.alloc(24);
  vec.writePointer(buf); vec.add(8).writePointer(buf.add(bytes.length)); vec.add(16).writePointer(buf.add(bytes.length));
  return vec;
}
function mkEmptyVec() { var vec = Memory.alloc(24); vec.writePointer(ptr(0)); vec.add(8).writePointer(ptr(0)); vec.add(16).writePointer(ptr(0)); return vec; }

rpc.exports = {
  // Directly invoke the live KDF: key = live FUN_00161788(seed1, seed2)  -> validate crypto_scheme.py
  kdf: function (seed1, seed2) {
    var b = baseOf('libengine.so'); if (!b) return null;
    var fn = new NativeFunction(b.add(0x161788), 'void', ['pointer', 'uint32', 'int64', 'int64']);
    var out = mkEmptyVec();
    fn(out, seed1, seed2, 0);
    var keyPtr = out.readPointer();
    if (keyPtr.isNull()) return null;
    return hx(keyPtr, 32);
  },
  // Directly invoke the live AES: out = live FUN_00160208(key, input)  -> determine mode/direction
  aes: function (keyHex, inHex) {
    var b = baseOf('libengine.so'); if (!b) return null;
    var fn = new NativeFunction(b.add(0x160208), 'long', ['pointer', 'pointer', 'pointer']);
    var kvec = mkVec(hexToBytes(keyHex));
    var ivec = mkVec(hexToBytes(inHex));
    var ovec = mkEmptyVec();
    fn(kvec, ivec, ovec);
    var v = readVec(ovec);
    return v ? hx(v.ptr, v.len) : null;
  },
  // run KDF on an APP thread (proper allocator/TLS context) via clock_gettime hook
  kdfOnApp: function (seed1, seed2) {
    return new Promise(function (resolve) {
      var b = baseOf('libengine.so');
      if (!b) { resolve(null); return; }
      var fn = new NativeFunction(b.add(0x161788), 'void', ['pointer', 'uint32', 'int64', 'int64']);
      var state = { pending: true, running: false, result: null };
      function expAny(n) { var f = null; try { f = Module.getGlobalExportByName(n); } catch (e) {} return f; }
      var cg = expAny('clock_gettime');
      var listener = Interceptor.attach(cg, {
        onEnter: function () {
          if (!state.pending || state.running) return;
          // only run on a non-frida thread
          if (Process.getCurrentThreadId() === Process.id) { /* still fine */ }
          state.running = true; state.pending = false;
          try {
            var out = Memory.alloc(24);
            out.writePointer(ptr(0)); out.add(8).writePointer(ptr(0)); out.add(16).writePointer(ptr(0));
            fn(out, seed1, seed2, 0);
            var kp = out.readPointer();
            state.result = kp.isNull() ? 'NULL' : hx(kp, 32);
          } catch (e) { state.result = 'ERR:' + e; }
        }
      });
      var waited = 0;
      var iv = setInterval(function () {
        waited += 30;
        if (state.result !== null || waited > 8000) {
          clearInterval(iv);
          try { listener.detach(); } catch (e) {}
          resolve(state.result);
        }
      }, 30);
    });
  },
  init: function () {
    var nat = false, jav = false;
    try { nat = installNative(); } catch (e) { send({ t: 'log', m: 'installNative err ' + e }); }
    try { if (Java.available) Java.perform(function () { try { jav = installJavaHooks(); } catch (e) { send({ t: 'log', m: 'javahook err ' + e }); } }); }
    catch (e) { send({ t: 'log', m: 'java perform err ' + e }); }
    return { nativeHooks: nat, javaHooks: jav, javaAvailable: Java.available };
  },
  // ACTIVE extraction: call ilil(i) and djp(i) for a range -> triggers AES/KDF (captured by hooks) + returns plaintext
  dump: function (start, end, callDjp) {
    var out = { ilil: {}, djp: {} };
    if (!Java.available) { send({ t: 'log', m: 'Java not available for dump' }); return out; }
    Java.perform(function () {
      var N = getNativeClass();
      if (!N) { send({ t: 'log', m: 'Native class not found for dump' }); return; }
      for (var i = start; i < end; i++) {
        try { var s = N.ilil(i); if (s !== null && s !== undefined && ('' + s).length > 0) out.ilil['0x' + i.toString(16)] = '' + s; } catch (e) {}
        if (callDjp) { try { var b = N.djp(i); if (b && b.length) out.djp['0x' + i.toString(16)] = b2h(Java.array('byte', b)); } catch (e) {} }
      }
    });
    return out;
  },
  // call an explicit list of indices
  dumpList: function (indices, callDjp) {
    var out = { ilil: {}, djp: {} };
    if (!Java.available) return out;
    Java.perform(function () {
      var N = getNativeClass();
      if (!N) { send({ t: 'log', m: 'Native class not found' }); return; }
      indices.forEach(function (i) {
        try { var s = N.ilil(i); out.ilil['0x' + i.toString(16)] = (s === null || s === undefined) ? null : ('' + s); } catch (e) { out.ilil['0x' + i.toString(16)] = 'ERR:' + e; }
        if (callDjp) { try { var b = N.djp(i); out.djp['0x' + i.toString(16)] = (b && b.length) ? b2h(Java.array('byte', b)) : null; } catch (e) {} }
      });
    });
    return out;
  }
};
send({ t: 'log', m: 'agent_conn ready; java.available=' + Java.available });
