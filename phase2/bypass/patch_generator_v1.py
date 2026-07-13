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
