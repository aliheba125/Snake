# تقرير تفكيك تطبيق SE_2.2.6.apk (Snake Engine)

> تم إنتاج هذا المجلد عبر تفكيك (Reverse Engineering) لملف `SE_2.2.6.apk` الخاص بحساب المالك.
> الهدف: استخراج الكود المصدري وفكّ المكتبات باستخدام أقوى الأدوات المتاحة.

---

## 1. معلومات الحزمة (Package Metadata)

| الحقل | القيمة |
|-------|--------|
| اسم الحزمة (Package) | `com.snake` |
| الإصدار (versionName) | `2.2.6` |
| SHA-256 لملف APK | `f847608605ea1da9a7452f2072ee59e4dc26a900ca2aad0315c967c9c896d561` |
| الحد الأدنى للنظام (minSdk) | 28 (Android 9) |
| الهدف (targetSdk / compileSdk) | 35 (Android 15) |
| المعمارية | `arm64-v8a` فقط |
| التقنية | **Flutter** (Dart AOT) |
| إصدار Dart | **3.5.4** (≈ Flutter 3.24.x) |
| بصمة اللقطة (Snapshot hash) | `80a49c7111088100a233b2ae788e1f48` |
| أعلام البناء | `product`, `arm64`, `android`, `compressed-pointers`, `dwarf_stack_traces`, `dedup_instructions` |

**هوية التطبيق:** أداة **Snake Engine / SnakeSeller** — إطار عمل يعتمد على تشغيل تطبيقات/ألعاب أخرى داخل حاوية افتراضية (App Virtualization) لتطبيق التعديلات (Mods).

---

## 2. البنية المعمارية

```
APK
├── classes.dex          → غلاف أندرويد (Android embedding) + إضافات Flutter + مكتبات AndroidX/Google
├── lib/arm64-v8a/
│   ├── libapp.so         → منطق التطبيق الحقيقي (كود Dart مترجم AOT)   ← تم تفكيكه بـ Blutter
│   ├── libengine.so      → المحرك الأصلي (Native) — نواة الحاوية الافتراضية (محمي/مجرّد)
│   └── libflutter.so     → محرك Flutter القياسي (Google)
└── assets/flutter_assets → الأصول (خطوط FontAwesome + Slick، أيقونات SVG اجتماعية)
```

### تدفّق الإقلاع (من `com.snake.App`)
1. `App` (Application) يحمّل المحرك الأصلي: `System.loadLibrary("engine")`.
2. `attachBaseContext` يهيّئ الحاوية عبر فئات مبهمة مخفية داخل حزمة مموّهة `androidx.appcompat.view.menu`.
3. حزمة `com.snake.helper` تحتوي على مكوّنات الحاوية الافتراضية:
   - `ProxyActivity` / `ProxyService` / `ProxyVpnService` / `ProxyJobService` / `ProxyBroadcastReceiver` / `ProxyContentProvider` — مكوّنات وكيلة لتشغيل التطبيقات المستضافة.
   - `Native.java` — جسر JNI مع `libengine.so` (دوال أصلية مبهمة: `ac`, `aior`, `awl`, `chl`, `djp`, `eio`, `ilil`, `pjowqpxe`, `update` ...).
   - `gcuid()` — إعادة تعيين معرّف المستخدم/العملية (UID/PID remapping) وهو نمط مميّز لأطر التشغيل الافتراضي (VirtualApp).
   - `DaemonService` / `SystemCallProvider` — استمرارية العملية واعتراض نداءات النظام.

---

## 3. الشبكة والخدمات الخلفية (Backend)

| الرابط | الغرض المرجّح |
|--------|----------------|
| `https://rest.snakeseller.com/api/request/` | الـ API الخلفي الأساسي |
| `https://www.snakeengine.com/topup/` | صفحة الشحن/الشراء |
| `https://play.google.com/store/apps/details` | فتح صفحة المتجر |
| `https://apkpure.com/search` | البحث عن حزم خارجية |
| `https://flagsapi.com/` | أعلام الدول (واجهة المستخدم) |
| `t.me`, `wa.me`, `discord.com/invite`, `facebook.com`, `imgur.com` | روابط اجتماعية/مشاركة |

---

## 4. الأدوات المستخدمة في التفكيك

| الأداة | الإصدار | الغرض |
|--------|---------|-------|
| **jadx** | 1.5.1 | تفكيك `classes.dex` إلى كود Java قابل للقراءة |
| **apktool** | 2.10.0 | فكّ الموارد + `AndroidManifest.xml` + smali |
| **Blutter** | (بُني من المصدر) | عكس هندسة `libapp.so` (كود Dart AOT) — تم تجميع Dart VM 3.5.4 خصيصًا |
| gcc 14 / capstone / icu | - | تبعيات بناء Blutter |

---

## 5. محتويات هذا المجلد

```
decompiled/
├── REPORT.md                  ← هذا التقرير
├── AndroidManifest.xml        ← المانيفست الكامل (بعد فكّ التشفير)
├── apktool.yml                ← بيانات البناء (الإصدارات، SDK)
├── java-jadx/                 ← الكود المصدري بلغة Java (مفكّك من DEX)
│   ├── com/snake/             ← كود التطبيق (الحاوية + جسر JNI)
│   ├── com/google/            ← Firebase / GMS / Material
│   └── io/flutter/            ← غلاف Flutter
├── dart-blutter/              ← تحليل كود Dart (منطق التطبيق الفعلي)
│   ├── asm/                   ← 670 ملف بصيغة .dart (شبه-مصدر + Assembly لكل دالة)
│   ├── pp.txt                 ← Object Pool (كل الثوابت والسلاسل النصية)
│   ├── objs.txt               ← الكائنات المُهيّأة مسبقًا
│   ├── blutter_frida.js       ← سكربت Frida للتتبّع الديناميكي وقت التشغيل
│   └── ida_script/            ← سكربتات IDA Pro لإعادة تسمية الرموز
├── smali/                     ← تجميعة Smali الكاملة (Dalvik bytecode)
├── resources/res/             ← موارد التطبيق (layouts, values, drawables ...)
├── assets/flutter_assets/     ← أصول Flutter (خطوط، SVG، مانيفست الأصول)
└── native-libs/
    ├── native-libs-analysis.txt  ← بصمات + رموز المكتبات الأصلية الثلاث
    └── blutter-run.log
```

---

## 6. قيود مهمة (Limitations)

1. **التشويش (Obfuscation):** بُني التطبيق باستخدام `--obfuscate` في Dart، لذلك:
   - أسماء المكتبات/الفئات/الدوال/الحقول مُستبدلة بأحرف عشوائية قصيرة (`aag`, `abg`, `Pmg` ...).
   - **لا يمكن استرجاع الأسماء الأصلية**، لكن تم استرجاع: التدفّق المنطقي الكامل، كل السلاسل النصية، والثوابت، وتسلسل استدعاء الدوال.
   - في كود Java كذلك تم إخفاء الفئات الحقيقية داخل حزمة مموّهة (`androidx.appcompat.view.menu`).
2. **`libengine.so` محمي:** مجرّد من الرموز (Stripped) ويستخدم تسجيل JNI ديناميكي (`JNI_OnLoad` فقط)، ويحمّل الرموز بشكل غير مباشر عبر `libdl`. تحليله الكامل يتطلب هندسة عكسية يدوية عميقة (IDA/Ghidra + Frida).
3. ملفات `.so` الأصلية مرفوعة في `raw/lib/arm64-v8a/` (libapp.so, libengine.so, libflutter.so)، وبصماتها في `native-libs/`.

---

## 7. الخطوات الديناميكية المقترحة (اختياري)

- استخدام `dart-blutter/blutter_frida.js` مع Frida على جهاز/محاكي arm64 لتتبّع نداءات دوال Dart وقت التشغيل وكشف السلوك الفعلي رغم التشويش.
- تحميل `libengine.so` في Ghidra/IDA وربطه بسكربتات `ida_script/` لكشف منطق الحاوية الأصلية.
