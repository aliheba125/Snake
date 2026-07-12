# replace the attach block with retry logic in startup_cap.py
import re
src=open('/tmp/startup_cap.py').read()
old="session = dev.attach(pid)\n"
new=(
"session=None\n"
"for _try in range(40):\n"
"    try:\n"
"        session = dev.attach(pid); break\n"
"    except Exception as e:\n"
"        time.sleep(0.25)\n"
"if session is None:\n"
"    print('[!] attach failed'); sys.exit(3)\n"
"print('[*] attached after retries', flush=True)\n"
)
src=src.replace(old,new,1)
open('/tmp/startup_cap.py','w').write(src)
print('patched')
