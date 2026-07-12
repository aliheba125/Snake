/*
 * frida_bypass_capture.js — نسخة آمنة (frida 17)
 * تُزيل الخطافات المُعطِّلة (Interceptor.replace على noreturn + Backtracer.ACCURATE).
 * تبقي: تزييف الخصائص + رصد dlopen + هوك AES (FUN_00161788 / FUN_00160208).
 */
'use strict';
var LIB = 'libengine.so', OFF_KDF = 0x161788, OFF_AES = 0x160208, PSZ = Process.pointerSize;

function expo(name, mod) {
  try {
    if (mod) { var m = Process.findModuleByName(mod); return m ? m.findExportByName(name) : null; }
    return Module.getGlobalExportByName ? Module.getGlobalExportByName(name) : null;
  } catch (e) { return null; }
}
function baseOf(n) { try { var m = Process.findModuleByName(n); return m ? m.base : null; } catch (e) { return null; } }

// تزييف خصائص كشف المحاكي
var SPOOF = {
  'ro.kernel.qemu': '0', 'ro.boot.qemu': '0', 'ro.kernel.qemu.gles': '0',
  'ro.hardware': 'qcom', 'ro.hardware.egl': 'adreno',
  'ro.product.model': 'SM-G991B', 'ro.product.brand': 'samsung',
  'ro.product.manufacturer': 'samsung', 'ro.product.device': 'o1s', 'ro.product.name': 'o1sxxx',
  'ro.build.tags': 'release-keys', 'ro.build.type': 'user',
  'ro.build.fingerprint': 'samsung/o1sxxx/o1s:13/TP1A.220624.014/G991BXXU5DWA1:user/release-keys',
  'ro.build.characteristics': 'phone', 'ro.secure': '1', 'ro.debuggable': '0', 'ro.boot.hardware': 'qcom'
};
(function () {
  var f = expo('__system_property_get', 'libc.so');
  if (!f) return;
  Interceptor.attach(f, {
    onEnter: function (a) { try { this.n = a[0].readCString(); } catch (e) { this.n = null; } this.b = a[1]; },
    onLeave: function (r) {
      if (this.n && SPOOF.hasOwnProperty(this.n)) {
        try { this.b.writeUtf8String(SPOOF[this.n]); r.replace(ptr(SPOOF[this.n].length)); } catch (e) {}
      }
    }
  });
})();

// هوك AES
function readVec(v) { try { var b = v.readPointer(), e = v.add(PSZ).readPointer(); var l = e.sub(b).toInt32(); if (l > 0 && l < 0x20000) return { ptr: b, len: l }; } catch (e) {} return null; }
function dump(tag, v) {
  if (!v) return; var t = '';
  try { var s = v.ptr.readUtf8String(Math.min(v.len, 2048)); if (s && /[ -~]{3,}/.test(s)) t = '  text="' + s + '"'; } catch (e) {}
  console.log('[' + tag + '] len=' + v.len + t);
  try { console.log(hexdump(v.ptr, { length: Math.min(v.len, 256), header: false, ansi: false })); } catch (e) {}
}
var aesHooked = false;
function hookAES(base) {
  if (aesHooked) return; aesHooked = true;
  console.log('[+] libengine.so @ ' + base + ' — هوك AES');
  try {
    Interceptor.attach(base.add(OFF_KDF), { onEnter: function (a) { console.log('\n[KDF seeds] seed1=0x' + (a[1].toUInt32() >>> 0).toString(16) + '  seed2=' + a[2].toString()); } });
    Interceptor.attach(base.add(OFF_AES), { onEnter: function (a) { this.o = a[2]; dump('AES ciphertext(in)', readVec(a[1])); }, onLeave: function () { dump('AES PLAINTEXT(out)', readVec(this.o)); } });
  } catch (e) { console.log('[aes-hook-err] ' + e); }
}

// رصد تحميل المكتبات (لمعرفة إن حُمّلت libengine قبل أي انهيار)
var dl = expo('android_dlopen_ext') || expo('android_dlopen_ext', 'libdl.so') || expo('dlopen', 'libdl.so');
if (dl) Interceptor.attach(dl, {
  onEnter: function (a) { try { this.p = a[0].readCString(); } catch (e) {} },
  onLeave: function () { if (this.p) { console.log('[dlopen] ' + this.p); if (this.p.indexOf(LIB) >= 0) { var b = baseOf(LIB); if (b) hookAES(b); } } }
});
var b0 = baseOf(LIB); if (b0) hookAES(b0);
var iv = setInterval(function () { var b = baseOf(LIB); if (b) { clearInterval(iv); hookAES(b); } }, 50);
console.log('[+] خطافات آمنة مثبّتة (spoof+AES+dlopen).');
