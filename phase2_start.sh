#!/bin/bash

echo "=== بدء المرحلة الثانية ==="
echo "الأهداف:"
echo "1. استخراج خوارزمية التحقق"
echo "2. توليد Key صالح"
echo "3. تجاوز التحقق"
echo "4. Patch لنظام الترخيص"
echo ""

# 1. إنشاء هيكل الأدلة
mkdir -p phase2/{tools,emulation,analysis,bypass,results,keys}

# 2. نسخ الأدوات الموجودة
echo "📁 نسخ الأدوات الحالية..."
find /projects/sandbox -name "*.js" -o -name "*.py" | xargs -I {} cp {} phase2/tools/ 2>/dev/null || true

# 3. إنشاء أدوات المرحلة الثانية الأساسية
echo "🛠️ إنشاء أدوات المرحلة الثانية..."

# أداة تحليل SHA-256
cat > phase2/analysis/sha256_deep_analyzer.py << 'EOF'
#!/usr/bin/env python3
"""
أداة متقدمة لتحليل SHA-256 في libengine.so
"""
import struct
import binascii
import re

class SHA256DeepAnalyzer:
    def __init__(self, so_path):
        self.so_path = so_path
        self.results = {}
        
    def load_binary(self):
        """تحميل binary"""
        with open(self.so_path, 'rb') as f:
            self.data = f.read()
        self.size = len(self.data)
        print(f"[+] Loaded {self.so_path} ({self.size:,} bytes)")
        
    def find_sha256_constants(self):
        """البحث عن SHA-256 constants"""
        # SHA-256 IV (64 bytes = 8x uint32)
        iv_patterns = [
            binascii.unhexlify('e66709a6'),  # H0 = 0x6a09e667 (little-endian)
            binascii.unhexlify('85ae67bb'),  # H1 = 0xbb67ae85
        ]
        
        # SHA-256 K-table constants
        k_patterns = [
            binascii.unhexlify('982f8a42'),  # K[0] = 0x428a2f98
            binascii.unhexlify('91447471'),  # K[1] = 0x71374491
        ]
        
        results = {
            'iv_offsets': [],
            'k_table_offsets': [],
            'update_calls': [],
            'finalize_calls': []
        }
        
        for pattern, name in zip(iv_patterns, ['IV_H0', 'IV_H1']):
            pos = 0
            while pos < self.size:
                offset = self.data.find(pattern, pos)
                if offset == -1:
                    break
                results['iv_offsets'].append({'offset': offset, 'pattern': name})
                pos = offset + 1
        
        for pattern, name in zip(k_patterns, ['K0', 'K1']):
            pos = 0
            while pos < self.size:
                offset = self.data.find(pattern, pos)
                if offset == -1:
                    break
                results['k_table_offsets'].append({'offset': offset, 'pattern': name})
                pos = offset + 1
        
        # البحث عن SHA-256 function signatures
        # SHA-256 update عادةً تبدأ بـ stp x29, x30, [sp, #-0x40]!
        
        return results
    
    def analyze_update_function(self, offset):
        """تحليل SHA-256 update function"""
        if offset >= self.size - 100:
            return None
            
        chunk = self.data[offset:offset+100]
        
        # تحليل ARM64 instructions
        # نحتاج capstone هنا، لكننا نبحث عن patterns
        analysis = {
            'offset': offset,
            'hex_preview': binascii.hexlify(chunk[:32]).decode(),
            'potential_sha256': False
        }
        
        # علامات SHA-256 update:
        # 1. استخدام w8 مع cmp #64 (block size)
        # 2. references إلى IV أو K-table
        
        return analysis
    
    def generate_report(self):
        """إنشاء تقرير تحليل SHA-256"""
        self.load_binary()
        constants = self.find_sha256_constants()
        
        print("\n=== تقرير تحليل SHA-256 ===")
        print(f"Binary: {self.so_path}")
        print(f"Size: {self.size:,} bytes")
        
        print("\n🔍 SHA-256 Constants Found:")
        if constants['iv_offsets']:
            print(f"  IV Offsets: {len(constants['iv_offsets'])}")
            for iv in constants['iv_offsets'][:3]:
                print(f"    - 0x{iv['offset']:x} ({iv['pattern']})")
        else:
            print("  ❌ No IV found")
            
        if constants['k_table_offsets']:
            print(f"  K-table Offsets: {len(constants['k_table_offsets'])}")
            for k in constants['k_table_offsets'][:3]:
                print(f"    - 0x{k['offset']:x} ({k['pattern']})")
        else:
            print("  ❌ No K-table found")
        
        return constants

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python3 sha256_deep_analyzer.py <libengine.so>")
        sys.exit(1)
    
    analyzer = SHA256DeepAnalyzer(sys.argv[1])
    analyzer.generate_report()
EOF

# أداة توليد المفاتيح
cat > phase2/keys/key_generator_v1.py << 'EOF'
#!/usr/bin/env python3
"""
مولد مفاتيح بناءً على تحليل المرحلة الأولى
"""
import hashlib
import random
import string
import json
from datetime import datetime

class KeyGenerator:
    def __init__(self):
        self.generated_keys = []
        self.stats = {
            'total_generated': 0,
            'patterns_tested': [],
            'sha256_hashes': {}
        }
        
        # بناءً على تحليل المرحلة الأولى
        self.known_info = {
            'key_length_range': (6, 32),  # من "135790" إلى مفاتيح أطول
            'possible_formats': [
                'XXXXXXXXXXXX',  # 12 chars
                'XXXX-XXXX-XXXX',  # segmented
                'SNK-XXXXXXXX',  # prefixed
                'ACT-XXXXXXXX',  # activation code
                'LIC-XXXXXXXX-XXXX',  # license format
            ],
            'charset': string.ascii_uppercase + string.digits,
            'exclude_chars': '0O1Il',  # chars مشتبهة
        }
    
    def generate_by_pattern(self, pattern):
        """توليد مفتاح بناءً على pattern"""
        key = pattern
        
        replacements = {
            'X': lambda: random.choice(self.known_info['charset']),
            'N': lambda: str(random.randint(0, 9)),
            'A': lambda: random.choice(string.ascii_uppercase),
            'D': lambda: str(random.randint(0, 9)),
        }
        
        for char, generator in replacements.items():
            while char in key:
                key = key.replace(char, generator(), 1)
        
        return key
    
    def generate_batch(self, count=100, patterns=None):
        """توليد مجموعة مفاتيح"""
        if patterns is None:
            patterns = self.known_info['possible_formats']
        
        batch = []
        for i in range(count):
            pattern = random.choice(patterns)
            key = self.generate_by_pattern(pattern)
            
            # حساب SHA-256
            sha256_hash = hashlib.sha256(key.encode()).hexdigest()
            
            key_info = {
                'key': key,
                'pattern': pattern,
                'sha256': sha256_hash,
                'length': len(key),
                'timestamp': datetime.now().isoformat()
            }
            
            batch.append(key_info)
            self.generated_keys.append(key_info)
            self.stats['total_generated'] += 1
            
            # تحديث stats
            if pattern not in self.stats['patterns_tested']:
                self.stats['patterns_tested'].append(pattern)
            
            # تخزين hash مختصر للإشارة
            short_hash = sha256_hash[:8]
            if short_hash not in self.stats['sha256_hashes']:
                self.stats['sha256_hashes'][short_hash] = 1
            else:
                self.stats['sha256_hashes'][short_hash] += 1
        
        return batch
    
    def analyze_patterns(self):
        """تحليل patterns الناجحة"""
        # هذه الدالة ستملأ لاحقاً بناءً على نتائج الاختبار
        pass
    
    def save_results(self, filename="generated_keys.json"):
        """حفظ النتائج"""
        output = {
            'metadata': {
                'generator_version': '1.0',
                'generation_date': datetime.now().isoformat(),
                'total_keys': len(self.generated_keys)
            },
            'keys': self.generated_keys,
            'statistics': self.stats
        }
        
        with open(filename, 'w') as f:
            json.dump(output, f, indent=2)
        
        print(f"[+] Saved {len(self.generated_keys)} keys to {filename}")
        return filename
    
    def export_for_testing(self, filename="test_keys.txt"):
        """تصدير المفاتيح للاختبار"""
        with open(filename, 'w') as f:
            for key_info in self.generated_keys:
                f.write(f"{key_info['key']}\n")
        
        print(f"[+] Exported {len(self.generated_keys)} keys to {filename}")
        return filename

if __name__ == "__main__":
    generator = KeyGenerator()
    
    print("=== Key Generator v1 ===")
    print("Based on Phase 1 analysis")
    print("")
    
    # توليد 50 مفتاح للبداية
    batch = generator.generate_batch(50)
    
    print(f"Generated {len(batch)} keys:")
    print("")
    
    # عرض أول 10 مفاتيح
    for i, key_info in enumerate(batch[:10]):
        print(f"{i+1:2d}. {key_info['key']:20} (Pattern: {key_info['pattern']})")
        print(f"     SHA256: {key_info['sha256'][:16]}...")
    
    print("")
    print(f"Patterns tested: {len(generator.stats['patterns_tested'])}")
    print(f"Unique short hashes: {len(generator.stats['sha256_hashes'])}")
    
    # حفظ النتائج
    generator.save_results()
    generator.export_for_testing()
    
    print("")
    print("📁 Next steps:")
    print("1. Test these keys in the app")
    print("2. Monitor which ones pass GATE 1")
    print("3. Adjust patterns based on results")
EOF

# أداة تجاوز Anti-tamper
cat > phase2/bypass/anti_tamper_bypass_v1.js << 'EOF'
// Frida script لتعطيل anti-tamper mechanisms
console.log("[+] Phase 2 Anti-Tamper Bypass v1");

// 1. تعطيل process_vm_readv (لكشف anti-tamper)
const process_vm_readv = Module.findExportByName(null, "process_vm_readv");
if (process_vm_readv) {
    console.log("[+] Found process_vm_readv @ " + process_vm_readv);
    
    Interceptor.attach(process_vm_readv, {
        onEnter: function(args) {
            console.log("[!] process_vm_readv called");
            console.log("    pid: " + args[0]);
            console.log("    local_iov: " + args[1]);
            
            // يمكننا return 0 (success) أو تخطي المنطق
            this.should_bypass = true;
        },
        onLeave: function(retval) {
            if (this.should_bypass) {
                console.log("[+] Bypassing process_vm_readv");
                retval.replace(0); // return success
            }
        }
    });
} else {
    console.log("[-] process_vm_readv not found");
}

// 2. تعطيل xcrash
const xcrash_init = Module.findExportByName(null, "xcrash_init");
if (xcrash_init) {
    Interceptor.attach(xcrash_init, {
        onEnter: function(args) {
            console.log("[+] xcrash_init prevented");
            this.returnValue = -1; // فشل التهيئة
        }
    });
}

// 3. مراقبة mprotect/mmap (للتعديلات الذاتية)
const mprotect = Module.findExportByName(null, "mprotect");
const mmap = Module.findExportByName(null, "mmap");

if (mprotect) {
    Interceptor.attach(mprotect, {
        onEnter: function(args) {
            var addr = args[0];
            var len = args[1];
            var prot = args[2];
            
            // PROT_READ | PROT_WRITE | PROT_EXEC = 7
            if (prot === 7) {
                console.log("[!] mprotect RWX @ " + addr + " (len: " + len + ")");
                console.log("    Likely self-modifying code or anti-tamper");
            }
        }
    });
}

// 4. البحث عن JNI functions والتعطيل الانتقائي
const libengine = Module.findBaseAddress("libengine.so");
if (libengine) {
    console.log("[+] libengine.so @ " + libengine);
    
    // العناوين المعروفة من Phase 1
    const known_offsets = {
        'JNI_OnLoad': 0xf3fa0,
        'ilil': 0xf1188,
        'pjowqpxe': 0xf33a8,
        'awl': 0xf1110,
        'aior': 0xf1084,
    };
    
    for (var name in known_offsets) {
        var addr = libengine.add(known_offsets[name]);
        console.log("[+] " + name + " expected @ " + addr);
    }
}

// 5. مراقبة seccomp إذا كان مستخدم
const seccomp = Module.findExportByName(null, "seccomp");
if (seccomp) {
    Interceptor.attach(seccomp, {
        onEnter: function(args) {
            console.log("[!] seccomp called - sandboxing active");
            console.log("    operation: " + args[0]);
            console.log("    flags: " + args[1]);
            console.log("    args: " + args[2]);
        }
    });
}

console.log("[+] Anti-tamper bypass loaded");
console.log("[+] Ready for Phase 2 testing");
EOF

# أداة Patch أساسية
cat > phase2/bypass/patch_generator_v1.py << 'EOF'
#!/usr/bin/env python3
"""
أداة لتوليد patches لـ libengine.so
"""
import struct
import binascii

class PatchGenerator:
    def __init__(self, so_path):
        self.so_path = so_path
        self.patches = []
        
    def load_binary(self):
        """تحميل binary"""
        with open(self.so_path, 'rb') as f:
            self.data = bytearray(f.read())
        print(f"[+] Loaded {len(self.data):,} bytes")
        return len(self.data)
    
    def save_patched(self, output_path):
        """حفظ binary معدل"""
        with open(output_path, 'wb') as f:
            f.write(self.data)
        print(f"[+] Saved patched binary to {output_path}")
        return output_path
    
    def add_patch(self, offset, original_bytes, new_bytes, description):
        """إضافة patch"""
        patch = {
            'offset': offset,
            'original': binascii.hexlify(original_bytes).decode(),
            'new': binascii.hexlify(new_bytes).decode(),
            'description': description,
            'applied': False
        }
        self.patches.append(patch)
        return patch
    
    def apply_patch(self, patch_index):
        """تطبيق patch"""
        if patch_index >= len(self.patches):
            print(f"[-] Patch index {patch_index} out of range")
            return False
        
        patch = self.patches[patch_index]
        
        # التحقق من أن الـ original bytes تطابق
        offset = patch['offset']
        expected = binascii.unhexlify(patch['original'])
        actual = self.data[offset:offset+len(expected)]
        
        if actual != expected:
            print(f"[-] Bytes don't match at offset 0x{offset:x}")
            print(f"    Expected: {patch['original']}")
            print(f"    Actual: {binascii.hexlify(actual).decode()}")
            return False
        
        # تطبيق التعديل
        new_bytes = binascii.unhexlify(patch['new'])
        self.data[offset:offset+len(new_bytes)] = new_bytes
        
        patch['applied'] = True
        print(f"[+] Applied patch {patch_index}: {patch['description']}")
        return True
    
    def generate_anti_tamper_patches(self):
        """توليد patches لتعطي�� anti-tamper"""
        
        # 1. Patch لـ process_vm_readv check
        # البحث عن cmp w0, #0 (check if process_vm_readv succeeded)
        # وتغييره إلى mov w0, #1 (always success)
        
        # 2. Patch لـ xcrash_init
        # جعله يرجع -1 مباشرة
        
        # 3. Patch لـ seccomp
        # جعله يرجع 0 (success) بدون فعل أي شيء
        
        print("[+] Generated anti-tamper patch templates")
        return True
    
    def generate_validation_bypass_patches(self):
        """توليد patches لتجاوز التحقق"""
        
        # بناءً على تحليل Phase 1:
        # GATE 1 rejection في libengine.so
        # نبحث عن branch يؤدي إلى "Code is Not valid"
        # ونغير الشرط
        
        patch_ideas = [
            {
                'type': 'branch_reversal',
                'description': 'تغيير b.ne إلى b.eq لجعل الشرط يعاكس',
                'original': 'b.ne target',    # 0x54xxxxxx
                'new': 'b.eq target',         # 0x54xxxxxx with different condition
            },
            {
                'type': 'always_success',
                'description': 'جعل الدالة ترجع success دائماً',
                'original': 'mov w0, #0',     # return failure
                'new': 'mov w0, #1',          # return success
            },
            {
                'type': 'skip_validation',
                'description': 'القفز فوق كود التحقق',
                'original': 'bl validation_func',
                'new': 'nop\nnop\nnop\nnop',  # 4 NOPs for 32-bit instruction
            }
        ]
        
        print("[+] Generated validation bypass patch ideas")
        return patch_ideas
    
    def generate_report(self):
        """إنشاء تقرير عن الـ patches"""
        report = {
            'binary': self.so_path,
            'size': len(self.data),
            'patches': self.patches,
            'applied_count': sum(1 for p in self.patches if p['applied'])
        }
        
        print("\n=== Patch Report ===")
        print(f"Binary: {report['binary']}")
        print(f"Size: {report['size']:,} bytes")
        print(f"Patches: {len(report['patches'])}")
        print(f"Applied: {report['applied_count']}")
        
        for i, patch in enumerate(report['patches']):
            status = "✅" if patch['applied'] else "⏳"
            print(f"\n{i}. {status} {patch['description']}")
            print(f"   Offset: 0x{patch['offset']:x}")
            print(f"   Original: {patch['original'][:16]}...")
            print(f"   New: {patch['new'][:16]}...")
        
        return report

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python3 patch_generator_v1.py <libengine.so>")
        sys.exit(1)
    
    generator = PatchGenerator(sys.argv[1])
    generator.load_binary()
    
    # توليد patches
    generator.generate_anti_tamper_patches()
    generator.generate_validation_bypass_patches()
    
    # حفظ نسخة احتياطية أولاً
    generator.save_patched("libengine_patched.so")
    
    # إنشاء تقرير
    generator.generate_report()
    
    print("\n📁 Next steps:")
    print("1. Test the patched libengine.so")
    print("2. Monitor app behavior")
    print("3. Adjust patches as needed")
EOF

# إنشاء ملف README للمرحلة الثانية
cat > phase2/README.md << 'EOF'
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
EOF

# جعل الملفات قابلة للتنفيذ
chmod +x phase2/analysis/sha256_deep_analyzer.py
chmod +x phase2/keys/key_generator_v1.py
chmod +x phase2/bypass/patch_generator_v1.py

echo ""
echo "✅ تم إنشاء هيكل المرحلة الثانية"
echo ""
echo "📁 الأدلة المُنشأة:"
echo "  phase2/tools/       - أدوات Phase 1"
echo "  phase2/analysis/    - أدوات التحليل"
echo "  phase2/keys/        - مولدات المفاتيح"
echo "  phase2/bypass/      - أدوات التجاوز"
echo "  phase2/results/     - النتائج"
echo ""
echo "📋 الخطوات التالية:"
echo "  1. البحث عن libengine.so"
echo "  2. بدأ تحليل SHA-256"
echo "  3. توليد مفاتيح اختبار"
echo "  4. تطوير bypass scripts"
echo ""
echo "🚀 ابدأ بالخطوة الأولى:"
echo "  find /projects/sandbox -name \"*.so\" -type f"
echo ""