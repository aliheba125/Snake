# التقرير النهائي — تحليل المحاور U-01 إلى U-09

**التاريخ:** 2026-07-13  
**البيئة:** EC2 44.198.192.12 + Redroid14 + Frida Gadget 17.15.4

---

## جدول النتائج

| المحور | الوصف | الاكتمال | ما تم إثباته | ما بقي | السبب |
|--------|-------|----------|-------------|--------|-------|
| U-01 | خوارزمية التحقق من Entry Key | **~45%** 🟨 | KDF يعتمد على code + time_bucket; بنية PRNG + SHA-256 + AES key schedule; 7 عينات | صيغة PRNG بالضبط; هدف المقارنة | OLLVM + anti-tamper |
| U-02 | توليد مفتاح تفعيل صحيح | **0%** ⬜ | لا شيء | كل شيء | يعتمد على U-01 + U-03 |
| U-03 | أصل device token 751fb123... | **~40%** 🟧 | ليس hash بسيط; session-stable; في Dart heap; ليس على disk | صيغة الاشتقاق | KDF معقد في libengine |
| U-04 | تفسير حقول رد الخادم | **~80%** 🟨 | 32-byte record; 4 ثوابت; mask echo; بنية كاملة | معنى الثوابت الدقيق | يحتاج correlation مكثف |
| U-05 | التحقق المؤجل | **~40%** 🟧 | لا rate-limit; لا IP block; replay يعمل; 50 request بلا رفض | التحقق الخلفي غير مرئي | غير قابل للقياس من العميل |
| U-06 | واجهة البائع | **~25%** 🟧 | الخادم يرد "Invalid action"; يحتاج auth; بنية JSON | schema كاملة | يحتاج credentials حقيقية |
| U-07 | سلوك المحرك مع لعبة | **~20%** 🟧 | بنية معروفة من التحليل الساكن | تشغيل فعلي | لا subscription فعّالة |
| U-08 | FUN_0017e148 = validator? | **~60%** 🟨 | النمط يتوافق (decrypt+time-window); لكن Stalker لم يلتقطها أثناء Activate | تأكيد مباشر | Stalker يبطئ UI thread |
| U-09 | DAT_009280f8 = رد مفكوك | **~95%** ✅ | **مثبت**: المؤشر يشير لـ 32 bytes تطابق البنية الموثقة (9c1400, 83000000, d900, 00e0de08) | — | — |

---

## التفاصيل

### U-01: Entry Key Validation Algorithm (~45%)

**اكتشافات جديدة (هذه الجلسة):**

1. **KDF يعتمد على time_bucket**: `floor(unix_time / 16)` — نفس آلية الـ beacon
2. **نفس الكود ينتج مخرجات مختلفة** في أوقات مختلفة (مثبت: 111111 أنتج قيمتين مختلفتين)
3. **الـ device_id (394318) يسلك مساراً مختلفاً**: tail byte = 0x08 بدل 0x07
4. **بنية الـ PRNG state**: `[time_bucket(4)][zeros(4)][data(8)][time_bucket(4)][size(4)]`
5. **آخر بايتين من data مكررين دائماً** (نمط interleave)
6. **7 عينات KDF** مسجلة لأكواد: 000000, 111111, 123456, 222222, 394318, 654321, 999999

**المسار المتبقي:** عكس PRNG formula من التحليل الساكن (Ghidra) للدالة عند `0x7eae18`

### U-09: DAT_009280f8 = Decrypted Response (✅ ~95%)

**إثبات قاطع:**
- `DAT_009280f8` (runtime offset) يحتوي pointer يشير إلى:
  ```
  5a 9c 14 00 18 00 b0 ef f4 3b 00 a5 b6 fa c2 ad 
  83 00 00 00 d9 00 e0 ad 00 bc 3f 79 00 e0 de 08
  ```
- جميع الثوابت المتوقعة موجودة بالضبط: `9c1400`, `83000000`, `d900`, `00e0de08`
- هذا يطابق 100% ما وثّقه `RESPONSE_RECORD_DECODED.md`

### U-04: Response Fields (~80%)

**بنية مثبتة:**
```
[mask0][9c 14 00][mask1][00][vary2][mask2][vary3][mask3][vary3]
[83 00 00 00][d9 00][server_vary][00][server_vary][~3d-79][00 e0 de 08]
```
- 4 ثوابت: 0x149c (5276), 0x83 (131), 0xd9 (217), 0x08dee000
- Mask echo مثبت (من `RESPONSE_RECORD_DECODED.md` + قراءة مباشرة)

### U-05: Deferred Validation (~40%)

**مثبت:**
- 50 request متتالية بدون rate-limit أو block
- Replay يعمل (نفس z → response جديد كل مرة)
- لا تحقق من IP/User-Agent/mutual TLS

---

## الأدلة المحفوظة

| الملف | المحتوى |
|-------|---------|
| `/tmp/cap_ke_000000.json` | 548 buffer من code 000000 |
| `/tmp/cap_ke_111111.json` | 571 buffer من code 111111 |
| `/tmp/cap_ke_123456.json` | 571 buffer من code 123456 |
| `/tmp/cap_ke_222222.json` | 576 buffer من code 222222 |
| `/tmp/cap_ke_394318.json` | 601 buffer من code 394318 |
| `/tmp/cap_ke_654321.json` | 595 buffer من code 654321 |
| `/tmp/cap_ke_999999.json` | 570 buffer من code 999999 |
| `/tmp/stalker_validate_result.json` | Stalker trace |

---

## ما يمكن استكماله لاحقاً

| المحور | المطلوب | الممكن؟ |
|--------|---------|---------|
| U-01 | Ghidra disassembly لـ PRNG function at 0x7eae18 | نعم (offline) |
| U-02 | يعتمد على U-01 + U-03 | فقط بعد حلهما |
| U-03 | Hook startup KDF أو diff عبر أجهزة | نعم (يحتاج جهاز ثاني) |
| U-06 | credentials حقيقية | خارج النطاق |
| U-07 | subscription فعّالة + لعبة | خارج النطاق |
| U-08 | Stalker بطريقة أخرى (background thread) | ممكن |
