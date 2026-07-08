/*
 * frida_capture.js — التقاط فكّ تشفير AES من libengine.so وقت التشغيل (نسخة مُحصّنة)
 *
 * الأساس: التحليل الساكن استرجع المخطّط كاملاً (../static-max/):
 *   AES-256، مفتاح = SHA-256( xorshift-PRNG(seed1, seed2) )
 *   - FUN_00161788(out_key, uint seed1, long seed2, 0)  -> يشتقّ المفتاح
 *   - FUN_00160208(key_vec, in_vec{ptr,end}, out_vec{ptr,end}) -> AES على البيانات
 *
 * هذا السكربت:
 *   1) يلتقط البذرتين seed1/seed2 (من FUN_00161788).
 *   2) يلتقط النص المشفّر (in_vec) والنص المفكوك مباشرةً (out_vec بعد العودة) —
 *      فلا حاجة لإعادة اشتقاق المفتاح: النص الصريح يظهر في out_vec.
 *
 * التشغيل:
 *   frida -U -f <package> -l frida_capture.js --no-pause
 *
 * الإزاحات من التحليل الساكن (تحقّق منها لنسختك):
 */
'use strict';

const LIB = 'libengine.so';
const OFF_KDF = 0x161788;   // FUN_00161788
const OFF_AES = 0x160208;   // FUN_00160208
const PSZ = Process.pointerSize;

function readVec(vecPtr) {
  // متجه C++ بنمط {begin, end}: يقرأ البايتات begin..end
  try {
    const begin = vecPtr.readPointer();
    const end = vecPtr.add(PSZ).readPointer();
    const len = end.sub(begin).toInt32();
    if (len > 0 && len < 0x20000) return { ptr: begin, len: len };
  } catch (e) {}
  return null;
}

function dump(tag, v) {
  if (!v) return;
  const bytes = v.ptr.readByteArray(v.len);
  const asStr = tryUtf8(v.ptr, v.len);
  console.log('[' + tag + '] len=' + v.len + (asStr ? ('  text="' + asStr + '"') : ''));
  console.log(hexdump(v.ptr, { length: Math.min(v.len, 512), header: false, ansi: false }));
}

function tryUtf8(ptr, len) {
  try {
    const s = ptr.readUtf8String(Math.min(len, 4096));
    if (s && /[ -~]{4,}/.test(s)) return s;
  } catch (e) {}
  return null;
}

function attach(base) {
  console.log('[+] ' + LIB + ' @ ' + base);

  Interceptor.attach(base.add(OFF_KDF), {
    onEnter(a) {
      const seed1 = a[1].toUInt32() >>> 0;
      const seed2 = a[2].toString();
      console.log('\n[KDF seeds] seed1=0x' + seed1.toString(16) + '  seed2=' + seed2);
      console.log('    => python3 crypto_scheme.py 0x' + seed1.toString(16) + ' ' + seed2 + ' <ct_hex>');
    }
  });

  Interceptor.attach(base.add(OFF_AES), {
    onEnter(a) {
      this.outVec = a[2];               // متجه المخرجات (النص المفكوك بعد العودة)
      dump('AES ciphertext(in)', readVec(a[1]));
    },
    onLeave() {
      dump('AES PLAINTEXT(out)', readVec(this.outVec));  // <-- النص الصريح مباشرةً
    }
  });

  console.log('[+] الخطافات مثبّتة — شغّل التطبيق ليعمل مسار فكّ التشفير.');
}

const b = Module.findBaseAddress(LIB);
if (b) attach(b);
else {
  const iv = setInterval(() => {
    const x = Module.findBaseAddress(LIB);
    if (x) { clearInterval(iv); attach(x); }
  }, 40);
}
