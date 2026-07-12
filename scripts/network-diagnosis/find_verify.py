import struct

data = open("/home/ubuntu/Snake/raw/lib/arm64-v8a/libflutter.so", "rb").read()

# MOV W1, #134 at offsets: 0x5280d0, 0x696e24, 0x69b158, 0x69d56c, 0x69d904
# Check which one has MOV W0, #16 (SSL module = 0x10) nearby

target_offsets = [0x5280d0, 0x696e24, 0x69b158, 0x69d56c, 0x69d904]
mov_w0_16 = bytes([0x00, 0x02, 0x80, 0x52])  # movz w0, #0x10

for off in target_offsets:
    region = data[max(0,off-64):off+8]
    idx = region.find(mov_w0_16)
    if idx >= 0:
        print(f"  ** 0x{off:x}: OPENSSL_PUT_ERROR(SSL=16, CERT_VERIFY_FAILED=134) **")
        # Find function prologue (STP X29, X30, [SP, #imm]!)
        func_start = None
        for back in range(off, max(off-4096, 0), -4):
            instr = struct.unpack_from('<I', data, back)[0]
            if (instr & 0xFFE07FFF) == 0xA9007BFD:  # STP X29, X30, [SP, ...]
                func_start = back
                break
        if func_start:
            func_size = off - func_start
            print(f"    Function starts at 0x{func_start:x} (size ~{func_size} bytes)")
            print(f"    Prologue: {data[func_start:func_start+8].hex()}")
            # The patch: replace first 8 bytes with MOV W0, #1; RET
            # MOV W0, #1 = 20 00 80 52
            # RET = C0 03 5F D6
            print(f"    PATCH: at 0x{func_start:x} write: 20008052 c0035fd6")
            print(f"    This makes the function always return 1 (success)")
        else:
            print(f"    Could not find function prologue")
    else:
        pass  # Not SSL module

print("\nDone.")
