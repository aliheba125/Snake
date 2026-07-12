#!/usr/bin/env python3
"""Analyze captured TLS records from 3 strace runs to understand the API request structure."""
import re
import subprocess

def extract_hex_from_strace(line):
    """Extract raw bytes from strace hex output."""
    match = re.search(r'write\(\d+, "(.*?)"', line, re.DOTALL)
    if not match:
        return b""
    raw = match.group(1)
    data = bytearray()
    i = 0
    while i < len(raw):
        if i < len(raw) - 3 and raw[i] == '\\' and raw[i+1] == 'x':
            try:
                data.append(int(raw[i+2:i+4], 16))
                i += 4
            except ValueError:
                i += 1
        elif raw[i] == '\\' and i < len(raw) - 1:
            esc = raw[i+1]
            if esc == 'n': data.append(0x0a)
            elif esc == 'r': data.append(0x0d)
            elif esc == 't': data.append(0x09)
            elif esc == '\\': data.append(0x5c)
            elif esc == '"': data.append(0x22)
            elif esc == '0': data.append(0x00)
            else: data.append(ord(esc))
            i += 2
        else:
            data.append(ord(raw[i]))
            i += 1
    return bytes(data)

# Collect all TLS-related writes from each run
for run in [1, 2, 3]:
    result = subprocess.run(
        ["adb", "-s", "localhost:5555", "shell", f"su 0 cat /data/local/tmp/str{run}.log"],
        capture_output=True, text=True
    )
    
    print(f"\n{'='*60}")
    print(f"  RUN {run} — TLS Records to backend")
    print(f"{'='*60}")
    
    # Find backend fd
    backend_fd = None
    for line in result.stdout.split("\n"):
        if "92.205.103.45" in line and "connect(" in line:
            m = re.search(r'connect\((\d+)', line)
            if m:
                backend_fd = m.group(1)
                break
    
    if not backend_fd:
        print("  Backend fd not found!")
        continue
    
    print(f"  Backend FD: {backend_fd}")
    
    # Extract writes on that fd
    tls_writes = []
    for line in result.stdout.split("\n"):
        if f"write({backend_fd}," in line:
            # Get the byte count
            m = re.search(r'= (\d+)$', line.strip())
            if m:
                count = int(m.group(1))
                data = extract_hex_from_strace(line)
                if count <= 300 and len(data) > 0:
                    tls_writes.append((count, data))
    
    # Show TLS records (small writes = TLS protocol, not images)
    print(f"  Small writes (<= 300 bytes): {len(tls_writes)}")
    for i, (count, data) in enumerate(tls_writes):
        if len(data) < 5:
            continue
        rtype = data[0]
        type_names = {0x14: "ChangeCipherSpec", 0x15: "Alert", 0x16: "Handshake", 
                      0x17: "ApplicationData"}
        tname = type_names.get(rtype, f"0x{rtype:02x}")
        
        if rtype in (0x16, 0x17, 0x14):
            version = (data[1] << 8) | data[2] if len(data) > 2 else 0
            length = (data[3] << 8) | data[4] if len(data) > 4 else 0
            print(f"  [{i}] {tname} v=0x{version:04x} len={length} (total={count}B)")
            print(f"      hex: {data[5:37].hex()}")
        else:
            print(f"  [{i}] Non-TLS write ({count}B): {data[:20].hex()}")

print(f"\n{'='*60}")
print("  COMPARISON of Application Data payloads")
print(f"{'='*60}")

# Re-extract just the \x17\x03\x03 records
app_data_records = []
for run in [1, 2, 3]:
    result = subprocess.run(
        ["adb", "-s", "localhost:5555", "shell", f"su 0 cat /data/local/tmp/str{run}.log"],
        capture_output=True, text=True
    )
    for line in result.stdout.split("\n"):
        if "\\x17\\x03\\x03\\x00\\x90" in line and "write(" in line:
            data = extract_hex_from_strace(line)
            if len(data) >= 20:
                app_data_records.append((run, data))
                break

for run, data in app_data_records:
    payload = data[5:]  # Skip TLS header
    print(f"\n  Run {run}: payload {len(payload)} bytes")
    print(f"    Seq:     {payload[:8].hex()}")
    print(f"    Content: {payload[8:-16].hex()}")
    print(f"    Tag:     {payload[-16:].hex()}")

# Analysis
if len(app_data_records) >= 2:
    print(f"\n  PATTERN ANALYSIS:")
    p1 = app_data_records[0][1][5:]
    p2 = app_data_records[1][1][5:]
    
    # Check what's constant
    same_positions = sum(1 for a, b in zip(p1, p2) if a == b)
    print(f"    Same bytes between run 1 & 2: {same_positions}/{len(p1)}")
    print(f"    Sequence numbers both start at: {p1[:8].hex()} / {p2[:8].hex()}")
    
    # In TLS 1.3 with AES-GCM:
    # - The nonce is XOR of seq_num and a per-connection IV
    # - Every byte of ciphertext changes between sessions (different keys)
    # So 0 same bytes (after seq) is expected
    content1 = p1[8:]
    content2 = p2[8:]
    same_content = sum(1 for a, b in zip(content1, content2) if a == b)
    print(f"    Same bytes in encrypted content: {same_content}/{len(content1)}")
    print(f"    (Expected ~0 for properly encrypted TLS — confirms AES-GCM)")
    
    # The plaintext size after decryption:
    # 144 (TLS payload) - 8 (explicit nonce/seq in TLS 1.2, or 0 in TLS 1.3) - 16 (GCM tag)
    # TLS 1.3: payload = encrypted(plaintext + content_type) + tag
    # So: plaintext + 1 = 144 - 16 = 128 bytes
    # plaintext = 127 bytes
    
    # BUT: the seq (00 00 00 00 00 00 00 01) is part of the payload in strace
    # In TLS 1.3, sequence number is NOT in the wire format!
    # In TLS 1.2, there's no explicit seq in the record.
    # The 00 00 00 00 00 00 00 01 IS part of the encrypted data (first 8 bytes after header)
    
    # Re-analysis: all 144 bytes after the 5-byte header are: nonce(implicit)+ciphertext+tag
    # For TLS 1.3 AES-128-GCM: ciphertext = payload[0:-16], tag = payload[-16:]
    # ciphertext = 144 - 16 = 128 bytes of encrypted (plaintext_content + inner_content_type)
    # So actual plaintext HTTP body = 128 - 1 = 127 bytes
    
    # For HTTP/2, 127 bytes could contain:
    # - HEADERS frame (9 byte frame header + HPACK compressed headers)
    # - DATA frame (9 byte frame header + body)
    # Or a single frame with everything
    
    print(f"\n  CONCLUSION:")
    print(f"    TLS payload: 144 bytes")
    print(f"    GCM tag: 16 bytes (last)")
    print(f"    Encrypted content: 128 bytes")
    print(f"    After decryption: 127 bytes plaintext + 1 byte content_type(0x17)")
    print(f"    This 127 bytes contains the HTTP/2 frame(s) for the API request")
    print(f"    HTTP/2 frame header = 9 bytes, so body ≈ 118 bytes")
    print(f"    118 bytes of form-encoded body = plausible for:")
    print(f"      action=init&deviceId=8840bf6a81679fc4&timestamp=1783807109&token=<~50chars>")
