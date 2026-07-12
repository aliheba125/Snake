#!/bin/bash
# Hunt for z bytes in ALL protection types by dumping /proc/PID/mem
# Args: $1 = pid, $2 = z48 hex (96 chars)
set -e
PID=$1
Z48=$2

if [ -z "$PID" ] || [ -z "$Z48" ]; then
    echo "usage: $0 PID Z48_HEX"; exit 1
fi

# Convert z48 hex string to raw bytes (in /tmp/pattern.bin)
python3 -c "import sys; sys.stdout.buffer.write(bytes.fromhex('$Z48'))" > /tmp/pattern.bin
# Also save just IV (first 16 bytes)
python3 -c "import sys; sys.stdout.buffer.write(bytes.fromhex('${Z48:0:32}'))" > /tmp/iv_pattern.bin
python3 -c "import sys; sys.stdout.buffer.write(bytes.fromhex('${Z48:32:32}'))" > /tmp/ct_prefix_pattern.bin  # first 16 of ct

echo "Pattern files:"
ls -la /tmp/pattern.bin /tmp/iv_pattern.bin /tmp/ct_prefix_pattern.bin
xxd /tmp/pattern.bin | head -3
echo ""

# Push patterns to device
adb -s localhost:5555 push /tmp/pattern.bin /data/local/tmp/pattern.bin >/dev/null
adb -s localhost:5555 push /tmp/iv_pattern.bin /data/local/tmp/iv_pattern.bin >/dev/null
adb -s localhost:5555 push /tmp/ct_prefix_pattern.bin /data/local/tmp/ct_prefix_pattern.bin >/dev/null

# Use device's grep on /proc/PID/mem
echo "=== Full 48-byte z pattern search ==="
adb -s localhost:5555 shell "
PID=$PID
if ! kill -0 \$PID 2>/dev/null; then echo 'PID dead!'; exit 1; fi
# grep binary bytes across mem file
grep -aobP -f /data/local/tmp/pattern.bin /proc/\$PID/mem 2>/dev/null | head -10
" 2>&1

echo ""
echo "=== IV-only (16 bytes) search ==="
adb -s localhost:5555 shell "
PID=$PID
grep -aob -f /data/local/tmp/iv_pattern.bin /proc/\$PID/mem 2>/dev/null | head -20
" 2>&1
