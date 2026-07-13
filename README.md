# Snake Engine — Reverse Analysis

تحليل مسار التفعيل في تطبيق `com.snake.helper` (Flutter) ومكتبته الأصلية `libengine.so`.

---

## ابدأ من هنا (ترتيب القراءة)

| الترتيب | الملف | الغرض |
|---------|-------|-------|
| 1️⃣ | **[STATE.md](STATE.md)** | **نقطة البداية.** الحالة الحالية: ما تم، ما تبقى، أين يُكمل، العناوين المرجعية، نسب الإنجاز. |
| 2️⃣ | [COMPREHENSIVE_TEST_SUMMARY.md](COMPREHENSIVE_TEST_SUMMARY.md) | ملخص الاختبارات السبعة والنتائج المُثبتة + جدول التقدم. |
| 3️⃣ | [DECISION_LOCATION_EVIDENCE.md](DECISION_LOCATION_EVIDENCE.md) | التقرير التفصيلي الكامل (v1–v10) بكل الأدلة والتصحيحات. |

> **للمراجع الجديد:** اقرأ `STATE.md` أولاً. يكفي لمعرفة أين وصل التحليل ومن أين تكمل دون تكرار ما أُنجز.

---

## المستندات حسب الغرض

### الحالة والنتائج (المرجع الأساسي)
- `STATE.md` — تتبّع الحالة (مكتمل / ناقص / نقاط الاستئناف)
- `COMPREHENSIVE_TEST_SUMMARY.md` — ملخص الاختبارات
- `DECISION_LOCATION_EVIDENCE.md` — التقرير الكامل مع الأدلة

### خطط المرحلة الثانية
- `PHASE_2_STRATEGY.md` — الاستراتيجية العامة
- `phase2_execution_plan.md` — خطة التنفيذ (تحليل ديناميكي)
- `phase2_immediate_start.md` — أدوات البدء الفوري
- `IMMEDIATE_ACTIONS.md` / `START_EXECUTION_PLAN.md` — إجراءات أولية

---

## الأدوات

### `phase2/` — أدوات المرحلة الثانية
```
phase2/
├── analysis/   sha256_deep_analyzer.py     تحليل SHA-256 في binary
├── keys/       key_generator_v1.py         مولّد مفاتيح اختبار
├── bypass/     anti_tamper_bypass_v1.js    سكربت Frida
│               patch_generator_v1.py       مولّد patches
└── tools/      نسخة من كل أدوات المرحلة الأولى
```

### الجذر — أدوات المرحلة الأولى (Frida agents + runners)
- `agent_*.js` — سكربتات Frida (net_capture, jnitable, worker_stalk, memscan, ilil_hook, bss_dump…)
- `run_*.py` — مشغّلات Python المقابلة
- `*.png` — لقطات شاشة الاختبارات

---

## الخلاصة التقنية السريعة

```
مسار التفعيل:
Flutter (Dart) ──MethodChannel "A"──► Java (JNI, 10 methods) ──► libengine.so
                                                                     │
                          ┌──────────────────────────────────────────┤
                          ▼                                          ▼
                   GATE 1 (محلي)                            GATE 2 (خادم)
              يرفض المفاتيح المشوهة              rest.snakeseller.com/api/request/
              بدون اتصال شبكي                    للمفاتيح صحيحة الشكل فقط
```

**مُثبت:** البنية، جدول JNI، البوابة المحلية، endpoint الخادم، سلسلة worker، طبقات الحماية.
**ناقص:** العنوان الدقيق لتعليمة الرفض، مدخل SHA-256 الحقيقي، مخطط طلب/رد GATE 2.

التفاصيل الكاملة في `STATE.md`.
