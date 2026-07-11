"""
Find ssl_crypto_x509_session_verify_cert_chain in libflutter.so
by locating ADRP instructions that reference the page containing
'x509_vfy.c' string (VA 0x1d8000) and 'ssl_x509.cc' (VA 0x1d7000).
"""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

data = open("/home/ubuntu/Snake/raw/lib/arm64-v8a/libflutter.so", "rb").read()

# Known values from ELF analysis:
# .text: VA 0x43d680, file offset 0x42d680, size 0x5a1688
# .rodata: VA 0xec700, file offset 0xec700
# Segment 2 (rx): VA 0x43d680, file offset 0x42d680 (diff = +0x10000)
# So: file_offset = VA - 0x10000 for .text code

TEXT_VA = 0x43d680
TEXT_FILE_OFF = 0x42d680
TEXT_SIZE = 0x5a1688

# Target strings:
# 'ssl_x509.cc' at file 0x1d7da1, VA 0x1d7da1 (in .rodata, segment 1 has no offset diff)
# 'x509_vfy.c' at file 0x1d806f, VA 0x1d806f
# 'CERTIFICATE_VERIFY_FAILED' at file 0x26b610, VA 0x26b610

SSL_X509_PAGE = 0x1d7000  # page of ssl_x509.cc
X509_VFY_PAGE = 0x1d8000  # page of x509_vfy.c
CERT_FAIL_PAGE = 0x26b000  # page of CERTIFICATE_VERIFY_FAILED

print("Searching .text for ADRP instructions referencing target pages...")
print(f"  ssl_x509.cc page: 0x{SSL_X509_PAGE:x}")
print(f"  x509_vfy.c page: 0x{X509_VFY_PAGE:x}")
print(f"  CERT_VERIFY_FAILED page: 0x{CERT_FAIL_PAGE:x}")

# ADRP Xd, #imm encodes: imm = (target_page - current_page)
# ADRP format: [1] [immlo:2] [10000] [immhi:19] [Rd:5]
# immhi:immlo forms a 21-bit signed value, shifted left 12 = page offset

def decode_adrp(insn_word, insn_va):
    """Decode ADRP instruction, return target page address or None."""
    if (insn_word & 0x9F000000) != 0x90000000:  # ADRP opcode check
        return None
    immhi = (insn_word >> 5) & 0x7FFFF
    immlo = (insn_word >> 29) & 0x3
    imm = (immhi << 2) | immlo
    # Sign extend 21 bits
    if imm & (1 << 20):
        imm -= (1 << 21)
    target_page = (insn_va & ~0xFFF) + (imm << 12)
    return target_page

# Scan .text for ADRP instructions targeting our pages
results = {SSL_X509_PAGE: [], X509_VFY_PAGE: [], CERT_FAIL_PAGE: []}

text_data = data[TEXT_FILE_OFF:TEXT_FILE_OFF+TEXT_SIZE]
for i in range(0, len(text_data) - 4, 4):
    word = struct.unpack_from('<I', text_data, i)[0]
    va = TEXT_VA + i
    target = decode_adrp(word, va)
    if target in results:
        results[target].append(va)

print(f"\nADRP references found:")
print(f"  To ssl_x509.cc page (0x{SSL_X509_PAGE:x}): {len(results[SSL_X509_PAGE])}")
print(f"  To x509_vfy.c page (0x{X509_VFY_PAGE:x}): {len(results[X509_VFY_PAGE])}")
print(f"  To CERT_VERIFY_FAILED page (0x{CERT_FAIL_PAGE:x}): {len(results[CERT_FAIL_PAGE])}")

# Show the ones referencing CERT_VERIFY_FAILED page (most relevant)
print(f"\nADRP to CERT_VERIFY_FAILED page:")
for va in results[CERT_FAIL_PAGE][:10]:
    foff = va - 0x10000  # file offset
    print(f"  VA 0x{va:x} (file 0x{foff:x})")
    # Disassemble context (32 bytes before, 32 bytes after)
    ctx_off = foff - 32
    ctx = data[ctx_off:ctx_off+80]
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    for insn in md.disasm(ctx, va - 32):
        mark = " <<<" if insn.address == va else ""
        print(f"    0x{insn.address:x}: {insn.mnemonic} {insn.op_str}{mark}")

# Also show ssl_x509.cc references (the verify function is here)
print(f"\nADRP to ssl_x509.cc page (first 5):")
for va in results[SSL_X509_PAGE][:5]:
    foff = va - 0x10000
    print(f"  VA 0x{va:x} (file 0x{foff:x})")
