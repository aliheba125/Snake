# إجراءات فورية للمرحلة الثانية

## 🎯 الأولويات بناءً على المعطيات الحالية

### 1. البدء بتحليل SHA-256 الفعلي
**السبب:** لدينا معلومات جيدة عن SHA-256 (0x798998، 0x5a120) لكن لا نعرف الإدخال الحقيقي.

**الإجراء الفوري:**
```bash
# التحقق من وجود libengine.so
find /projects/sandbox -name "*.so" -type f
```

**إذا كان libengine.so موجوداً:**
```python
# إنشاء script سريع لتتبع SHA-256
import struct
import binascii

def analyze_sha256_input(binary_path):
    # قراءة SHA-256 IV من offset 0x10a90
    with open(binary_path, 'rb') as f:
        f.seek(0x10a90)
        iv = f.read(32)  # 8x uint32
        print(f"SHA-256 IV: {binascii.hexlify(iv).decode()}")
        
        # قراءة K-table من 0x2b450
        f.seek(0x2b450)
        k_table = f.read(64*4)  # 64 constants
        print(f"K[0]: 0x{struct.unpack('<I', k_table[:4])[0]:08x}")
        
    return iv, k_table[:64]
```

### 2. إعداد Unicorn Emulator الأساسي
**السبب:** نحتاج محاكاة لتخطي anti-tamper.

```python
# unicorn_basic.py
from unicorn import *
from unicorn.arm64_const import *

def setup_emulator():
    # تهيئة emulator لـ ARM64
    mu = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    
    # تخصيص ذاكرة
    BASE_ADDRESS = 0x1000000
    MEM_SIZE = 1024 * 1024 * 16  # 16MB
    
    mu.mem_map(BASE_ADDRESS, MEM_SIZE)
    
    # تحميل libengine.so
    with open("libengine.so", "rb") as f:
        lib_data = f.read()
    
    # حساب offset الـ .text
    # نحتاج parse ELF header أولاً
    import elftools
    from elftools.elf.elffile import ELFFile
    
    return mu
```

### 3. البحث عن نقاط الضعف في Anti-tamper
**السبب:** يجب فهم كيفية عمل الحماية أولاً.

```bash
# البحث عن syscalls في libengine.so
strings libengine.so | grep -E "(process_vm_readv|seccomp|mprotect|mmap)"
objdump -T libengine.so | grep -E "(process_vm_readv|seccomp)"
```

### 4. تحضير Frida Bypass Scripts
**السبب:** Frida هي الأسرع للاختبارات الأولية.

```javascript
// frida_bypass_1.js
Interceptor.attach(Module.findExportByName(null, "process_vm_readv"), {
    onEnter: function(args) {
        console.log("[+] process_vm_readv called");
        console.log("    pid: " + args[0]);
        console.log("    local_iov: " + args[1]);
        console.log("    liovcnt: " + args[2]);
        console.log("    remote_iov: " + args[3]);
        console.log("    riovcnt: " + args[4]);
        console.log("    flags: " + args[5]);
        
        // return 0 (success) دائماً
        this.returnValue = 0;
    }
});

// تعطيل xcrash
var xcrash_init = Module.findExportByName(null, "xcrash_init");
if (xcrash_init) {
    Interceptor.attach(xcrash_init, {
        onEnter: function(args) {
            console.log("[+] xcrash_init prevented");
            this.returnValue = -1; // فشل
        }
    });
}
```

### 5. استخراج OLLVM State Machine Structure
**السبب:** لفهم كيفية عمل القرارات.

```python
# ollvm_analyzer.py
import re

def extract_switch_cases(binary_path):
    """استخراج switch cases من OLLVM flattened function"""
    
    patterns = [
        # mov w0, #case
        rb'\x20\x00\x80\x52',  # mov w0, #1
        # cmp w0, #value
        rb'\x1f\x00\x00\x71',  # cmp w0, #0
        # b.eq target
        rb'\x00\x00\x00\x54',  # b.eq
    ]
    
    with open(binary_path, 'rb') as f:
        data = f.read()
        
    # البحث حول 0xa58c0
    start_offset = 0xa58c0 - 0x1000  # افتراض base
    region = data[start_offset:start_offset + 0x1000]
    
    cases = []
    for i in range(len(region) - 4):
        # البحث عن mov w0, immediate
        if region[i:i+4] == b'\x20\x00\x80\x52':
            # استخراج immediate value
            # يحتاج تحليل أكثر دقة
            pass
            
    return cases
```

---

## 📁 هيكل الملفات للبدء الفوري

```
/projects/sandbox/phase2/
├── emulation/
│   ├── sha256_tracer.py      # تتبع SHA-256 input
│   ├── unicorn_setup.py      # إعداد بيئة المحاكاة
│   └── test_keys.py          # اختبار مفاتيح مختلفة
├── analysis/
│   ├── anti_tamper_scan.py   # مسح آليات الحماية
│   ├── ollvm_extractor.py    # استخراج state machine
│   └── constraint_finder.py  # البحث عن constraints
├── bypass/
│   ├── frida_bypass_1.js     # تعطيل process_vm_readv
│   ├── frida_bypass_2.js     # تعطيل xcrash
│   └── patch_generator.py    # إنشاء patches
└── tools/
    ├── elf_parser.py         # تحليل ELF headers
    ├── string_decryptor.py   # فك تشفير النصوص
    └── arm64_disasm.py       // disassembler
```

---

## 🚀 الخطوات التنفيذية (اليوم الأول)

### الساعة 1-2: الإعداد البيئي
```bash
# 1. التحقق من وجود libengine.so
find /projects/sandbox -name "*.so" -type f -exec ls -la {} \;

# 2. تثبيت dependencies أساسية
pip install unicorn capstone keystone-engine

# 3. إنشاء هيكل الملفات
mkdir -p phase2/{emulation,analysis,bypass,tools}
```

### الساعة 3-4: تحليل SHA-256
```python
# إنشاء sha256_analyzer.py
# قراءة IV و K-table
# البحث عن all SHA-256 calls
```

### الساعة 5-6: مسح Anti-tamper
```bash
# استخدام objdump و strings
objdump -T libengine.so > imports.txt
strings libengine.so | grep -i "crash\|protect\|seccomp" > protections.txt
```

### الساعة 7-8: أول Frida bypass
```javascript
// إنشاء frida_bypass_basic.js
// تعطيل أبسط آليات الحماية
```

---

## 📊 ما نتوقعه اليوم

### إذا سار كل شيء بشكل جيد:
```
✓ فهم تام لـ SHA-256 input
✓ تحديد 2-3 آليات anti-tamper رئيسية
✓ أول bypass script يعمل جزئياً
✓ خريطة أولية لـ OLLVM state machine
```

### التحديات المتوقعة:
```
❌ libengine.so غير موجود (نحتاج extract من APK)
❌ Anti-tamper أكثر تعقيداً من المتوقع
❌ OLLVM صعب التحليل بدون أدوات متخصصة
```

---

## 🔄 خطة الطوارئ

### إذا لم نجد libengine.so:
```bash
# 1. البحث عن APK
find /projects/sandbox -name "*.apk" -type f

# 2. استخراج libengine.so
unzip snake.apk lib/arm64-v8a/libengine.so -d extracted/

# 3. استخدام apktool لتفكيك كامل
apktool d snake.apk -o decompiled/
```

### إذا كان Anti-tamper قوي جداً:
```python
# الانتقال إلى kernel-level bypass
# استخدام ptrace أو LD_PRELOAD
# أو إنشاء custom Android ROM
```

### إذا كان OLLVM معقد جداً:
```python
# استخدام angr للـ symbolic execution
# التركيز على SHA-256 فقط أولاً
# تجاهل بقية state machine مؤقتاً
```

---

## 📞 النقاط الحرجة التي تحتاج قرار

1. **هل libengine.so متوفر؟** - إذا لا، نحتاج استخراجه
2. **ما مستوى التعقيد الذي نستعد له؟** - بسيط/متوسط/معقد
3. **هل التركيز على GATE 1 فقط أم GATE 2 أيضاً؟**
4. **ميزانية الوقت: أيام/أسابيع/شهور؟**

---

## 🎯 البدء الآن

**أي خطوة تريد البدء بها أولاً؟**

1. 🔍 البحث عن libengine.so واستخراجه
2. 🛠️ تحليل SHA-256 input
3. 🛡️ اختبار anti-tamper bypass
4. 🗺️ رسم خريطة OLLVM state machine

**أختر رقم لبدأ التنفيذ...**
