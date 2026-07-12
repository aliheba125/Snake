PID=12927
while read s c; do dd if=/proc/$PID/mem bs=4096 skip=$s count=$c 2>/dev/null; done < /data/local/tmp/regions_blocks.txt
