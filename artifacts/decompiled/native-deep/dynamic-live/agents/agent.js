import Java from 'frida-java-bridge';

var OUT = '/data/local/tmp/snake_capture.log';
function flog(obj) {
  try {
    var f = new File(OUT, 'a');
    f.write(JSON.stringify(obj) + '\n');
    f.flush();
    f.close();
  } catch (e) {}
}
function emit(obj) {
  try { send(obj); } catch (e) {}
  flog(obj);
}

// immediate sanity marker (proves the script loaded and File works)
flog({ t: 'boot', m: 'agent script loaded', pid: Process.id, ts: Date.now() });

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
  try { var s = ptr.readUtf8String(Math.min(len, 2048)); if (s && /[ -~]{3,}/.test(s)) return s; } catch (e) {}
  return null;
}

function installNative() {
  var b = baseOf('libengine.so');
  if (!b) return false;
  try {
    Interceptor.attach(b.add(0x161788), { onEnter: function (a) { emit({ t: 'kdf', s1: '0x' + (a[1].toUInt32() >>> 0).toString(16), s2: a[2].toString() }); } });
    Interceptor.attach(b.add(0x160208), {
      onEnter: function (a) { this.o = a[2]; var v = readVec(a[1]); emit({ t: 'aes_in', len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null, txt: v ? txt(v.ptr, v.len) : null }); },
      onLeave: function () { var v = readVec(this.o); emit({ t: 'aes_out', len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null, txt: v ? txt(v.ptr, v.len) : null }); }
    });
    emit({ t: 'log', m: 'native AES/KDF hooks @ ' + b });
    return true;
  } catch (e) { emit({ t: 'log', m: 'native hook err ' + e }); return false; }
}

function findClassInAnyLoader(name) {
  try {
    var loaders = Java.enumerateClassLoadersSync();
    for (var i = 0; i < loaders.length; i++) {
      try { var f = Java.ClassFactory.get(loaders[i]); var C = f.use(name); if (C) return C; } catch (e) {}
    }
  } catch (e) {}
  return null;
}
function hookNativeClass() {
  var NAME = 'com.snake.helper.Native';
  var N = null;
  try { N = Java.use(NAME); } catch (e) {}
  if (!N) N = findClassInAnyLoader(NAME);
  if (!N) return false;
  try {
    N.ilil.implementation = function (x) { var r = this.ilil(x); emit({ t: 'ilil', arg: x, ret: '' + r }); return r; };
    N.djp.implementation = function (x) { var r = this.djp(x); var h = null; try { h = b2h(Java.array('byte', r)); } catch (e) {} emit({ t: 'djp', arg: x, len: (r ? r.length : 0), hex: h }); return r; };
    N.chl.implementation = function (bytes) { var r = this.chl(bytes); emit({ t: 'chl', inlen: (bytes ? bytes.length : 0), inhex: (bytes ? b2h(bytes) : null), ret: r }); return r; };
    try { N.aior.implementation = function (a, b) { emit({ t: 'aior', a: '' + a, b: '' + b }); return this.aior(a, b); }; } catch (e) {}
    try { N.awl.implementation = function (a) { emit({ t: 'awl', a: '' + a }); return this.awl(a); }; } catch (e) {}
    try { N.i.implementation = function (x) { emit({ t: 'i', arg: x }); return this.i(x); }; } catch (e) {}
    try { N.eio.implementation = function () { emit({ t: 'eio' }); return this.eio(); }; } catch (e) {}
    emit({ t: 'log', m: 'Java Native hooks INSTALLED' });
    return true;
  } catch (e) { emit({ t: 'log', m: 'java hook err: ' + e }); return false; }
}

function ptraceBypass() {
  try {
    var p = Module.getGlobalExportByName('ptrace');
    Interceptor.replace(p, new NativeCallback(function () { return 0; }, 'long', ['int', 'int', 'pointer', 'pointer']));
    emit({ t: 'log', m: 'ptrace() bypassed' });
  } catch (e) {}
}

emit({ t: 'log', m: 'agent init; java.available=' + Java.available });
ptraceBypass();

var nativeDone = false, javaDone = false, ticks = 0;
var master = setInterval(function () {
  ticks++;
  if (!nativeDone && baseOf('libengine.so')) nativeDone = installNative();
  if (!javaDone && Java.available) {
    try { Java.perform(function () { if (hookNativeClass()) javaDone = true; }); } catch (e) {}
  }
  if ((nativeDone && javaDone) || ticks > 4000) {
    clearInterval(master);
    emit({ t: 'log', m: 'master done nativeDone=' + nativeDone + ' javaDone=' + javaDone + ' ticks=' + ticks });
  }
}, 5);
