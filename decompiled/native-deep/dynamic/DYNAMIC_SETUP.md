# إكمال التحليل ديناميكياً — التقاط مفاتيح AES والنص المشفّر

التحليل الساكن استرجع مخطّط التشفير بالكامل: `AES-256` بمفتاح `= SHA-256( xorshift-PRNG(seed1, seed2) )`
(انظر `../static-max/`). الناقص الوحيد: **البذرتان (seed1, seed2) والنص المشفّر** — يُنتَجان
وقت التشغيل فقط. هذا الدليل يلتقطهما من بيئة حقيقية ثم يفكّ التشفير عبر `../static-max/crypto_scheme.py`.

## المتطلّب الحاسم: معمارية arm64 حقيقية + root
`libengine.so` هي **arm64 فقط**، وفيها مقاومة محاكاة (فحوص `clock_gettime`). لذلك:
- ❌ خوادم x86 (مثل معظم EC2 القياسية) + QEMU → تُكشف المحاكاة، لا تصلح.
- ✅ الخيارات الصالحة: (أ) جهاز أندرويد arm64 مروّت، (ب) **AWS Graviton + redroid**، (ج) Corellium.

---

## الخيار A: AWS Graviton (arm64) + redroid — أندرويد arm64 حقيقي برووت

### 1) أطلق نسخة Graviton
- النوع: `t4g.large` أو `c7g.xlarge` (arm64/aarch64).
- النظام: Ubuntu 22.04 LTS **arm64**.
- التخزين: ≥ 30GB.

### 2) ثبّت Docker ووحدات النواة التي يحتاجها redroid
```bash
sudo apt update && sudo apt install -y docker.io linux-modules-extra-$(uname -r)
sudo modprobe binder_linux devices="binder,hwbinder,vndbinder"
sudo modprobe ashmem_linux 2>/dev/null || true   # النوى الحديثة قد لا تحتاجه
```
> إن غابت وحدة `binder_linux`، استخدم AMI بنواة تدعم binder (redroid يوثّق النوى المدعومة).

### 3) شغّل حاوية redroid (صورة arm64)
```bash
sudo docker run -itd --rm --privileged \
  --name redroid -p 5555:5555 \
  redroid/redroid:11.0.0-arm64 \
  androidboot.redroid_width=720 androidboot.redroid_height=1280
```

### 4) اتّصل بـ adb (redroid مروّت افتراضياً)
```bash
sudo apt install -y adb
adb connect localhost:5555
adb root && adb shell getprop ro.product.cpu.abi   # يجب أن يطبع arm64-v8a
```

### 5) ثبّت frida-server (arm64) وشغّله
```bash
# على المضيف: نزّل frida-server-<ver>-android-arm64 من إصدارات frida
adb push frida-server-*-android-arm64 /data/local/tmp/frida-server
adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "/data/local/tmp/frida-server &"
pip install frida-tools
```

### 6) ثبّت التطبيق وشغّل الالتقاط
```bash
adb install SE_2.2.6.apk
frida -U -f <package.name> -l frida_capture.js --no-pause
```

### 7) فكّ التشفير بالبذور والنص الملتقطين
```bash
python3 ../static-max/crypto_scheme.py 0x<seed1> 0x<seed2> <ciphertext_hex>
```

---

## الخيار B: جهاز أندرويد arm64 مروّت (الأضمن والأرخص)
- روّت الجهاز (Magisk)، فعّل تصحيح USB.
- `adb push frida-server` وشغّله كما أعلاه ثم نفس خطوات الالتقاط.
- الأفضل لأنه أجهزة حقيقية → لا كشف محاكاة.

## الخيار C: Corellium (سحابي، مدفوع)
- أنشئ جهاز Android arm64 → مروّت جاهز، frida مدعوم.
- الأضمن لتجاوز مقاومة المحاكاة لأنه يظهر كجهاز حقيقي.

---

## تحذير: الحامي يقاوم
`libengine` فيه مقاومة Frida (syscalls مباشرة لكشف frida-server) ومقاومة رووت/محاكاة.
قد تحتاج:
- تشغيل frida-server من مسار/اسم غير قياسي، أو استخدام `frida-gadget` مضمّناً.
- تعطيل روتينات الكشف (هوك على دوال الكشف قبل `JNI_OnLoad`).
- على redroid قد تُكشف الحاوية؛ Corellium/جهاز حقيقي أضمن.

## الملفات
- `frida_capture.js` — يهوك `FUN_00161788` (البذور) و`FUN_00160208` (النص المشفّر/المفكوك).
- `../static-max/crypto_scheme.py` — يشتقّ المفتاح ويفكّ عند توفّر البذور+النص.
