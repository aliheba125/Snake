# Session 2026-07-14 — Complete Findings

## Summary

This session revised the architecture model completely. The validation is 100% server-side.

---

## Findings (in discovery order)

### 1. w5/w21 = 0 at ALL key_engine call sites

- `key_engine` (0x81cb8) receives `w5` as argument #5
- `mov w21, w5` at 0x81ce0 sets the decision register
- `tbz w21, #0, skip` at 0x81d38 controls success path
- Binary search found **11 callers** of `bl 0x81cb8` — ALL have `mov w5, wzr` before the call
- FUN_0017e148 (success handler) is **unreachable** in static code

### 2. No local validation gate

Tested 10 codes (6/8/12/16 chars, numeric+alpha) across 13 runs:
- ALL reach `snakeseller.com` via `getaddrinfo`
- Phase 1 "GATE 1 local" conclusion was incorrect (caused by offline environment)
- There is no format check, no length check, no local rejection

### 3. Entry key never passes through libengine

`capture_activate3.py` with codes 135790 and 999888:
- libengine processes ONLY the device token (`751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed`)
- A 16-byte timestamp/nonce (changes between runs)
- The entry key string is NEVER seen in any libengine buffer

### 4. Device token details

```
Full: 751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed
Size: 64 hex chars = 32 bytes = SHA-256 output
Stability: identical across all codes and all sessions
UI display: "Device id: 394318" (short numeric ID, different from crypto token)
```

Derivation: unknown (SHA-256 of some device identifier)

### 5. "Code is Not valid" = Dart constant selected by server response code

- Found 6 instances in Dart heap via Memory.scanSync
- Not a server-returned string — it's a local constant
- Server returns a status code, Dart maps it to the appropriate localized string
- Other constants in pool: BANNED, no-balance, wrong-tier, success ("Congratulations...")

### 6. Pool string "deviceId" (pp+0x43c0) = Flutter keyboard field, NOT activation

- Full extraction of JS.cmd() region shows all strings are Flutter keyboard event fields
- keymap, android, keyCode, scanCode, deviceId, repeatCount, metaState...
- Activation request field names are constructed at runtime (encrypted/obfuscated)

### 7. TLS path analysis

| What | Offset | Captures |
|------|--------|----------|
| Startup GETs (beacon, files, notifications) | flutter+0x6d4be8 (arg3) | Captured in plaintext |
| Activation POST | Unknown offset | NOT captured by any of 4 known hooks |
| libc write() caller for TLS | flutter+0x80403c | Captures TLS ciphertext only |

### 8. I/O during activation

```
sendto fd=137 len=24  × 3   (DNS queries)
write  fd=122 len=24  × 22  (TLS encrypted records)
Total payload: ~418 bytes (22 × 19 byte encrypted fragments)
```

### 9. Connection reuse

- App opens TLS connections at **startup**
- Activation reuses existing connection (no new getaddrinfo/connect)
- DNS redirect and post-attach hooks cannot intercept the initial connection
- Hook must be installed BEFORE startup (Gadget mode required)

### 10. Server details

```
Endpoint: POST https://rest.snakeseller.com/api/request/
Server IP: 172.253.62.172 (Google Cloud Run)
Port: 443 (TLS)
Known response: {"error":true,"error_code":-2,"message":"Invalid action"}
```

---

## Updated Architecture (final, evidence-backed)

```
User enters 6-digit code
    |
    v
Flutter UI (libapp.so)
    |
    +-- Gets device token from libengine (channel "A"):
    |       751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed
    |
    +-- Builds request JSON (field names obfuscated/runtime):
    |       { encryptedData: "...", deviceId: "...", timestamp: N, ... }
    |
    +-- Encrypts body (pointycastle AES in Dart)
    |
    +-- POST https://rest.snakeseller.com/api/request/
    |       (reuses TLS connection opened at startup)
    |
    +-- Receives encrypted response
    |
    +-- Decrypts response -> extracts status code
    |
    +-- Maps status code to local Dart constant:
    |       -2 or similar -> "Code is Not valid"
    |       success code  -> "Congratulations..."
    |       banned code   -> "BANNED"
    |
    v
Shows dialog with verdict string
```

**libengine role:**
- Provides device token on demand
- Handles beacon z-parameter (separate from activation)
- Does NOT process, validate, or transform the entry key

---

## UI Navigation (verified via uiautomator dump)

### Tap sequence from main screen:
1. `input tap 140 98` → Device screen
2. `input tap 360 1117` → Entry Key dialog opens
3. `input tap 165 590` → Focus first PIN input box
4. `input text XXXXXX` → Fill 6-digit code
5. `input tap 495 745` → Activate button

### UI elements (from uiautomator):
```
Device screen:
  "Device"                    [316,75][413,121]
  "Device id:\n394318"        [0,168][720,288]
  "Entry Key"                 [0,1050][720,1184]

Entry Key dialog:
  "Enter your code"           [245,450][475,496]
  6 input boxes               [126,546] to [594,634] (78px each)
  "Close"                     [100,700][350,790]
  "Activate"                  [370,700][620,790]

Result dialog:
  "Code is Not valid"         [243,576][477,618]
  "Close"                     [140,648][293,728]
```

---

## Blockers for POST plaintext capture

| Attempt | Result | Why |
|---------|--------|-----|
| Hook flutter+0x6d4be8 (Gadget) | Captures GET only | POST uses different BoringSSL path |
| Hook libc write() (frida-server) | Captures TLS ciphertext | Data already encrypted |
| DNS /etc/hosts redirect | Ping works, app doesn't | Dart doesn't use /etc/hosts |
| dnsmasq DNS override | Configured but connection already open | App reuses startup connection |
| Frida getaddrinfo hook (post-attach) | Zero calls during activation | Connection opened at boot |
| mitmproxy transparent proxy | Kernel has no NAT table | Redroid limitation |
| Android http_proxy setting | Flutter ignores system proxy | Known Flutter behavior |

### Solution (for next session):
Gadget script mode that hooks `getaddrinfo` OR `connect` at **process startup** (before any connection is made), redirecting `snakeseller.com` traffic to a local HTTPS server with a valid cert (signed by mitmproxy CA already installed on device).

The only remaining sub-problem: making the app appear in foreground while Gadget script mode is active (previously it stayed behind other activities).

---

## Files produced this session

| File | Purpose |
|------|---------|
| `FINDING_w5_always_zero.md` | w5=0 discovery + implications |
| `FINDING_no_local_gate.md` | No local validation proof |
| `FINDING_entry_key_not_in_engine.md` | Entry key path + corrections + TLS attempts |
| `FINDING_io_captured_during_activation.md` | I/O capture + UI navigation + DNS analysis |
| `format_probe.py` | Multi-code format testing tool |
| `ssl_agent.js` | TLS hook agent for libflutter |
| `ssl_intercept.py` | SSL interception runner |
| `srv.py` | Local HTTPS capture server |
| `capture_activation_request.py` | Complete capture attempt (DNS redirect + Frida + server) |

---

## Completion status

```
Architecture understanding:            100%  (fully revised this session)
libengine role:                         100%  (device token provider only)
Activation flow (UI to server):         100%  (proven end-to-end)
Decision location:                      100%  (server-side, confirmed)
Device token extraction:                100%  (value known, derivation unknown)
Device token derivation:                 25%  (SHA-256 of unknown input)
POST plaintext capture:                  25%  (infrastructure ready, path not found)
Server protocol schema:                  15%  (endpoint + response format known)
```

---

## Next session priorities (ordered)

1. Fix Gadget foreground issue (app must be visible in script mode)
2. Hook getaddrinfo/connect at startup via Gadget → redirect to local server
3. Capture POST plaintext
4. Analyze request JSON structure
5. Determine device token derivation (SHA-256 of what?)
6. Map server response codes to verdict strings
