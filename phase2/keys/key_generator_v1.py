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
