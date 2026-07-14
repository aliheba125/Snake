# FINDING: Entry Key does NOT pass through libengine — Dart sends it directly

**Date:** 2026-07-14
**Method:** `capture_activate3.py` — capturing all malloc/free crypto buffers inside libengine during Activate with two different codes (135790 and 999888).

## Discovery

During Activate, libengine processes ONLY:
1. **Device token** (`751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed`) — 64-char hex = SHA-256 digest, stable across all codes
2. **A 16-byte binary value** that changes between runs (timestamp/counter/nonce)
3. These repeat 3 times (retry pattern, ~1sec intervals)

**The entry key (135790, 999888, etc.) NEVER appears** in any libengine buffer — not as plaintext, not as hex, not as any transformation recognizable from the input.

## Evidence

### Code 135790:
```
HEXSTR sz=48: 751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70
HEXSTR sz=96: 751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed
binary sz=16: 0020252b97fd000030f8810000000000
```

### Code 999888:
```
HEXSTR sz=48: 751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70
HEXSTR sz=96: 751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed
binary sz=16: 00606f8f66ec000030f8810000000000
```

### Comparison:
- Device token: IDENTICAL (code-independent, device-bound)
- 16-byte binary: DIFFERENT (first 8 bytes change = timestamp/nonce; last 8 stable)
- Entry key: NOT PRESENT anywhere

## Implication

The activation request is built in the **Dart layer**, not libengine:

```
Dart layer (libapp.so):
  1. Takes entry key from UI
  2. Takes device token from libengine (via channel "A" / ilil)
  3. Encrypts with pointycastle (AES, key from server session)
  4. Sends HTTPS POST to rest.snakeseller.com/api/request/
     Body: { encryptedData: "..." }
  5. Receives encrypted response
  6. Decrypts and displays verdict

libengine role:
  - Provides device token on demand
  - Handles the beacon z-parameter (separate from activation)
  - Does NOT process, validate, or transform the entry key
```

## Updated complete model

```
[User enters code]
    |
    v
[Dart/Flutter UI]
    |
    +-- Gets device token from libengine (channel "A")
    |       libengine returns: 751fb123...64chars (stored/derived at boot)
    |
    +-- Builds activation request JSON:
    |       { "code": "135790", "deviceId": "751fb123...", "action": "activate", ... }
    |
    +-- Encrypts with pointycastle AES (session key from prior auth exchange)
    |
    +-- HTTPS POST rest.snakeseller.com/api/request/
    |       Body: { "encryptedData": "<base64>" }
    |
    +-- Receives response, decrypts
    |
    +-- Verdict: "Code is Not valid" / "Congratulations..." / "BANNED" / etc.
    |
    v
[UI shows dialog]
```

## Corrections to prior findings

1. **Phase 1 "local gate" = WRONG** (confirmed again: entry key never touches libengine)
2. **"Code is Not valid" from engine-decrypted string via ilil" = NEEDS REVISION** — the verdict text may come from server response decrypted in Dart, not from libengine ilil()
3. **w5=0 meaning** = "beacon/device-token request mode" (not activation validation mode)

## Device token analysis

Full token: `751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed`
- 64 hex chars = 32 bytes = SHA-256 output size
- Stable across all codes and all sessions (device-bound)
- Derivation still unknown (likely SHA-256 of android_id or hardware identifiers)

## Next steps

1. **Trace Dart layer** (libapp.so via blutter) — find the class that builds the activation request JSON
2. **Identify pointycastle encryption** — what key is used? Is it the beacon-derived session key?
3. **Compare with beacon protocol** — does the `encryptedData` format match the z-parameter?
4. **Hook Dart HTTP client** — capture the plaintext JSON before encryption (if possible via Java layer)

---

## ADDENDUM: Dart request-builder class identified

**Date:** 2026-07-14 (same session)
**Method:** Binary search for pool-entry references + blutter asm correlation

### Discovery

Searched for ARM64 `ldr` instructions that load "deviceId" (pp+0x43c0) and "code" (pp+0x4628)
from the Dart object pool inside `libapp.so`:

| Pool entry | String | Load site(s) in libapp.so |
|:---:|:---:|:---:|
| pp+0x43c0 | "deviceId" | 0x500620 (1 hit) |
| pp+0x4628 | "code" | 0x501a80, 0x3997c0, 0x39a364, 0x40e378, 0x2ce280 |

The two primary sites (0x500620 and 0x501a80) are **in the same function region** — identified
via blutter as belonging to **class `JS`** in `beg.dart`:

```dart
class JS extends Object {
    Future<Map<String, dynamic>> cmd(dynamic, dynamic)  // addr: 0x4feb18
    void _fmd(dynamic, ET)                              // addr: 0x501cd0  
    bool Zld(dynamic, hq)                               // addr: 0x50259c
}
```

**`JS.cmd()` is the HTTP request builder** — it:
1. Loads "deviceId" and "code" from pool as Map keys
2. Builds the JSON payload `{deviceId: "...", code: "...", ...}`
3. Returns `Future<Map<String, dynamic>>` (the parsed server response)

### Next step

Disassemble `JS.cmd()` (0x4feb18, ~6KB) to identify:
- All pool keys used in the request body
- Where pointycastle encryption is called
- How the response is parsed and which field determines the verdict
