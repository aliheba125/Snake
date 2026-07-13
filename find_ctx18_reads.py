import struct

with open("/home/ubuntu/Snake/artifacts/native-libs/libengine.so", "rb") as f:
    data = f.read()

# Search for LDR X (unsigned imm) with offset 0x18
# LDR Xt, [Xn, #imm] → 1111100101 imm12 Rn Rt
# offset 0x18: imm12 = 0x18/8 = 3

print("=== ALL ldr x?, [x?, #0x18] in activation-related code (0x7b000-0x90000) ===")
hits = []
for off in range(0x7b000, 0x90000, 4):
    instr = struct.unpack_from('<I', data, off)[0]
    if (instr & 0xFFC00000) == 0xF9400000:  # LDR X unsigned imm
        imm12 = (instr >> 10) & 0xFFF
        actual_offset = imm12 * 8
        if actual_offset == 0x18:
            rn = (instr >> 5) & 0x1F
            rt = instr & 0x1F
            hits.append((off, rn, rt))

print("Found %d hits:" % len(hits))
for off, rn, rt in hits:
    print("  0x%06x: ldr x%d, [x%d, #0x18]" % (off, rt, rn))

# Also search in the OLLVM range (case 7 area)
print("\n=== ldr x?, [x?, #0x18] in OLLVM range (0xa5000-0xb0000) ===")
hits2 = []
for off in range(0xa5000, 0xb0000, 4):
    instr = struct.unpack_from('<I', data, off)[0]
    if (instr & 0xFFC00000) == 0xF9400000:
        imm12 = (instr >> 10) & 0xFFF
        actual_offset = imm12 * 8
        if actual_offset == 0x18:
            rn = (instr >> 5) & 0x1F
            rt = instr & 0x1F
            hits2.append((off, rn, rt))

print("Found %d hits:" % len(hits2))
for off, rn, rt in hits2:
    print("  0x%06x: ldr x%d, [x%d, #0x18]" % (off, rt, rn))

# KEY: key_engine stores Entry Key at [x20, 0x18] via "stur q0, [x20, 0x18]" (128-bit store)
# and [x20, 0x28] via "str x8, [x20, 0x28]"
# So we also need to search for reads from offset 0x28
print("\n=== ldr x?, [x?, #0x28] in Worker Thread code (0x7b000-0x8e000) ===")
hits3 = []
for off in range(0x7b000, 0x8e000, 4):
    instr = struct.unpack_from('<I', data, off)[0]
    if (instr & 0xFFC00000) == 0xF9400000:
        imm12 = (instr >> 10) & 0xFFF
        actual_offset = imm12 * 8
        if actual_offset == 0x28:
            rn = (instr >> 5) & 0x1F
            rt = instr & 0x1F
            hits3.append((off, rn, rt))

print("Found %d hits:" % len(hits3))
for off, rn, rt in hits3:
    print("  0x%06x: ldr x%d, [x%d, #0x28]" % (off, rt, rn))
