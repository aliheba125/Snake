#!/bin/bash
# Multi-capture: 3 fresh launches with strace to compare TLS payloads

# Remove gadget wrap
adb -s localhost:5555 shell "su 0 setprop wrap.com.snake ''"

for RUN in 1 2 3; do
    echo ""
    echo "====== RUN $RUN ======"
    
    # Clean start
    adb -s localhost:5555 shell pm clear com.snake > /dev/null 2>&1
    sleep 2
    
    # Start app
    adb -s localhost:5555 shell am start -n com.snake/com.Entry > /dev/null 2>&1
    sleep 2
    
    # Get PID
    APP_PID=$(adb -s localhost:5555 shell pidof com.snake | tr -d "\r")
    echo "  PID=$APP_PID"
    
    if [ -z "$APP_PID" ]; then
        echo "  FAILED TO START"
        continue
    fi
    
    # Strace for 12s
    adb -s localhost:5555 shell "su 0 timeout 12 strace -f -p $APP_PID -e trace=write,sendto,connect -s 600 -x 2>/data/local/tmp/str${RUN}.log" &
    sleep 13
    wait 2>/dev/null
    
    # Extract: find backend connect fd, then get TLS app data on that fd
    echo "  Backend connects:"
    adb -s localhost:5555 shell "su 0 grep '92.205.103.45' /data/local/tmp/str${RUN}.log" | head -3
    
    # Get backend fd number
    BFD=$(adb -s localhost:5555 shell "su 0 grep '92.205.103.45' /data/local/tmp/str${RUN}.log" | grep -oP 'connect\(\K[0-9]+' | head -1)
    echo "  Backend FD: $BFD"
    
    if [ -n "$BFD" ]; then
        # Get writes on that fd (TLS records)
        echo "  Writes to backend fd $BFD:"
        adb -s localhost:5555 shell "su 0 grep 'write($BFD,' /data/local/tmp/str${RUN}.log" | while read line; do
            # Extract byte count
            BYTES=$(echo "$line" | grep -oP '= \K[0-9]+')
            echo "    [$BYTES bytes] $(echo "$line" | head -c 200)"
        done
    fi
    
    echo ""
done
