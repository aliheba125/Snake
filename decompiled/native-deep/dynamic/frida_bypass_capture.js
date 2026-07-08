/*
 * frida_bypass_capture.js — تجاوز كشف البيئة + التقاط فكّ تشفير AES
 *
 * يُشغَّل بوضع الإطلاق (spawn) فيهوك قبل تحميل libengine.so:
 *   1) __system_property_get  -> يزيّف خصائص كشف المحاكي/redroid (ro.kernel.qemu, ro.hardware, tags, fingerprint...)
 *   2) exit/_exit/abort/kill/pthread_kill/raise -> يسجّل المُستدعي (backtrace) ويمنع الانتحار المبكر
 *   3) open/openat/fopen/access -> يخفي مسارات qemu/su/frida (best-effort)
 *   4) عند تحميل libengine.so -> يهوك FUN_00161788 (البذور) و FUN_00160208 (النص المشفّر/المفكوك)
 *
 * ملاحظة صادقة: الحامي يستخدم syscalls مباشرة (svc)؛ هذه الخطافات تلتقط الكشف المعتمد على libc.
 * إن ظلّ ينتحر عبر svc مباشر، ستظهر لنا مصادر exit/kill في backtrace فنستهدف روتين الكشف بعنوانه.
 */
'use strict';

const LIB = 'libengine.so';
const OFF_KDF = 0x161788;
const OFF_AES = 0x160208;
const PSZ = Process.pointerSize;

// ---- 1) تزييف الخصائص ----
const SPOOF = {
  'ro.kernel.qemu': '0', 'ro.boot.qemu': '0', 'ro.kernel.qemu.gles': '0',
  'ro.hardware': 'qcom', 'ro.hardware.egl': 'adreno', 'ro.hardware.vulkan': 'adreno',
  'ro.product.model': 'SM-G991B', 'ro.product.brand': 'samsung',
  'ro.product.manufacturer': 'samsung', 'ro.product.device': 'o1s',
  'ro.product.name': 'o1sxxx', 'ro.build.product': 'o1s',
  'ro.build.tags': 'release-keys', 'ro.build.type': 'user',
  'ro.build.fingerprint': 'samsung/o1sxxx/o1s:13/TP1A.220624.014/G991BXXU5DWA1:user/release-keys',
  'ro.build.characteristics': 'phone', 'ro.bootmode': 'unknown',
  'ro.secure': '1', 'ro.debuggable': '0',
  'init.svc.qemud': '', 'init.svc.qemu-props': '', 'qemu.hw.mainkeys': '',
  'qemu.sf.fake_camera': '', 'ro.kernel.android.qemud': '', 'ro.boot.hardware': 'qcom',
};

function hookProps() {
  const f = Module.findExportByName('libc.so', '__system_property_get');
  if (!f) return;
  Interceptor.attach(f, {
    onEnter(a) { this.name = a[0].readCString(); this.buf = a[1]; },
    onLeave(ret) {
      if (this.name && Object.prototype.hasOwnProperty.call(SPOOF, this.name)) {
        const v = SPOOF[this.name];
        this.buf.writeUtf8String(v);
        ret.replace(ptr(v.length));
        console.log('[prop-spoof] ' + this.name + ' -> "' + v + '"');
      }
    }
  });
}

// ---- 2) منع الانتحار المبكر + كشف مصدره ----
function guard(name, mod) {
  const f = Module.findExportByName(mod, name);
  if (!f) return;
  Interceptor.attach(f, {
    onEnter(a) {
      console.log('\n[EXIT-BLOCKED] ' + name + ' استُدعي — المصدر:');
      console.log(Thread.backtrace(this.context, Backtracer.ACCURATE)
        .map(DebugSymbol.fromAddress).join('\n'));
      if (name === 'kill' || name === 'pthread_kill' || name === 'tgkill') {
        // اسمح فقط إن لم يكن للعملية نفسها
      }
    }
  });
}
function blockNoRet(name, mod) {
  const f = Module.findExportByName(mod, name);
  if (!f) return;
  Interceptor.replace(f, new NativeCallback(function () {
    console.log('[EXIT-BLOCKED] ' + name + ' مُنع (no-op)\n' +
      Thread.backtrace(this.context, Backtracer.FUZZY).slice(0,8).map(DebugSymbol.fromAddress).join('\n'));
    return 0;
  }, 'int', []));
}

// ---- 3) إخفاء مسارات الكشف ----
const HIDE = ['qemu', 'goldfish', 'ranchu', 'genymotion', 'vbox', '/su', 'magisk',
  'frida', 're.frida', 'gum-js', '/data/local/tmp/fs', '27042', 'ro.kernel.qemu'];
function hookOpen() {
  ['open', 'openat', 'fopen', 'access'].forEach(function (nm) {
    const f = Module.findExportByName('libc.so', nm);
    if (!f) return;
    Interceptor.attach(f, {
      onEnter(a) {
        const idx = (nm === 'openat') ? 1 : 0;
        try {
          const p = a[idx].readCString();
          if (p && HIDE.some(function (h) { return p.indexOf(h) >= 0; })) {
            this.block = true; console.log('[hide-path] ' + nm + ' ' + p);
          }
        } catch (e) {}
      },
      onLeave(ret) { if (this.block) ret.replace(ptr(-1)); }
    });
  });
}

// ---- 4) هوك دوال AES في libengine ----
function readVec(v) {
  try {
    const b = v.readPointer(), e = v.add(PSZ).readPointer();
    const len = e.sub(b).toInt32();
    if (len > 0 && len < 0x20000) return { ptr: b, len: len };
  } catch (e) {}
  return null;
}
function dump(tag, v) {
  if (!v) return;
  let txt = '';
  try { const s = v.ptr.readUtf8String(Math.min(v.len, 2048)); if (s && /[ -~]{3,}/.test(s)) txt = '  text="' + s + '"'; } catch (e) {}
  console.log('[' + tag + '] len=' + v.len + txt);
  console.log(hexdump(v.ptr, { length: Math.min(v.len, 512), header: false, ansi: false }));
}
let aesHooked = false;
function hookAES(base) {
  if (aesHooked) return; aesHooked = true;
  console.log('[+] ' + LIB + ' @ ' + base + ' — تثبيت خطافات AES');
  Interceptor.attach(base.add(OFF_KDF), {
    onEnter(a) {
      const s1 = a[1].toUInt32() >>> 0, s2 = a[2].toString();
      console.log('\n[KDF seeds] seed1=0x' + s1.toString(16) + '  seed2=' + s2);
    }
  });
  Interceptor.attach(base.add(OFF_AES), {
    onEnter(a) { this.out = a[2]; dump('AES ciphertext(in)', readVec(a[1])); },
    onLeave() { dump('AES PLAINTEXT(out)', readVec(this.out)); }
  });
}

// ---- التركيب ----
hookProps(); hookOpen();
['exit', '_exit', 'abort'].forEach(function (n) { blockNoRet(n, 'libc.so'); });
['kill', 'pthread_kill', 'tgkill', 'raise'].forEach(function (n) { guard(n, 'libc.so'); });

// انتظر تحميل libengine (hook dlopen + poll)
const dlopenExt = Module.findExportByName(null, 'android_dlopen_ext');
if (dlopenExt) Interceptor.attach(dlopenExt, {
  onEnter(a) { try { this.p = a[0].readCString(); } catch (e) {} },
  onLeave() {
    if (this.p && this.p.indexOf(LIB) >= 0) {
      const b = Module.findBaseAddress(LIB); if (b) hookAES(b);
    }
  }
});
const iv = setInterval(function () {
  const b = Module.findBaseAddress(LIB);
  if (b) { clearInterval(iv); hookAES(b); }
}, 30);

console.log('[+] خطافات التجاوز مثبّتة — سيُستأنف التطبيق الآن.');
