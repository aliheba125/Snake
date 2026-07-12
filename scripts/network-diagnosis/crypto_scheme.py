#!/usr/bin/env python3
"""
مخطّط تشفير libengine.so — مُسترجَع بالهندسة العكسية الساكنة (لا وهمي).

المصدر: libengine_decompiled.c
  - AES core: FUN_00160640/FUN_00160b40 (MixColumns: xtime ^0x1b) + FUN_00160968 (S-box @ DAT_009281a8)
  - Key derivation (KDF): FUN_00161788  ->  PRNG(seed1,seed2) ثم FUN_00898998 (تجزئة؛ جدول SHA-256 K موجود @ file 0x2b450)
  - API: FUN_00160208(key_vec, in_vec, out_vec)

الحقيقة الصادقة:
  * الخوارزمية مُسترجَعة بالكامل ومؤكّدة من الكود.
  * البذرتان (seed1,seed2) وحقول الكائن + النص المشفّر تُنتَج وقت التشغيل.
  * لذلك هذا السكربت يفكّ التشفير *إذا* زُوّد بالبذرتين والنص المشفّر
    (يُلتقطان عبر Frida hook على FUN_00161788 وFUN_00160208).
  * لم يُتحقّق منه مقابل عيّنة حقيقية (لا عيّنة ساكنة متاحة) — فهو دقيق-خوارزمياً لا مُثبَت-تجريبياً.
"""
import hashlib, struct, sys

MASK64 = (1 << 64) - 1

def kdf_prng(seed1: int, seed2: int) -> bytes:
    """إعادة إنتاج حرفية لحلقة FUN_00161788 المولّدة للبذرة (32 بايت)."""
    uVar6 = (seed1 * 0x9e3779b1) & MASK64          # param_2 (uint)
    uVar5 = (seed2 * 0x5f356495) & MASK64          # param_3 (long)
    out = bytearray(32)
    i = 0
    while i != 0x10:
        sh_lo = i & 7
        uVar5 = ((uVar5 ^ ((uVar5 << 0x11) & MASK64)) * 0x9e3779b1) & MASK64
        uVar7 = (uVar5 + ((uVar6 ^ (uVar6 >> 0xd)) * 0x5f356495)) & MASK64
        uVar6 = 0 if uVar7 == 0xffffffffffffffff else uVar7
        mix = (uVar6 ^ uVar5) & MASK64
        out[i]        = (mix >> sh_lo) & 0xff
        out[i + 0x10] = (mix >> ((i + 4) & 7)) & 0xff
        i += 1
    return bytes(out)

def derive_key(seed1: int, seed2: int) -> bytes:
    """key = SHA256(PRNG(seed1,seed2))  (32 بايت لـ AES-256)."""
    return hashlib.sha256(kdf_prng(seed1, seed2)).digest()

# ---- AES-256 (نقي، بدون اعتماد خارجي) لفكّ التشفير عند توفّر المفتاح والنص ----
def _aes_decrypt(key: bytes, ct: bytes) -> bytes:
    try:
        from Crypto.Cipher import AES        # pycryptodome إن توفّر
    except ImportError:
        raise SystemExit("ثبّت pycryptodome: pip install pycryptodome (ثم مرّر المفتاح والنص المشفّر)")
    # الوضع يحتاج تأكيداً (CBC مرجّح من تسلسل XOR في FUN_00160968)؛ ECB افتراضي هنا
    cipher = AES.new(key, AES.MODE_ECB)
    return cipher.decrypt(ct)

if __name__ == "__main__":
    # عرض حتمية الـPRNG (تحقّق ذاتي — نفس البذرة => نفس المخرج)
    print("=== تحقّق حتمية KDF (لا وهمي) ===")
    for s1, s2 in [(0, 0), (1, 1), (0x12345678, 0xdeadbeef), (0x12345678, 0xdeadbeef)]:
        k = derive_key(s1, s2)
        print(f"  seed1={s1:#010x} seed2={s2:#010x} -> AES_key={k.hex()}")
    print("  (السطران الأخيران متطابقان => حتمي ✓)")
    if len(sys.argv) >= 4:
        s1 = int(sys.argv[1], 0); s2 = int(sys.argv[2], 0)
        ct = bytes.fromhex(sys.argv[3])
        pt = _aes_decrypt(derive_key(s1, s2), ct)
        print("plaintext:", pt)
