/*
 * frida_capture.js — التقاط مدخلات فكّ التشفير من libengine.so وقت التشغيل
 *
 * الغرض: التحليل الساكن استرجع الخوارزمية بالكامل (AES-256 بمفتاح = SHA256(PRNG(seed1,seed2)))
 * لكن البذرتين والنص المشفّر يُنتَجان وقت التشغيل. هذا السكربت يلتقطهما من جهاز حقيقي،
 * ثم تُغذّى المخرجات إلى crypto_scheme.py لفكّ فعلي.
 *
 * الاستخدام:
 *   frida -U -f <package> -l frida_capture.js --no-pause
 *   (أو) frida -U -n <process> -l frida_capture.js
 *
 * ملاحظة: العناوين إزاحات من قاعدة تحميل libengine.so (من التحليل الساكن):
 *   FUN_00161788 (اشتقاق المفتاح): +0x161788   — الوسيطان seed1(w1), seed2(x2)
 *   FUN_00160208 (واجهة AES)     : +0x160208   — param2=in_vec, param3=out_vec
 * تحقّق من الإزاحات مقابل نسختك (قد تختلف مع تحديثات التطبيق).
 */

'use strict';

const LIB = 'libengine.so';
const OFF_KDF = 0x161788;   // FUN_00161788
const OFF_AES = 0x160208;   // FUN_00160208

function hexdump_ptr(p, len) {
  try { return Memory.readByteArray(p, len); } catch (e) { return null; }
}

function waitForLib(cb) {
  const base = Module.findBaseAddress(LIB);
  if (base) { cb(base); return; }
  const iv = setInterval(() => {
    const b = Module.findBaseAddress(LIB);
    if (b) { clearInterval(iv); cb(b); }
  }, 50);
}

waitForLib(function (base) {
  console.log('[+] ' + LIB + ' base = ' + base);

  // --- التقاط بذرتي اشتقاق المفتاح ---
  Interceptor.attach(base.add(OFF_KDF), {
    onEnter(args) {
      // FUN_00161788(out_key, uint seed1 [w1], long seed2 [x2], 0)
      const seed1 = args[1].toUInt32() >>> 0;
      const seed2 = args[2].toString();
      console.log('\n[KDF] FUN_00161788  seed1=0x' + seed1.toString(16) +
                  '  seed2=' + seed2 + ' (0x' + ptr(seed2).toString(16) + ')');
      console.log('      => شغّل: python3 crypto_scheme.py 0x' + seed1.toString(16) +
                  ' ' + seed2 + ' <ciphertext_hex>');
    }
  });

  // --- التقاط النص المشفّر والمفكوك عبر واجهة AES ---
  Interceptor.attach(base.add(OFF_AES), {
    onEnter(args) {
      // FUN_00160208(key_vec, in_vec {ptr,end}, out_vec)
      this.inVec = args[1];
      try {
        const start = this.inVec.readPointer();
        const end = this.inVec.add(Process.pointerSize).readPointer();
        const len = end.sub(start).toInt32();
        if (len > 0 && len < 0x10000) {
          console.log('[AES-in] ciphertext len=' + len);
          console.log(hexdump(start, { length: Math.min(len, 256), header: false }));
        }
      } catch (e) {}
    },
    onLeave(retval) {
      // بعد الفكّ: افحص متجه المخرجات (arg3) إن أمكن الوصول إليه لاحقاً
    }
  });

  console.log('[+] الخطافات مثبّتة. شغّل التطبيق ليُشغّل مسار فكّ التشفير.');
});
