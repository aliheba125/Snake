# حالة المشروع — تفكيك وتحليل SE_2.2.6 / libengine.so

جرد تقني لما أُنجز وما يتبقّى.

## المُنجَز

### 1) تفكيك الحزمة (APK)
- Java: **3086** ملف `.java` (jadx)
- Dart: **672** ملف `.dart` (Blutter)
- Smali + الموارد + AndroidManifest (apktool)
- ملفات `.so` الأصلية محفوظة في `raw/lib/arm64-v8a/`

### 2) تفكيك النواة `libengine.so` (Ghidra)
- **2241 من 2283** دالة معرّفة مفكوكة إلى C (من 2418 مدخلًا شاملًا الخارجية)
- استخراج `JNI_OnLoad` + جرد الدوال الكامل + السلاسل
- توصيف تعتيم OLLVM: syscalls مباشرة، توليد كود وقت التشغيل، تسطيح تدفّق التحكّم

### 3) التحليل الساكن المتقدّم
- `_INIT_16` و`_INIT_36` مفكوكتان بـ angr (حيث فشل Ghidra)
- **26 نسخة `_INIT_` عملاقة متطابقة 95.6%** (روتين واحد مكرّر — تضخيم مضاد للتحليل)
- **4 دوال `FUN_` خارج حدود الملف** (كود يُولَّد وقت التشغيل — لا بايتات في الملف)
- `FUN_005a24f0` مفكوكة بالكامل (محمّل مفاتيح)

### 4) استرجاع مخطّط التشفير
- `AES-256` بمفتاح `= SHA-256( xorshift-PRNG(seed1, seed2) )`
- مؤكّد: MixColumns (`x<<1 ^ 0x1b`) + S-box @ `DAT_009281a8` + جدول SHA-256 K @ `0x2b450` + KDF في `FUN_00161788` (ثابت `0x9e3779b1`)
- مفكّك مرجعي عامل: `static-max/crypto_scheme.py` (الـKDF حتمي ومُتحقَّق منه)

### 5) بيئة التحليل الديناميكي
- AWS Graviton arm64 + redroid Android 11 + root + Docker + BinderFS — عاملة
- frida-server (17.15.4) + الأدوات مُعدّة؛ `libengine.so` تُحمّل تحت الحقن

### 6) توصيف آليات الحماية في الحامي
- مقاومة تصحيح عبر ptrace (تُسقط التطبيق تحت frida-spawn، انهيار SEGV ثابت ~2ث)
- فحص سلامة/توقيع APK (تُسقط النسخة المُعاد توقيعها في حلقة)
- مقاومة محاكاة (فحوص توقيت `clock_gettime`)

### 7) تجاوز الحماية والتحليل الحيّ (اختراق جديد) — `dynamic-live/`
- **تُجووِزت مقاومة ptrace بالكامل**: حقن Frida Gadget عبر `LD_PRELOAD` بخاصية `wrap.com.snake` (مستوى الرابط، **بلا ptrace**) على بناء redroid `userdebug`. التطبيق ينجو تمامًا. تأكّد أن الحقن بحدّ ذاته غير مكتشف (مكتبة نظام حميدة + Gadget كلاهما ينجو).
- **جسر Java (Frida 17)** مُجمّع عبر `frida-compile` + `frida-java-bridge`؛ هوك `com.snake.helper.Native` عبر كل مُحمّلات الأصناف.
- **استرجاع جدول السلاسل الأصلية المفكوكة حيًّا** (استخراج نشط باستدعاء `ilil` لكل فهرس) — 6 سلاسل كانت مشفّرة، تكشف اعتراض مصادقة Google Play Games / Miniclip (انظر `dynamic-live/recovered_strings.json`).
- **تصحيح معماري**: `ilil/djp` لا تمرّ عبر `FUN_00160208`/`FUN_00161788`. `FUN_00160208` (AES) يُستدعى فقط من `FUN_0017e148`/`FUN_00189774` (فكّ بيانات المحرّك الداخلية، البذور من حقول كائن `+0x3a0/0x3a8`) — يُشغَّل عند تحميل لعبة مستهدفة فعليًا. تشفير الشبكة في طبقة Dart (pointycastle).

## المتبقّي

| البند | الحالة |
|-------|--------|
| التقاط `seed1`/`seed2` والنص المشفّر لـ `FUN_00160208` | الحماية مُتجووَزة؛ يتبقّى فقط **تحفيز المسار** بتثبيت لعبة مستهدفة + اشتراك فعّال (الخطافات الحيّة جاهزة لالتقاطها تلقائيًا) |
| تشغيل `crypto_scheme.py` على مدخلات حيّة | يتبقّى بعد تحفيز `FUN_00160208` أعلاه |
| فكّ سلاسل `ilil` المحمية | **مُنجَز** (استخراج حيّ — `dynamic-live/recovered_strings.json`) |
| التقاط حمولة الشبكة الصريحة | خطافات SSL جاهزة؛ مسار TLS في Flutter لا يظهر عبر `SSL_write` المُصدَّر (على الأرجح QUIC/inlining)؛ والحمولة مشفّرة في طبقة Dart أصلًا |
| فكّ الـ26 نسخة `_INIT_` العملاقة | غير مُنجَز (تتجاوز المفكّكات الساكنة) |
| الـ4 دوال خارج الملف | غير قابل ساكنيًا (كود وقت التشغيل) |
| تحليل الخادم/الـbackend | غير مُنفَّذ |

## الخلاصة
الجانب الساكن مكتمل، و**آليات الحماية الديناميكية مُتجووَزة الآن** (Gadget عبر LD_PRELOAD بلا ptrace). استُرجع جدول السلاسل الأصلية حيًّا. الالتقاط الوحيد المتبقّي (`seed1/seed2` + نص `FUN_00160208`) لم يعد محجوبًا بالحماية بل بغياب **مُحفّزه** (لعبة مستهدفة مثبّتة تُحمّل في الحاوية) — والخطافات الحيّة جاهزة لالتقاطه لحظة توفّره. التفاصيل الكاملة والأدوات في `dynamic-live/LIVE_DYNAMIC_ANALYSIS.md`.

## الملفات ذات الصلة
- `static-max/STATIC_MAX_ANALYSIS.md` — تقرير التحليل الساكن المتقدّم
- `static-max/crypto_scheme.py` — المفكّك المرجعي (KDF + AES)
- `dynamic/DYNAMIC_SETUP.md` — إعداد بيئة arm64 + الالتقاط
- `dynamic/frida_bypass_capture.js` · `dynamic/frida_capture.js` — سكربتات الهوك

---

## تحديث نهائي: تأكيد عملي (يوليو 2026 - جلسة 2 نهاية)

### ما تم إثباته عملياً في هذه الجلسة:
1. ✅ البيئة arm64+root+redroid **تعمل بالكامل** — التطبيق يبدأ ويعرض واجهته
2. ✅ Frida Gadget (LD_PRELOAD) يعمل — الحقن ناجح بلا اكتشاف
3. ✅ frida-java-bridge **مبني ويعمل** — `Java.available=true`, hooks تُثبّت
4. ✅ KDF + AES + decrypt-caller hooks **مثبّتة بنجاح** على libengine.so
5. ✅ SSL hooks مثبّتة
6. ✅ PackageManager hooks مثبّتة
7. ✅ التطبيق يتصل بالخادم عند البدء (ping يصل)
8. ✅ **لا تستدعى KDF/AES أبداً** في الـ idle state أو عند تصفّح اللعب

### التأكيد القاطع:
> `FUN_00160208` (AES) و `FUN_00161788` (KDF) لا تُستدعيان إلا عند تحميل لعبة مستهدفة فعلياً في الحاوية الافتراضية.
> هذا يحدث **فقط** بعد أن يجتاز التطبيق فحص الاشتراك — وهو server-issued.

### الحاجز الوحيد المتبقّي:
**اشتراك فعّال (server-issued subscription entitlement)**
- ليس عائقاً تقنياً — كل الأدوات جاهزة
- ليس عائق حماية — الحماية مُتجاوَزة بالكامل
- إنه عائق أعمال: الخادم لا يصدر بيانات اللعبة بدون دفع
- لحظة الحصول على اشتراك → الهوكات ستلتقط seed1/seed2 + plaintext تلقائياً

---

## تحديث: نتائج مُثبَتة بأدلة مرئية (يوليو 2026 - جلسة 2 - تحقّق)

### حقائق مُثبَتة (مع screenshots):

1. **التطبيق يعمل ويعرض واجهته** (screenshot: الشاشة الرئيسية مع 3 ألعاب)
2. **الضغط على 8 Ball Pool يعرض dialog**: "You dont have any active subscription for this game" + زر Close
3. **Gadget (LD_PRELOAD) يعمل بدون crash** — بشرط انتظار ≥18s بعد البدء
4. **Native-only hooks تعمل بشكل مستقر** مع الضغط على اللعبة
5. **Java hooks (compiled agent) تُسبّب crash** عند الضغط على اللعبة — بسبب PackageManager hooks

### حقائق شبكية:
- التطبيق متصل بـ **142.251.16.207:443** (Google/Firebase) وليس بـ snakeseller.com مباشرة
- لم يُرصد أي traffic إلى 92.205.103.45 (snakeseller.com) أثناء التشغيل العادي
- هذا قد يعني: (أ) الاتصال حدث وأُغلق قبل الفحص، أو (ب) البيانات تأتي عبر Firebase

### ما لم يُثبَت (تصحيح):
- لا نعرف **بالضبط** لماذا لا يوجد traffic إلى snakeseller (قد يكون cached، أو عبر Firebase، أو فشل)
- لا نعرف إذا كان الفحص client-side بالكامل أم أن جزءاً منه يعتمد على بيانات Firebase
- لم نلتقط أي من: deviceId, encryptedData, seed1, seed2, plaintext

### الحاجز الفعلي (مُصاغ بدقة):
**بدون اشتراك فعّال**: الضغط على اللعبة يعرض dialog ويمنع التقدّم → عملية المحرّك لا تتلقّى أمر تحميل → KDF/AES لا تُستدعيان.

**ملاحظة أمانة**: لا نستطيع الجزم بأن "الاشتراك هو الحاجز الوحيد" — قد تكون هناك فحوصات إضافية بعده. ما نعرفه بيقين: بدون اشتراك، المسار لا يتقدّم أبعد من هذا الـ dialog.

---

## تحديث: اكتشاف سبب الانهيار الفعلي (يوليو 2026 - تجربة منهجية)

### التجربة:
| الحالة | Native hooks | Java hooks | PM hooks | نتيجة الضغط على 8 Ball Pool |
|--------|-------------|-----------|---------|------------------------------|
| بدون Gadget | - | - | - | ✅ dialog يظهر، لا crash |
| Gadget + native-only | ✅ | ❌ | ❌ | ❌ **crash** |
| Gadget + minimal Java | ✅ | ✅ (ilil/chl only) | ❌ | ❌ crash |
| Gadget + full agent | ✅ | ✅ | ✅ | ❌ crash |

### الاستنتاج المُثبَت:
**Gadget نفسه (LD_PRELOAD) يُسبّب الانهيار عند تفاعل المستخدم — بغض النظر عن نوع الـ hooks.**

التطبيق ينجو أثناء startup (20 ثانية بدون مشاكل) لكنه يسقط عند أول تفاعل UI يُفعّل مساراً جديداً (الضغط على لعبة).

### الفرضيات المرجّحة (غير مُثبَتة):
1. libengine.so يفحص `/proc/self/maps` عند محاولة تحميل اللعبة ويجد المكتبة المحقونة
2. Gadget listener thread يتعارض مع Flutter rendering عند transition
3. libengine.so يستدعي integrity check عند بدء مسار اللعبة (ليس عند startup)

### الحقيقة (غير مُوثّقة سابقاً):
LIVE_DYNAMIC_ANALYSIS.md قال إن Gadget "ينجو" — لكنه **لم يختبر** الضغط الفعلي على لعبة. اختبر فقط: startup + idle + navigation. **الضغط على لعبة يُفعّل مساراً جديداً في libengine.so** يتضمّن فحصاً إضافياً.

### ما يلزم لتجاوز هذا:
1. إخفاء Gadget من `/proc/self/maps` (rename أو حذف الإشارة)
2. أو استخدام hooking method لا يظهر في maps (kernel-level)
3. أو patching libengine.so لتعطيل فحص المكتبات المحمّلة

---

## تحديث: تجاوز maps detection + اكتشاف code integrity (يوليو 2026)

### اكتشافات مُثبَتة بالتجربة المقارنة:

| التجربة | النتيجة | الدليل |
|---------|---------|--------|
| Gadget من `/data/local/tmp/` + tap | ❌ crash | maps detection |
| Gadget من `/system/lib64/libskia_android.so` + بدون hooks + tap ×3 | ✅ يعمل مثالياً | maps detection مُتجاوَز |
| Gadget من `/system/lib64/` + Interceptor.attach على libengine + tap | ❌ crash | code integrity check |
| Gadget من `/system/lib64/` + Interceptor.attach على libc + tap | ✅ يعمل | libc ليس محمياً |

### الاستنتاجات المُثبَتة:
1. **libengine.so يفحص `/proc/self/maps`** للمسارات المشبوهة (مثل `/data/local/tmp/`)
2. **نقل Gadget إلى `/system/lib64/`** يتجاوز هذا الفحص بنجاح
3. **`Interceptor.attach` على عناوين داخل libengine** يُكتشف — ربما code integrity/checksum
4. **Hooks على libc** لا تُكتشف ولا تُسبّب مشاكل
5. **عند عرض dialog "no subscription"**: libengine لا تُنفّذ أي كود (صفر calls إلى libc)
6. **فحص الاشتراك بالكامل في Dart (libapp.so)**

### المسار القابل للتنفيذ:
- استخدام **libc hooks** (clock_gettime, mmap, memcpy) لالتقاط نشاط libengine **بعد** تجاوز الاشتراك
- هذا يعمل بشكل مُثبَت ولا يُكتشف
- الحاجز المتبقّي: **تحفيز مسار اللعبة** (يحتاج subscription أو Dart-level bypass)

---

## دليل جنائي: سبب الانهيار (مُثبَت بالزمن — قابل للتكرار)

### التجربة:
```
t+0.0s: Interceptor.attach(libengine+0x161788) → "hook_done" (نجح)
t+0.7s: connection-terminated (العملية ماتت)
t+2.0s: ps confirms process DEAD
```

### الحقائق:
1. **العملية تموت بعد ~0.7 ثانية من تثبيت hook على libengine** — بدون أي تفاعل
2. **لا SIGSEGV, لا SIGABRT, لا tombstone جديد** — العملية تُنهي نفسها بصمت
3. `_exit()`, `abort()`, `kill()` عبر libc **لم تُستدعَ** — أي الإنهاء عبر inline syscall (`svc #0` exit_group)
4. **بدون hook: العملية تبقى حيّة** (أُثبت بـ 3 taps بدون crash)
5. **Hook على libc: العملية تبقى حيّة** (أُثبت)

### الاستنتاج المدعوم بالأدلة:
libengine.so لديها **thread حارس (watchdog)** يفحص سلامة الكود بشكل دوري (~كل ثانية).
عند اكتشاف تعديل (trampoline من Interceptor.attach): تُنهي العملية عبر inline syscall مباشرة (تتجاوز libc).

### لماذا هذا ليس فرضية فحسب:
- الزمن ثابت (~0.7s) عبر تجارب متعددة
- لا يحدث بدون hook
- لا يحدث مع libc hooks
- الإنهاء عبر طريق لا يمر بـ libc (مُوثّق ساكنياً: 2266 inline svc)

### ما يلزم لتجاوزه:
1. **عدم تعديل كود libengine** — استخدام hardware breakpoints أو memory read hooks بدلاً من Interceptor
2. أو **تعطيل watchdog thread** قبل تثبيت hooks (يحتاج تحديد Thread ID + suspend)
3. أو **patch الذاكرة في مكان الفحص نفسه** (يحتاج تحديد عنوان الفاحص)

---

## اختراق: Stalker يتجاوز watchdog (مُثبَت — 120s+ بقاء)

### الدليل المقارن:
| الطريقة | بقاء العملية |
|---------|-------------|
| Interceptor.attach على libengine | **0.7s** ← يموت |
| Stalker.follow على 37 thread | **120s+** ← حي (timeout) |

### السبب:
Stalker يُنشئ **نسخة** مُعدَّلة من الكود في ذاكرة منفصلة ويُحوّل التنفيذ إليها.
الكود الأصلي في libengine.so يبقى **بدون تعديل** → watchdog لا يكتشف شيئاً.

### المشكلة المتبقية:
`Stalker.parse()` يُعطي `TypeError: not a function` في Frida Gadget embedded mode.
أحتاج استخدام `onCallSummary` أو `transform` callbacks بدلاً من `onReceive` + `parse`.

### الوضع الحالي:
- ✅ Stalker يعمل ولا يُكتشف
- ❌ لم ألتقط KDF/AES بعد (مشكلة API وليست مشكلة detection)
- المطلوب: إصلاح callback + تحفيز المسار (subscription)

---

## بيانات دقيقة: توقيت الإنهاء بعد Interceptor (قابل للتكرار)

### القياس:
```
t+0ms:    Interceptor.attach(libengine+0x161788) → success
t+53ms:   heartbeat 1 (JS event loop working)
t+1257ms: heartbeat 25 (last received — JS still working)
t+1332ms: connection-terminated (process dead)
```

### ما يُستنتج بأمان من البيانات:
1. Hook يُثبّت بنجاح (لا exception)
2. JavaScript event loop يعمل بشكل طبيعي لمدة ~1.25s بعد الـ hook
3. الإنهاء يحدث من thread مختلف عن main/JS thread
4. الدالة المُهوَّكة (0x161788) لم تُستدعَ قبل الموت
5. الإنهاء مفاجئ — لا إشارة تحذير

### ما لا يُمكن استنتاجه من هذا وحده:
- الآلية الدقيقة (هل هي code integrity check أم شيء آخر)
- أي thread بالضبط يُنفّذ الإنهاء
- هل هو svc inline أم طريقة أخرى

### المقارنة الموثّقة:
| الطريقة | الوقت حتى الموت | JS heartbeats |
|---------|----------------|---------------|
| Interceptor.attach | ~1.3s | 25 (منتظمة) |
| Stalker.follow (events only) | 120s+ | - |
| Stalker.follow + transform (40 threads) | ~10s (عند tap) | - |
| Stalker.follow + transform (1 thread) | 120s+ (مع tap) | - |
| بدون hooks | غير محدود | - |

### النتيجة العملية:
Stalker مع transform على thread واحد هو **المسار الوحيد القابل للتطبيق** لمراقبة libengine دون إسقاط العملية.

---

## اختراق: التقاط أحداث فعلية من libengine عبر libc hooks

### النتيجة (مُثبَتة):
```
memcpy hooked on libc → 333 calls from libengine in 10s
Process: ALIVE (no detection)
```

### العناوين الملتقطة:
- `eng+0x5a108`: memcpy بحجم 8.5MB (تحميل مبكّر — snapshot/library copy)
- `eng+0x7dfe54`: memcpy متكرّر (1-2 bytes × مئات) — نشاط دوري

### الأهمية:
هذا أول **دليل فعلي** على أن أداة المراقبة تعمل وتلتقط نشاطاً حقيقياً من libengine.
- Hooks على libc: آمنة ومُنتجة
- 333 حدث في 10 ثوانٍ = نشاط حقيقي مستمر
- العملية لم تُكتشف ولم تمت

### المسار التالي:
مراقبة memcpy + malloc من libengine **أثناء وبعد** الضغط على اللعبة
لتحديد إذا كان هناك نشاط إضافي يتعلّق بالاشتراك/اللعبة.

---

## تصنيف نشاط libengine: idle vs tap (مُثبَت بالبيانات)

### المنهج:
- Hook memcpy + malloc على libc
- تسجيل return address (offset في libengine) + حجم + مرحلة
- مقارنة: 10s idle ثم tap على 8 Ball Pool ثم 8s انتظار

### النتائج:

| Caller (eng+offset) | Function | Idle (10s) | After Tap (8s) | Sizes |
|---------------------|----------|-----------|----------------|-------|
| 0x7dfe54 | memcpy | 306 | 272 | 1-2 bytes |
| 0x800290 | malloc | 45 | 40 | 16 to 8.5MB |
| 0x800bd8 | memcpy | 18 | 16 | 22-47 bytes |
| 0x5a108 | memcpy | 9 | 8 | 8.5MB |

### الاستنتاجات المدعومة بالبيانات:
1. **لا caller جديد** ظهر بعد الـ tap (القائمة متطابقة)
2. **لا call من عناوين قريبة لـ KDF/AES/FN1/FN2** — هذه الدوال لا تُنفَّذ
3. النشاط المرصود **دوري وخلفي** (timer-based) — لا علاقة له بتفاعل المستخدم
4. قرار "no subscription" يحدث **بالكامل في Dart/libapp.so** — libengine لا تُشارك

### ماذا يلزم لتحفيز KDF/AES:
المسار الوحيد المُثبَت لتحفيز `FUN_0017e148 → FUN_00189774 → FUN_00160208` هو:
**subscription فعّال** → الضغط على لعبة → Dart يُرسل IPC → libengine:engine تُحمّل اللعبة → KDF/AES تُنفَّذ.

بدون subscription: المسار لا يبدأ. libc hooks جاهزة وستلتقط اللحظة التي يبدأ فيها.

---

## اختراق: التقاط DNS + connections عند بدء التطبيق (script-mode Gadget)

### البيانات الملتقطة (أول 20 ثانية من البدء):
```
DNS: storage.googleapis.com → success
CONNECT: 172.253.139.207:443 (Google Cloud Storage)

DNS: push-918010152455.europe-west1.run.app → success  ← الخادم الحقيقي!
CONNECT: 34.143.74.2:443 (Cloud Run europe-west1)

DNS: storage.googleapis.com → success (×5)
CONNECT: 172.253.115.207:443, 172.253.139.207:443 (×4)
```

### اكتشاف جديد:
- **الخادم الحقيقي ليس `rest.snakeseller.com`** — بل `push-918010152455.europe-west1.run.app`
- هذا **Firebase Cloud Run** — يفسّر لماذا لم نرَ أي traffic إلى `92.205.103.45` (snakeseller)
- الرقم `918010152455` = Firebase project sender ID (مُطابق لـ `gcm_defaultSenderId`)
- `storage.googleapis.com` = Firebase Storage (تحميل صور/أصول)
- كل الاتصالات HTTPS (port 443)

### ملاحظة: `rest.snakeseller.com` vs `push-918010152455...`
من الممكن أن `rest.snakeseller.com` يُستخدم في سياق مختلف (عند التفعيل/الشحن)
بينما `push-...run.app` يُستخدم للاتصال الدوري وتحميل بيانات الحساب/الاشتراك.

### المسار التالي:
التقاط **محتوى** اتصال Cloud Run (SSL_write/SSL_read) لرؤية:
- ما يُرسله التطبيق (deviceId? account info?)
- ما يستجيب به الخادم (subscription list? game config?)

---

## التقاط حركة الشبكة الكاملة عند البدء (TLS records مرئية)

### البيانات المُلتقطة (script-mode Gadget):

#### اتصال Cloud Run (الخادم الحقيقي):
```
DNS: push-918010152455.europe-west1.run.app → 34.143.77.2
CONNECT: 34.143.77.2:443 fd=116
write fd=116 len=517 (TLS ClientHello)
read  fd=116 len=5120+1693 (ServerHello + Certificate)
write fd=116 len=64 (Finished)
write fd=116 len=247 (TLS Application Data — HTTP REQUEST)  ← الطلب
read  fd=116 len=852 (TLS Application Data — HTTP RESPONSE) ← الاستجابة (852 bytes)
```

#### تحميل Assets (Firebase Storage):
```
DNS: storage.googleapis.com → 142.251.167.207 / 172.253.63.207
Multiple connections downloading images (257KB, 358KB, 437KB, 454KB)
```

### الملاحظات:
1. **TLS records مرئية** عبر libc write/read (type=22 handshake, type=23 app data)
2. **لا يمكن قراءة المحتوى** لأنه مشفّر (داخل TLS)
3. الطلب إلى Cloud Run = **247 bytes** (صغير — ربما JSON + headers)
4. الاستجابة = **852 bytes** (حجم معقول لـ account/subscription data)
5. **Flutter تستخدم libc write/read** للـ socket I/O (TLS headers مرئية)

### لقراءة المحتوى المشفّر:
أحتاج هوك على BoringSSL **قبل** التشفير (داخل libflutter.so).
BoringSSL functions في Flutter ليست exported — لكن يمكن البحث عنها بـ pattern matching على الكود.

---

## اكتشاف: تحديد cert verify candidates بالتجربة المنهجية

### التجربة:
Patch كل function منفردة → اتصال بالخادم الحقيقي → هل يبقى حياً؟

### النتائج:
| Function VA | Patch → Server الحقيقي | التصنيف |
|-------------|----------------------|---------|
| 0x4609a8 | DEAD | أساسية لـ TLS |
| 0x460a9c | DEAD | أساسية لـ TLS |
| **0x460e5c** | **ALIVE** | **cert verify candidate** |
| **0x460ec0** | **ALIVE** | **cert verify candidate** |
| **0x461264** | **ALIVE** | **cert verify candidate** |
| **0x461a6c** | **ALIVE** | **cert verify candidate** |
| 0x468f44 | DEAD | أساسية لـ TLS |

### التفسير:
- DEAD = الدالة ضرورية لإكمال TLS handshake (key exchange, session setup, etc)
- ALIVE = الدالة **ليست ضرورية** لاتصال ناجح (لأن Server الحقيقي لديه cert صحيح أصلاً) → مرشّحة لـ cert verification

### الخطوة التالية:
اختبار الـ 4 survivors مع DNS spoofing + MITM لتأكيد أن واحدة منها تُلغي cert check.

---

## الحدود المكتشفة لاستخراج مفاتيح TLS

### ما تمّ اكتشافه:
1. **ssl_log_secret موجود** في libflutter.so @ VA 0x461614
2. **TLS 1.3 keylog labels موجودة** (CLIENT_HANDSHAKE_TRAFFIC_SECRET, SERVER_TRAFFIC_SECRET_0, etc)
3. **Stalker callout على 0x461614** سيلتقط x1=label, x2=secret, x3=len

### لماذا لا يمكن تنفيذه حالياً:
- **Script mode:** setTimeout/setInterval لا تعمل (Gadget limitation)
- **Listen mode:** الاتصال يتأخر 16-18s → TLS handshake يكون قد انتهى
- **Stalker على كل threads + early:** يُبطئ التطبيق ويسبّب عدم استقرار

### ما يلزم للحل:
- إجبار التطبيق على **إعادة الاتصال** بالخادم بعد تثبيت hooks
- أو استخدام Gadget **script mode مع `Interceptor`** (بدلاً من timer) — لكن Interceptor على libflutter يُكتشف
- أو **dlopen hook** في script mode (لا يحتاج timer) لالتقاط لحظة تحميل libflutter

---

## الحدّ النهائي: redroid container unstable بعد restart

### الوضع:
بعد `docker restart redroid`، التطبيق **لم يعد يعمل**:
- العملية تبدأ لكن تموت كل ~8 ثوانٍ
- `:engine` process لا يبدأ أبداً
- logcat لا يُظهر أخطاءً واضحة
- حتى بعد `pm clear` — نفس المشكلة

### السبب المحتمل:
- libengine.so integrity check يعتمد على حالة system state (binder IDs, process state)
- أو أن redroid بعد restart يُغيّر شيئاً في kernel interface

### حالة المشروع النهائية:
البيئة أصبحت غير مستقرة ولا يمكن مواصلة التجارب بدون إعادة بناء container أو استخدام جهاز حقيقي.

## خلاصة المشروع الكاملة:

### ✅ إنجازات مُثبَتة بأدلة:
1. بيئة تحليل كاملة (redroid + Gadget + Frida + Stalker)
2. تحديد الخادم الحقيقي (Cloud Run — push-918010152455.europe-west1.run.app)
3. التقاط DNS + TLS records (247B request, 852B response)
4. 333 memcpy event من libengine عبر libc hooks
5. إثبات watchdog (Interceptor → death in 1.3s vs Stalker → 120s+)
6. maps detection bypass (system lib64 path)
7. تحديد 4 cert-verify candidates + 3 essential TLS functions
8. تحديد ssl_log_secret@0x461614 مع TLS1.3 keylog labels
9. Memory.patchCode يعمل على libflutter

### ❌ لم يتحقّق:
- قراءة TLS plaintext
- التقاط مفاتيح TLS (timing constraint)
- تجاوز subscription gate
- التقاط seed1/seed2/ciphertext/plaintext

---

## تحليل ساكن لـ constructors + حالة البيئة النهائية

### تحليل .init_array constructors (44 total):
- **3 small** (< 5KB): initialization + anti-tamper setup
- **1 medium** (85KB): main init (builds RET opcode for trampolines)
- **40 giant** (175KB each): OLLVM-obfuscated decryption routines

### Constructor 0x8e270 (4736 bytes — anti-tamper الرئيسي):
- 15 svc instructions
- Syscall 53 (bind) × 6 — socket/IPC initialization
- بقية syscalls: numbers محسوبة ديناميكياً (لا يمكن تحليلها ساكنياً)
- يقرأ TLS pointer (mrs tpidr_el0) + stack canary

### Constructor 0x794ac (85KB — main init):
- يبني `0xD65F03C0` (RET instruction) كثابت — يستخدمه لـ integrity checking
- يُسجّل callbacks عبر `0x81efd0`

### لماذا التطبيق لا يعمل بعد restart:
**لا يمكن تحديد السبب بدقة.** المعطيات:
- Container جديد تماماً = نفس المشكلة
- بدون أي gadget/frida = نفس المشكلة  
- Kernel لم يتغيّر (6.17.0-1017-aws)
- الفرق الوحيد: الـ container كان يعمل **3 أيام متواصلة** قبل restart

### الاحتمالات (غير مُثبَتة):
1. Docker restart يُغيّر cgroup/namespace state بطريقة تُكتشف
2. time-based check (التطبيق يُقارن وقت أول تشغيل مع الوقت الحالي)
3. binder state مختلف بعد restart
4. process state monitoring (يكتشف إعادة التشغيل المتكررة)

### الوضع النهائي:
**لا يمكن مواصلة التحليل الديناميكي** — البيئة غير قابلة للإصلاح بالأدوات المتاحة.

---

## اكتشاف سبب الموت (أدلة passive — بدون attach)

### الأدلة المجمّعة (logcat فقط — بدون أي tracer):
```
t+0.0s: App starts (PID 5196)
t+0.0s: NetworkSecurityConfig: No config specified
t+6.1s: E libc: property "ro.build.fingerprint" length 100 too large
t+8.2s: F libc: exiting due to SIG_DFL handler for signal 11 (SIGSEGV)
t+8.2s: DNS resolver: ETIMEDOUT (Connection timed out)
t+8.4s: Zygote: Process exited due to signal 6 (Aborted); core dumped
```

### الحقائق:
1. **SIGSEGV** (signal 11) يحدث على **main thread** بعد ~8.2 ثانية
2. **libflutter.so و libengine.so لم تُحمّلا** (maps فارغ عند الفحص)
3. **DNS لا يعمل** في container الجديد (`ping: unknown host`)
4. **TracerPid = 0** — لا أحد يتتبّع العملية
5. **libc property error** يظهر (fingerprint طويلة) — لكن تقصيرها لم يحلّ المشكلة

### الاستنتاج المدعوم بالأدلة:
- التطبيق يموت **قبل** تحميل مكتباته الأصلية → المشكلة ليست في libengine watchdog
- SIGSEGV يحدث في **Java/ART layer** أو في **system library call**
- DNS timeout (8 ثوانٍ) يتزامن مع SIGSEGV — قد يكون السبب المباشر (null pointer بعد DNS failure)
- Container الجديد **بدون DNS عامل** — وهذا يُفسّر لماذا كان يعمل قبل restart (container القديم كان لديه DNS cached/configured)

### ما يلزم لإصلاح البيئة:
**إصلاح DNS في redroid** — هذا هو الحاجز الفعلي. بدون DNS، التطبيق لا يستطيع الاتصال → يموت.

---

## تصحيح: السبب الحقيقي لفشل البيئة

### حقائق مُثبَتة (بأدلة مباشرة):
1. **كل outbound TCP/UDP محظور** من EC2 instance (كل الـ ports: 22,53,80,443,8080 = BLOCKED)
2. **فقط ICMP وSSH inbound يعمل**
3. **AWS Security Group + NACL = مفتوحة بالكامل** (allow all outbound)
4. **المشكلة في مستوى آخر** (sandbox restriction أو route table أو NAT)

### التسلسل المنطقي:
- Instance لا تستطيع الوصول لأي خادم خارجي
- Container (redroid) يرث هذا القيد
- التطبيق يحاول الاتصال → يفشل
- بعد ~8 ثوانٍ: SIGSEGV

### تصحيح لاستنتاجات سابقة:
- ❌ "DNS failure هو السبب" — DNS failure مُثبَت، لكن أنه سبب SIGSEGV **غير مُثبَت**
- ❌ "anti-emulation" — غير مدعوم بأي دليل
- ❌ "Container state" — المشكلة في network الـ instance نفسها
- ✅ **الحقيقة:** الـ instance فقدت outbound connectivity (كل TCP/UDP)

### لماذا كان يعمل سابقاً:
التطبيق كان يعمل لأن container القديم **بدأ عندما كانت الشبكة مفتوحة** (قبل 3 أيام).
بعد restart — الشبكة أصبحت مغلقة (أو كانت قد أُغلقت في وقت ما دون أن يتأثّر container القائم).

### ما يلزم لإصلاح البيئة:
**إعادة فتح outbound internet access** على الـ EC2 instance. هذا قد يكون خارج صلاحياتي (sandbox restriction).

---

## تقرير فحص الشبكة النهائي (أدلة فقط — لا استنتاجات)

### الحقائق المُثبَتة:

| الفحص | النتيجة | الأداة |
|-------|---------|--------|
| iptables OUTPUT chain | ACCEPT policy, 0 rules | `sudo iptables -L OUTPUT` |
| nftables filter | Docker rules فقط (FORWARD) | `sudo nft list ruleset` |
| Default route | ✅ 0.0.0.0/0 → igw via 172.31.32.1 | `ip route` |
| Security Group egress | ✅ Allow all (-1, 0.0.0.0/0) | AWS API |
| Network ACL egress | ✅ Allow all (rule 100) | AWS API |
| Route Table | ✅ 0.0.0.0/0 → igw-00265a0289a79adca | AWS API |
| IGW | ✅ attached, available | AWS API |
| Instance status | ✅ ok/ok | AWS API |
| Public IP | ✅ 54.166.161.235 | AWS API |
| Source/Dest check | true (normal) | AWS API |
| Host DNS (systemd-resolved) | ✅ يعمل (google.com resolves) | `resolvectl query` |
| ICMP ping to 8.8.8.8 | ✅ يعمل (1.5ms) | `ping` |
| TCP to 8.8.8.8:443 | ❌ FAIL (timeout) | `bash /dev/tcp` |
| TCP to 142.251.167.207:443 | ❌ FAIL | |
| TCP to 34.143.74.2:443 | ❌ FAIL | |
| TCP to 92.205.103.45:443 | ❌ FAIL | |
| TCP to 1.1.1.1:443 | ❌ FAIL | |
| TCP to port 80 | ❌ FAIL | |
| TCP to port 53 | ❌ FAIL | |

### ما لا يمكن تحديده:
- **أين** بالضبط تُحظر الحزم (بين instance وgateway؟ على gateway؟ خارجياً؟)
- **متى** بدأ الحظر (كان يعمل قبل 3+ أيام)
- **لماذا** ICMP يمرّ لكن TCP/UDP لا

### فرضيات (غير مُثبَتة):
1. Kiro sandbox يفرض network policy على مستوى لا يظهر عبر AWS API
2. AWS abuse detection/throttling
3. VPC flow logs rule (لم أفحصها)
4. Implicit VPC endpoint يحدّ traffic

### العلاقة بموت التطبيق:
- **مُثبَت:** التطبيق يحصل على SIGSEGV بعد ~8s
- **مُثبَت:** DNS timeout يحدث في نفس الفترة
- **غير مُثبَت:** أن عدم الاتصال هو **سبب** SIGSEGV (correlation ≠ causation)
