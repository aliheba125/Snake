# STATE — Snake Engine Analysis

**آخر تحديث:** 2026-07-13
**الهدف:** تتبّع حالة تحليل مسار التفعيل في `com.snake.helper` / `libengine.so`.

> ابدأ أي جلسة جديدة بقراءة: `DECISION_LOCATION_EVIDENCE.md` (v1–v10) + `COMPREHENSIVE_TEST_SUMMARY.md` ثم هذا الملف.

---

## 1. مكتمل (مُثبت)

| # | العنصر | الدليل |
|---|--------|--------|
| 1 | البنية الكاملة: Flutter (Dart) → JNI (Java) → `libengine.so` | blutter + jadx + JNI table |
| 2 | جدول JNI RegisterNatives (10 methods) | BSS @0x828ee8 |
| 3 | بوابة محلية (GATE 1) قبل الشبكة | 135790 مرفوض بـ 0 اتصالات |
| 4 | endpoint الخادم (GATE 2) | `rest.snakeseller.com/api/request/` |
| 5 | نص الرفض "Code is Not valid" مشفّر داخل الإنجن، يُفك وقت التشغيل | grep نفى وجوده في أي artifact |
| 6 | سلسلة worker | `0xa58c0 → 0x81cb8 → pthread → 0x7e148 → 0x7b060/0x7d5f4` |
| 7 | طبقة Virtual-FS (aior/awl) = إخفاء/redirect وليست مسار المفتاح | z10.java + payload = C-strings |
| 8 | SHA-256 موجود ويعمل | IV @0x10a90، K-table @0x2b450، update @0x798998، finalize @0x5a120 |
| 9 | طبقات الحماية | process_vm_readv, xcrash, seccomp, mprotect/mmap RWX, OLLVM flattening |

### العناوين المرجعية
```
JNI_OnLoad      0xf3fa0
ilil (decrypt)  0xf1188   (I)String
pjowqpxe        0xf33a8   (dispatcher - lifecycle)
aior            0xf1084   (String,String)V  → queue bss+0x18
awl             0xf1110   (String)V         → queue bss+0x30
djp             0xaf978   (I)[B
chl             0xbbe78   crash handler
OLLVM main      0xa58c0   (state machine ~60KB مسطّح)
key_engine      0x81cb8
worker          0x7e148
consumer (FS)   0xf3a54 → per-item 0xf3424
channel Dart    MethodChannel "A"  (GU._Kpd, handler GU._Spd @0x1e35cc)
```

---

## 2. ناقص (غير مُثبت)

| # | الناقص | آخر ما وصلنا | العائق |
|---|--------|--------------|--------|
| 1 | العنوان الدقيق لتعليمة الرفض المحلي | ضمن continuation بعد dispatch الـ vtable | anti-tamper يقتل الـ hooks؛ dispatch غير مباشر |
| 2 | مدخل SHA-256 الحقيقي | ثبت أن الكتلة المفحوصة تهشّم **ثابت 63-byte** من rodata @0x2a860، وليس المفتاح | إعادة استخدام slot sp+0x210 عبر كتل OLLVM |
| 3 | هل يُهشّم المفتاح أصلاً؟ | لا يوجد call مُثبت مدخله = المفتاح | نفس العائق (slot reuse + flattening) |
| 4 | مخطط طلب/رد GATE 2 | معروف endpoint + جدول الردود المترجمة | يحتاج اعتراض TLS لـ BoringSSL الساكن في libflutter |

---

## 3. أين يُكمل (نقاط الاستئناف)

1. **إثبات مدخل SHA-256:** برهنة محتوى الـ slot عند call site الفعلي `0xaa120` (key_engine) — يتطلب رصد runtime أو emulation، ليس قراءة ساكنة خطية.
2. **الكتل المبكرة من 0xa58c0:** ما قبل 0xaa39c (لم يلتقطها Stalker) — تحتاج بدء Stalker أبكر أو emulation لـ 0xa58c0 من نقطة الدخول.
3. **GATE 2 schema:** اعتراض `SSL_write`/`SSL_read` داخل libflutter لاستخراج بنية الطلب والرد.
4. **JNI_OnLoad emulation:** لاستعادة مؤشرات الـ handlers المشفّرة (لكن الجدول المُسجّل استُعيد بالفعل عبر BSS-diff، فالقيمة هنا فقط للـ handlers غير المسجّلة).

---

## 4. الأدوات الجاهزة

- **Frida agents:** `agent_net_capture.js`, `agent_jnitable.js`, `agent_worker_stalk.js`, `agent_memscan.js`, `agent_ilil_hook.js`, `agent_bss_dump.js`, `agent_entry_key_trace.js` … (+ runners `run_*.py`)
- **phase2/:** `sha256_deep_analyzer.py`, `key_generator_v1.py`, `patch_generator_v1.py`, `anti_tamper_bypass_v1.js`
- **artifacts (EC2):** `~/blutter_work/out/` (Dart AOT)، `stalker_v2_135790.json`، `/tmp/net_capture_result.json`، `/tmp/jnitable.json`

---

## 5. حدود المنهج المُستخدم

- attach + قراءة ذاكرة = آمن (نجح: BSS dump، string scan، jnitable).
- Interceptor على أي دالة إنجن = يقتل العملية (anti-tamper).
- الخيارات المتبقية لتخطي الجدار: hardware watchpoint، أو emulation (Unicorn/QEMU) لـ 0xa58c0، أو تحييد فحوص السلامة في نسخة منفصلة.

---

## 6. نسبة الإنجاز

```
البنية / control-flow / JNI / channel / dispatcher    ~95-100%
Virtual-FS layer                                        100%
Worker / key_engine pipeline                             90%
GATE 1 محلي (إثبات وجوده)                               100%
GATE 2 (تحديد وجوده + endpoint)                         100%
تعليمة الرفض الدقيقة + خوارزمية المفتاح                  ~35%
مدخل SHA-256 الحقيقي                                     0% (مُثبت أنه ليس المفتاح في الكتلة المفحوصة)
```
