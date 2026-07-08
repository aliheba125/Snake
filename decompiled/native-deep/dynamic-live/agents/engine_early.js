// Early native crypto capturer for gadget "script" interaction.
// Hooks dlopen so FUN_00160208/KDF/decryptor hooks install the instant libengine.so maps
// (before JNI_OnLoad body runs) -> catches startup decryption. Logs to file (no client needed).
var OUT = '/data/local/tmp/engine_cap.log';
var PSZ = Process.pointerSize;
function flog(o) { try { var f = new File(OUT, 'a'); f.write(JSON.stringify(o) + '\n'); f.flush(); f.close(); } catch (e) {} }
function expAny(n) { var f = null; try { f = Module.getGlobalExportByName(n); } catch (e) {} if (!f) { var m = Process.enumerateModules(); for (var i = 0; i < m.length && !f; i++) { try { f = m[i].findExportByName(n); } catch (e) {} } } return f; }
function baseOf(n) { try { var m = Process.findModuleByName(n); return m ? m.base : null; } catch (e) { return null; } }
function readVec(v) { try { var b = v.readPointer(), e = v.add(PSZ).readPointer(); var l = e.sub(b).toInt32(); if (l > 0 && l < 0x40000) return { ptr: b, len: l }; } catch (e) {} return null; }
function hx(p, l) { try { var ba = p.readByteArray(l); return Array.prototype.map.call(new Uint8Array(ba), function (c) { return ('0' + c.toString(16)).slice(-2); }).join(''); } catch (e) { return null; } }
function txt(p, l) { try { var s = p.readUtf8String(Math.min(l, 4096)); return s; } catch (e) { return null; } }

flog({ t: 'boot', ts: Date.now(), pid: Process.id });

var installed = false, lastKdf = null;
function installEngine(tag) {
  if (installed) return;
  var b = baseOf('libengine.so');
  if (!b) return;
  installed = true;
  try {
    Interceptor.attach(b.add(0x161788), { onEnter: function (a) { lastKdf = { s1: '0x' + (a[1].toUInt32() >>> 0).toString(16), s2: a[2].toString() }; flog({ t: 'kdf', s1: lastKdf.s1, s2: lastKdf.s2 }); } });
    Interceptor.attach(b.add(0x160208), {
      onEnter: function (a) { this.o = a[2]; var v = readVec(a[1]); flog({ t: 'aes_in', kdf: lastKdf, len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null }); },
      onLeave: function () { var v = readVec(this.o); flog({ t: 'aes_out', len: v ? v.len : 0, hex: v ? hx(v.ptr, v.len) : null, txt: v ? txt(v.ptr, v.len) : null }); }
    });
    Interceptor.attach(b.add(0x17e148), { onEnter: function () { flog({ t: 'call', fn: 'FUN_0017e148' }); } });
    Interceptor.attach(b.add(0x189774), { onEnter: function () { flog({ t: 'call', fn: 'FUN_00189774' }); } });
    flog({ t: 'log', m: 'engine hooks installed @ ' + b + ' (' + tag + ')' });
  } catch (e) { flog({ t: 'log', m: 'install err ' + e }); installed = false; }
}

installEngine('immediate');
if (!installed) {
  var dl = expAny('android_dlopen_ext') || expAny('dlopen');
  if (dl) { Interceptor.attach(dl, { onLeave: function () { installEngine('post-dlopen'); } }); flog({ t: 'log', m: 'dlopen hooked, waiting for libengine' }); }
  else flog({ t: 'log', m: 'no dlopen export' });
}
