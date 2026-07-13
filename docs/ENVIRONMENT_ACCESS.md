# Environment Access — How to Connect and Resume Work

This document gives any agent (or researcher) with IAM/SSH access the exact steps to reach
the live testing environment and resume work from where it was left off.

---

## 1. Server Access

| Item | Value |
|------|-------|
| Host | `44.198.192.12` (AWS EC2, us-east-1, Graviton ARM64 `m9g.2xlarge`) |
| User | `ubuntu` |
| SSH Key | Stored in the environment secret `EC2_SSH_KEY` (Ed25519) |
| Key setup | Write to `~/.ssh/snake-key.pem` with `chmod 600` |

### Connection command

```bash
# Write the key (if not already present)
python3 -c "
import os
raw = os.environ['EC2_SSH_KEY']
begin = '-----BEGIN OPENSSH PRIVATE KEY-----'
end = '-----END OPENSSH PRIVATE KEY-----'
body = raw.replace(begin, '').replace(end, '').strip()
tokens = body.split()
b64 = ''.join(tokens)
lines = [b64[i:i+70] for i in range(0, len(b64), 70)]
pem = begin + '\n' + '\n'.join(lines) + '\n' + end + '\n'
path = os.path.expanduser('~/.ssh/snake-key.pem')
with open(path, 'w') as f: f.write(pem)
os.chmod(path, 0o600)
"

# Connect
ssh -i ~/.ssh/snake-key.pem -o StrictHostKeyChecking=no ubuntu@44.198.192.12
```

---

## 2. Android Device (Redroid 14)

The server runs a **Redroid 14** (Android 14, arm64-only) container in Docker.

| Item | Value |
|------|-------|
| Container name | `redroid14` |
| ADB port | `localhost:5555` |
| Frida Gadget port | `27052` (TCP, listen mode) |

### ADB access

```bash
# From the EC2 host:
adb -s localhost:5555 shell

# Or with adb forwarding from this sandbox:
adb -s localhost:5555 forward tcp:27052 tcp:27052
```

### Root access inside the container

```bash
sudo docker exec redroid14 sh -c "<command>"
# Example: read app data
sudo docker exec redroid14 cat /data/data/com.snake/shared_prefs/com.snake.xml
```

---

## 3. Frida Gadget Setup

The app (`com.snake`) uses **Frida Gadget 17** in listen mode, injected at boot via
`LD_PRELOAD`. The gadget binary lives at `/system/lib64/libskia_android.so` inside the
container (placed there to bypass the app's `/proc/self/maps` scan).

### Launch the app with Gadget

```bash
# Set the LD_PRELOAD prop (persists until device reboot)
adb -s localhost:5555 shell setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"

# Force stop + start
adb -s localhost:5555 shell am force-stop com.snake
adb -s localhost:5555 shell am start -n com.snake/com.Entry
```

### Attach from Python (Frida)

```python
import frida, time

# Forward the gadget port first (if connecting remotely)
# adb -s localhost:5555 forward tcp:27052 tcp:27052

device = None
for i in range(90):
    time.sleep(0.08)
    try:
        d = frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs:
            device = d
            break
    except:
        pass

session = device.attach(device.enumerate_processes()[0].pid)
script = session.create_script("... your JS code ...")
script.load()
```

---

## 4. Anti-Tamper Rules (IMPORTANT)

| Action | Result |
|--------|--------|
| `Interceptor.attach` on `libengine.so` `.text` | **App dies in ~1.3s** |
| Write to `libengine.so` `.data`/`.bss` globals | Safe |
| Hook `libc` exports (malloc, memcmp, getaddrinfo...) | Safe |
| Hook `libflutter.so` (SSL_write at `+0x6d4be8`) | Safe |
| Frida **Stalker** (dynamic recompilation) | Safe |
| Gadget under `/data/local/tmp/` | Detected on UI interaction |
| Gadget at `/system/lib64/libskia_android.so` | Safe |

**Never use `Interceptor.attach` directly on libengine code addresses.**
Use `libc` hooks filtered by return-address, or Stalker, or global-read polling.

---

## 5. Key Paths on the Server

| Path | Contents |
|------|----------|
| `/tmp/*.py` | Working scripts (copies of what's in this repo under `scripts/beacon-crypto/`) |
| `/tmp/*.json` | Capture results from previous runs |
| `/tmp/*.log` | Execution logs |
| `/system/lib64/libskia_android.so` | Frida Gadget 17 (inside the redroid container) |

---

## 6. Key libengine Globals (runtime offsets from module base)

| Offset | Global | What it holds |
|--------|--------|---------------|
| `+0x8280f0` | `DAT_009280f0` | Pointer to 32-byte **AES master key** (per-session, time-derived) |
| `+0x8280f8` | `DAT_009280f8` | Pointer to decrypted beacon response (~48 bytes) |
| `+0x8281a8` | `DAT_009281a8` | Pointer to 256-byte **AES S-box** (standard, built at runtime) |
| `+0x8281c0` | `DAT_009281c0` | Pointer to inverse AES S-box (decrypt path) |
| `+0x8281a0` | `DAT_009281a0` | Baseline for time bucket (observed = 0) |

### Reading a global at runtime (safe)

```javascript
var eng = Process.findModuleByName("libengine.so");
var keyPtr = eng.base.add(0x8280f0).readPointer();
if (!keyPtr.isNull()) {
    var key = keyPtr.readByteArray(32);
    // key is the current session's AES-256 master key
}
```

---

## 7. Beacon Endpoint (for curl testing)

```bash
# Send a crafted z (any valid-hex >=64 chars works)
curl -s "https://push-918010152455.europe-west1.run.app/?z=0c$(openssl rand -hex 48)&v=20" \
  -H "user-agent: Dart/3.5 (dart:io)"
# Returns: 66 hex chars (33-byte encrypted response)
```

---

## 8. Quick-Start Checklist (for a new agent session)

1. ✅ Write SSH key from `EC2_SSH_KEY` secret → `~/.ssh/snake-key.pem`
2. ✅ `ssh -i ~/.ssh/snake-key.pem ubuntu@44.198.192.12`
3. ✅ `adb -s localhost:5555 forward tcp:27052 tcp:27052`
4. ✅ Set `wrap.com.snake` prop + force-stop + start the app
5. ✅ Attach Frida via `127.0.0.1:27052`
6. ✅ Read `MASTER_INDEX.md` → `docs/11_Next_Steps.md` for what to work on
7. ✅ Follow anti-tamper rules above (no `.text` hooks on libengine!)

---

## 9. Where to Continue (the open work)

See [`11_Next_Steps.md`](11_Next_Steps.md) — ordered by value:

1. **Isolate the Entry-Key validator** precisely with Stalker on the UI thread
2. **Recover the device-token derivation** (`751fb123...`)
3. **Determine Entry-Key KDF** → decide if forgeable
4. Decode response record field semantics
5. Seller REST API schema (needs credentials)
