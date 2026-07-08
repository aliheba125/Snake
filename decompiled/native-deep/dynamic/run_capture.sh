#!/usr/bin/env bash
# أتمتة كاملة لالتقاط فكّ تشفير AES من com.snake على redroid.
# يشغّل frida-server متخفّيًا (اسم/منفذ غير قياسيين) + تجاوز الكشف + الالتقاط.
# التشغيل:  bash run_capture.sh
set -u
DEV="localhost:5555"
PKG="com.snake"
HERE="$(cd "$(dirname "$0")" && pwd)"
REPO="$(cd "$HERE/../../.." && pwd)"
APK="$REPO/raw/SE_2.2.6.apk"
SCRIPT="$HERE/frida_bypass_capture.js"
PORT=47771
LOG="$HOME/snake_capture_$(date +%s).log"

echo "== [1] توصيل الجهاز =="
adb connect "$DEV" >/dev/null 2>&1
adb -s "$DEV" wait-for-device
adb -s "$DEV" shell getprop sys.boot_completed

echo "== [2] frida-server متخفّي (fs01 على منفذ $PORT) =="
adb -s "$DEV" shell "killall -q frida-server fs01 2>/dev/null; \
  cp /data/local/tmp/frida-server /data/local/tmp/fs01 2>/dev/null; \
  chmod 755 /data/local/tmp/fs01; \
  nohup /data/local/tmp/fs01 -l 127.0.0.1:$PORT >/dev/null 2>&1 &"
sleep 2
adb -s "$DEV" forward tcp:$PORT tcp:$PORT >/dev/null 2>&1
frida -H 127.0.0.1:$PORT --version >/dev/null 2>&1 && echo "  frida متصل عبر $PORT" || echo "  تحذير: تعذّر الاتصال بـ frida على $PORT"

echo "== [3] تأكيد تثبيت التطبيق =="
adb -s "$DEV" shell pm path "$PKG" >/dev/null 2>&1 || adb -s "$DEV" install "$APK"

echo "== [4] الالتقاط (spawn + تجاوز الكشف)، مهلة 90ث =="
# نكزة احتياطية لتشغيل الشاشة بعد 25ث إن لزم
( sleep 25; adb -s "$DEV" shell monkey -p "$PKG" -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1 ) &
timeout 100 frida -H 127.0.0.1:$PORT -f "$PKG" -l "$SCRIPT" --no-pause 2>&1 | tee "$LOG"

echo
echo "== [5] الخلاصة =="
echo "السجل الكامل: $LOG"
echo "--- الأسطر المهمة ---"
grep -iE "KDF seeds|PLAINTEXT|ciphertext|EXIT-BLOCKED|prop-spoof|libengine.so @|DETECT" "$LOG" | tail -60
echo
echo "إن ظهر [KDF seeds] و[AES PLAINTEXT] => فُكّ التشفير بنجاح."
echo "إن ظهر [EXIT-BLOCKED] من libengine => أرسل السطور لتحديد روتين الكشف (svc مباشر)."
