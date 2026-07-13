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
