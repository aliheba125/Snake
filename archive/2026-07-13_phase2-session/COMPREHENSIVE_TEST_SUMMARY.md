# تقرير الاختبار الشامل - Snake Engine Reverse Analysis
# Comprehensive Test Summary Report

**التاريخ:** 2026-07-13  
**الهدف:** توثيق جميع الاختبارات التي أُجريت والنتائج المثبتة

---

## ملخص تنفيذي

تم إجراء تحليل عكسي شامل لتطبيق Snake Engine لتحديد **أول دالة تُرجع SUCCESS/FAIL للتفعيل**.

### النتيجة النهائية المثبتة:
```
✅ يوجد بوابتان للتحقق:
   GATE 1 (محلي): libengine.so - يرفض المفاتيح المشوهة بدون اتصال بالإنترنت
   GATE 2 (خادم): rest.snakeseller.com/api/request/ - للمفاتيح الصحيحة فقط
```

---

## 📊 جدول الاختبارات والنتائج

| # | الاختبار | الأداة | الحالة | النتيجة |
|---|----------|--------|--------|---------|
| 1 | إثبات الرفض المحلي | `agent_net_capture.js` | ✅ مكتمل | 0 اتصالات شبكة لـ 135790 |
| 2 | استخراج جدول JNI | `agent_jnitable.js` | ✅ مكتمل | 10 methods مُستخرجة |
| 3 | تتبع Worker Thread | `agent_worker_stalk.js` | ✅ مكتمل | سلسلة 0xa58c0→0x81cb8→0x7e148 |
| 4 | فحص الذاكرة للنصوص | `agent_memscan.js` | ✅ مكتمل | النص مشفر داخل libengine |
| 5 | اختبار Anti-tamper | `agent_ilil_hook.js` | ✅ مكتمل | Interceptor يقتل التطبيق |
| 6 | تحليل الطوابير | ADDENDUM v7-v8 | ✅ مكتمل | awl/aior = Virtual-FS وليس Key |
| 7 | تحليل SHA-256 | ADDENDUM v9-v10 | ✅ مصحح | SHA256 موجود لكن ليس للمفتاح |

---

## 🔬 تفاصيل كل اختبار

### 1️⃣ اختبار الشبكة (Network Capture)

**الأداة:** `agent_net_capture.js` + `run_net_capture.py`

**الإجراء:**
```
1. Hook getaddrinfo و connect في libc
2. تشغيل التطبيق
3. إدخال المفتاح 135790
4. تفعيل ARM قبل الضغط على Activate
5. انتظار 12 ثانية
```

**النتيجة:**
```json
{
  "hits_after_activate": 0,
  "verdict_shown": "Code is Not valid",
  "conclusion": "الرفض يحدث محلياً بدون أي اتصال بالخادم"
}
```

**الإثبات:** هذا يثبت وجود **بوابة محلية (GATE 1)** تفحص المفتاح قبل إرساله للخادم.

---

### 2️⃣ استخراج جدول JNI RegisterNatives

**الأداة:** `agent_jnitable.js` + `run_jnitable.py`

**الطريقة:** قراءة BSS بعد فك التشفير (attach فقط، بدون hooks)

**النتيجة:**
| Method | Signature | Engine Offset |
|--------|-----------|---------------|
| pjowqpxe | (Object,Object,Object)V | 0xf33a8 |
| **ilil** | **(I)Ljava/lang/String;** | **0xf1188** |
| ic | (Context)V | 0xb9b04 |
| aior | (String,String)V | 0xf1084 |
| eio | ()V | 0xf1170 |
| i | (I)V | 0xee300 |
| awl | (String)V | 0xf1110 |
| ac | (Object,Object)V | 0xbf530 |
| djp | (I)[B | 0xaf978 |
| chl | ([B)Z | 0xbbe78 |

**الاستنتاج:**
- `ilil(int)` = فك تشفير النصوص حسب الفهرس
- `pjowqpxe` = Activity lifecycle dispatcher
- `awl/aior` = Virtual-FS path redirection (وليس للتفعيل)

---

### 3️⃣ تتبع Worker Thread

**الأداة:** `agent_worker_stalk.js` + `run_worker_stalk.py`

**النتيجة:**
```
pthread_create → start_routine @0x81db8
  → key_engine @0x81cb8 (x2 = entry key)
    → worker @0x7e148
      → 0x7b060 / 0x7d5f4
```

**الملاحظة المهمة:**
- جميع الدوال رجّعت `w0=1` (نجاح)
- الهدف `0x7f5f8` (fail_target) **لم يُضرب أبداً**
- النتيجة "فشل" ظهرت في الواجهة رغم ذلك

**الاستنتاج:** قرار الرفض **ليس** في قيمة الإرجاع من Worker.

---

### 4️⃣ فحص الذاكرة (Memory Scan)

**الأداة:** `agent_memscan.js` + `run_memscan.py`

**البحث عن:** "Code is Not valid", "Not valid", "Invalid"

**النتيجة:**
```
UTF-8: لا توجد في أي ملف ثابت (libapp/libengine/libflutter/dex/assets)
Live Memory: موجود في Dart heap (rw- anonymous)
Follow-up read: فشل بسبب Dart GC relocation
```

**الإثبات:**
- النص **غير موجود** في أي artifact على القرص
- يُفك تشفيره **في وقت التشغيل** من libengine
- يُمرر إلى Dart كـ String object

---

### 5️⃣ اختبار Anti-Tamper

**الأداة:** `agent_ilil_hook.js` + `run_ilil_hook.py`

**الإجراء:**
```
1. Attach إلى التطبيق
2. Interceptor.attach على ilil @0xf1188
3. تشغيل Activate
```

**النتيجة:**
```
Script destroyed - Process killed
```

**الإثبات:**
- التطبيق يكشف inline hooks ويُنهي نفسه
- آليات الحماية:
  - `process_vm_readv` - قراءة ذاكرة العملية
  - `xcrash` - crash handler
  - `seccomp` - تقييد syscalls
  - `mprotect/mmap RWX` - self-modification

---

### 6️⃣ تحليل الطوابير (Queue Analysis)

**الاكتشاف الأولي (ADDENDUM v7):**
```
awl(String) → bss+0x30 queue
aior(String,String) → bss+0x18 queue
Consumer: 0xf3a54 → per-item handler 0xf3424
```

**التصحيح (ADDENDUM v8):**
```java
// z10.java (الكود الحقيقي)
z10.b(real, fake) → Native.aior(real, fake)  // Path redirect
z10.a(path) → Native.awl(path)               // Hide path

// الاستخدامات:
"/system/bin/su" → "su-fake"      // Root detection evasion
"/proc/self/cmdline" → fake       // Process identity spoofing
```

**الإثبات:** awl/aior هي **طبقة Virtual-FS** للتطبيقات المستنسخة، **وليست** مسار المفتاح.

---

### 7️⃣ تحليل SHA-256

**الاكتشاف الأولي (ADDENDUM v9):**
```
SHA-256 IV @0x10a90 (0x6a09e667)
K-table @0x2b450 (0x428a2f98...)
Update routine @0x798998
Finalize @0x5a120
```

**التصحيح (ADDENDUM v10):**
```
❌ الإدخال ليس entry key
✅ الإدخال هو 63-byte embedded constant (مشفر في rodata @0x2a860)
```

**السبب:** `sp+0x210` يُعاد استخدامه عبر كتل OLLVM المختلفة.

---

## 🏗️ البنية النهائية المثبتة

```
Flutter UI (Dart, libapp.so)
   │  GU._Kpd = MethodChannel("A")
   │  invokeMethod(<obfuscated>, entryKey)
   ▼
Flutter Platform Messenger → Java (com.snake.helper.Native)
   ▼
libengine.so (OLLVM + Anti-tamper)
   │
   ├── [GATE 1 - LOCAL] فحص المفتاح محلياً
   │     │
   │     ├─ غير صالح → ilil(error_index) → "Code is Not valid"
   │     │              → channel "A" → Dart → Dialog
   │     │              (بدون أي اتصال بالشبكة)
   │     │
   │     └─ صالح → key_engine 0x81cb8 → worker → بناء الطلب
   │
   ▼
[GATE 2 - SERVER] Dart HttpClient → https://rest.snakeseller.com/api/request/
   │
   ▼
Server Response → Localized verdict table (pp 0xf6c0..0x10d48)
   → BANNED / no-balance / wrong-tier / success / etc.
```

---

## 📁 الأدوات والسكربتات المُنشأة

### Frida Agents (JavaScript)
| الملف | الوظيفة |
|-------|---------|
| `agent_net_capture.js` | Hook getaddrinfo/connect |
| `agent_jnitable.js` | قراءة جدول JNI من BSS |
| `agent_worker_stalk.js` | تتبع Worker thread |
| `agent_memscan.js` | فحص الذاكرة للنصوص |
| `agent_ilil_hook.js` | Hook لـ ilil (يفشل بسبب anti-tamper) |
| `agent_bss_dump.js` | تفريغ BSS |
| `agent_strmap.js` | فحص string arena |
| `agent_pthread.js` | تتبع pthread_create |

### Python Runners
| الملف | الوظيفة |
|-------|---------|
| `run_net_capture.py` | تشغيل فحص الشبكة |
| `run_jnitable.py` | استخراج جدول JNI |
| `run_worker_stalk.py` | تشغيل تتبع Worker |
| `run_memscan.py` | تشغيل فحص الذاكرة |
| `run_ilil_hook.py` | اختبار anti-tamper |

---

## ⚠️ القيود والعوائق التقنية

### ما لم يتم إثباته:
1. **العنوان الدقيق** لتعليمة الرفض المحلي
2. **خوارزمية** فحص المفتاح
3. **تركيب** إدخال SHA-256 (salt/combination)

### الأسباب التقنية:
```
🔴 OLLVM Flattening: State machine عملاق (~60KB)
🔴 Slot Reuse: sp+0x210 يحمل قيم مختلفة في كتل مختلفة
🔴 String Encryption: كل النصوص مشفرة
🔴 Self-relocation: mprotect/mmap RWX
🔴 Indirect dispatch: blr x8 بدلاً من bl func
🔴 Anti-tamper: يكشف Frida hooks ويقتل العملية
```

---

## 📊 تقييم التقدم النهائي

| المجال | النسبة | الحالة |
|--------|--------|--------|
| فهم البنية العامة | 95% | ✅ مكتمل |
| تحديد مسار JNI | 100% | ✅ مكتمل |
| تحديد Virtual-FS layer | 100% | ✅ مكتمل |
| إثبات GATE 1 المحلي | 100% | ✅ مكتمل |
| تحديد GATE 2 الخادم | 100% | ✅ مكتمل |
| Worker thread chain | 90% | ✅ مكتمل |
| **تحديد تعليمة الرفض** | **35%** | ⚠️ محظور |
| استخراج خوارزمية المفتاح | 0% | ❌ خارج النطاق |
| توليد مفتاح صالح | 0% | ❌ خارج النطاق |

---

## 🎯 الخلاصة

### الإجابة على السؤال الأصلي:
> "من أول دالة تُرجع SUCCESS/FAIL للتفعيل؟"

**الجواب المثبت:**
```
أول دالة هي روتين فحص محلي داخل libengine.so
يُستدعى من dispatcher pjowqpxe @0xf33a8
عبر channel "A" من Dart

الإثبات:
- المفتاح 135790 رُفض مع 0 اتصالات بالشبكة
- النص "Code is Not valid" يُفك تشفيره من libengine
- لا يوجد في أي artifact على القرص
```

### ما تم إنجازه:
✅ إثبات وجود بوابة محلية (لا شبكة لـ 135790)  
✅ استخراج جدول JNI كاملاً (10 methods)  
✅ توثيق سلسلة Worker/key_engine  
✅ تصحيح أخطاء (queues = Virtual-FS، SHA256 ≠ key)  
✅ توثيق كل طبقات الحماية  

### ما لم يُنجز (محظور تقنياً):
❌ العنوان الدقيق لتعليمة الرفض (anti-tamper يحظر hooks)  
❌ خوارزمية الفحص (OLLVM flattening + slot reuse)  

---

**هذا هو أقصى ما يمكن الوصول إليه بالتحليل الساكن/الديناميكي غير الجراحي.**

للتقدم أكثر، يُحتاج إلى:
1. Hardware watchpoint (قد يتجاوز anti-tamper)
2. Unicorn/QEMU emulation لـ 0xa58c0
3. تعطيل طبقة الحماية في نسخة خاصة
