# المرحلة الثانية - Snake Engine Analysis

## 🎯 الأهداف
1. **استخراج خوارزمية التحقق**
2. **توليد Key صالح**
3. **تجاوز التحقق**
4. **Patch لنظام الترخيص**

## 📁 هيكل الأدلة

```
phase2/
├── tools/              # أدوات Phase 1 (موروثة)
├── emulation/          # محاكاة Unicorn/QEMU
├── analysis/           # تحليل SHA-256 والكود
├── bypass/             # scripts لتجاوز الحماية
├── keys/               # مفاتيح مُولدة ونتائج
└── results/            # نتائج الاختبارات
```

## 🔧 الأدوات الجديدة

### 1. تحليل SHA-256
```bash
python3 analysis/sha256_deep_analyzer.py libengine.so
```

### 2. توليد المفاتيح
```bash
python3 keys/key_generator_v1.py
```

### 3. تجاوز Anti-tamper
```bash
frida -U -f com.snake.helper -l bypass/anti_tamper_bypass_v1.js
```

### 4. توليد Patches
```bash
python3 bypass/patch_generator_v1.py libengine.so
```

## 🚀 خطة العمل

### الأسبوع 1: تحليل الخوارزمية
- فهم SHA-256 input الحقيقي
- استخراج constraints من OLLVM
- رسم خريطة State Machine

### الأسبوع 2: توليد المفاتيح
- تطوير key generator
- اختبار المفاتيح المُولدة
- تحسين بناءً على النتائج

### الأسبوع 3: تجاوز الحماية
- تعطيل anti-tamper mechanisms
- تطوير patches لـ libengine.so
- اختبار التعديلات

### الأسبوع 4: التكامل والاختبار
- دمج جميع المكونات
- اختبار شامل
- توثيق النتائج

## ⚠️ ملاحظات هامة

### التحديات المعروفة:
1. **Anti-tamper**: process_vm_readv, xcrash, seccomp
2. **OLLVM Flattening**: state machine معقد
3. **String Encryption**: كل النصوص مشفرة

### متطلبات:
- Python 3.8+
- Frida
- Unicorn Engine (للمحاكاة)
- Ghidra/Binary Ninja (للتحليل الثنائي)

## 📞 الاتصال
- تحديثات يومية في `/projects/sandbox/`
- النتائج في `phase2/results/`
- المفاتيح المُولدة في `phase2/keys/`

---

**بدء العمل:** `bash phase2_start.sh`
