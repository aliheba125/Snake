# Capability Assessment — What Can and Cannot Be Done

**Date**: 2026-07-12
**Ownership & authorization**: All app, account, and server analysis here is on the **owner's own** systems, with the owner's authorization.
**Purpose**: Honest assessment of proven capabilities vs unproven claims, responding to the final evaluation framework.

---

## Proven Capabilities (tested and documented)

### 1. Beacon Protocol: Complete Understanding (95%+)

| Aspect | Status | Evidence |
|--------|--------|----------|
| z structure | ✅ decoded | `padlen \|\| AES-256-ECB(key, plaintext)` |
| Master key derivation | ✅ reproduced offline | `key = SHA256(shuffle(SHA256(prng16(floor(time/16))), seed))` |
| Plaintext structure (uplink) | ✅ decoded | `[4 zeros][interleave(P, Q)]`; P = `id^mask \|\| mask \|\| time^mask` |
| Server processing | ✅ proven | Server decrypts z, extracts (time,id,mask), encrypts reply with `SHA256(gen32(time,id))` |
| Response decryption (downlink) | ✅ decoded | 32-byte structured record; echoes client mask; constant markers + server-varying fields |
| Full bidirectional protocol | ✅ reproduced offline | Both directions reproduced byte-for-byte |

### 2. Local App Modification (proven feasible)

| Modification | Status | Evidence |
|-------------|--------|----------|
| Write to DATA/BSS globals | ✅ safe | App survived 5+ seconds after writing to `DAT_009280f8` |
| Inject crafted beacon response | ✅ safe | Wrote 32 bytes of chosen data; app continued normally |
| Hook libc functions (malloc, etc.) | ✅ safe | Used throughout all captures |
| Write to .TEXT (code patching) | ❌ kills app | Anti-tamper detects within ~1.3 seconds |
| Frida Interceptor on libengine | ❌ kills app | Same detection mechanism |
| Frida Gadget in listen mode | ✅ works | Used as LD_PRELOAD via libskia_android.so |

**Anti-tamper model**: The app monitors its .TEXT section integrity (likely periodic hash check of code pages). Writing to .DATA/.BSS does NOT trigger detection. libc/libflutter hooks are safe because they're in different modules.

### 3. App Architecture Understanding

**Snake Engine** is a seller-facing platform for game key subscriptions:

```
┌──────────────────────────────────────────────────────────────────┐
│                    Snake Engine (com.snake)                        │
│                                                                    │
│  ┌─────────────────┐   ┌───────────────────────────────────┐     │
│  │ Beacon Protocol  │   │ Seller REST API                   │     │
│  │ (anonymous)      │   │ (authenticated)                   │     │
│  │                  │   │                                   │     │
│  │ • Cold-launch    │   │ • Login (email+password)          │     │
│  │ • No auth needed │   │ • View orders                    │     │
│  │ • crypto c/r     │   │ • Manage subscriptions           │     │
│  │ • one-shot       │   │ • Device activation              │     │
│  │                  │   │ • Key generation                  │     │
│  │ → push-*.run.app│   │ • Profile management             │     │
│  │                  │   │ → rest.snakeseller.com           │     │
│  └────────┬─────────┘   └───────────────┬───────────────────┘     │
│           │                              │                         │
│           │ Response stored              │ Auth token (cip_pub)    │
│           │ in DAT_009280f8              │ in SharedPreferences    │
│           │ (never persisted)            │ (persisted)             │
│           │                              │                         │
│  ┌────────▼──────────────────────────────▼───────────────────┐    │
│  │               Dart / Flutter UI Layer                      │    │
│  │  • Multi-language (English, Filipino, Spanish, Malay)      │    │
│  │  • Seller dashboard, order list, activation flows          │    │
│  └────────────────────────────────────────────────────────────┘    │
└──────────────────────────────────────────────────────────────────┘
```

Key business logic:
- **Subscriptions**: device-locked, time-limited, tier-based
- **Keys**: generated codes locked to specific device IDs
- **Activation**: seller activates devices for customers
- **Access token**: displayed to seller in-app ("Your Access Token — Keep it safe")

### 4. Server Endpoint Behavior

| Endpoint | Auth | Status |
|----------|------|--------|
| `push-*.run.app` (beacon) | None (structure-validated) | ✅ Fully interactable from any machine |
| `rest.snakeseller.com/api/request/` | Required (email+password → token) | ❌ Rejects all our requests ("Authentication failed") |
| `storage.googleapis.com` | Firebase auto-auth | Not tested (standard GCS/Firebase) |

---

## Unproven Capabilities (honest)

### Server Control — ❌ NOT proven

- We cannot modify server behavior
- We cannot access server admin panels
- We cannot read server-side data (user accounts, keys, orders)
- The server is a Google Cloud Run instance (managed, no direct access)

### Login Access — ❌ NOT proven

- The REST API requires a valid auth token (from email+password login)
- We have no valid credentials
- The beacon response token ≠ the REST API auth token (proven: "Authentication failed" when used as Bearer)
- No token generation was attempted or achieved

### Account Access — ❌ NOT proven

- Cannot access any seller's account
- Cannot view/modify orders, keys, or subscriptions
- Cannot impersonate another user/device on the REST API

---

## What IS practically achievable (within proven bounds)

1. **Device spoofing on the beacon**: send crafted beacons that the server processes as if from a real device (since no authenticity validation exists). Purpose unclear — may register phantom devices.

2. **Local response injection**: override the app's view of the server's response by writing to `DAT_009280f8`. Could potentially:
   - Make the app believe it has a valid subscription (if the response contains subscription status)
   - Alter displayed information in the Dart UI
   - However: without understanding all response fields, actual impact is speculative

3. **Offline protocol simulation**: fully simulate both sides of the beacon exchange without any server involvement. Could be used to build a standalone mock server.

4. **Data modification (partial)**: modify DATA-section globals freely, but cannot patch code instructions without triggering detection.

---

## Assessment Matrix (addressing the reviewer's framework)

| Element | Score | Justification |
|---------|-------|---------------|
| Beacon protocol understanding | 🟢 95% | Both directions decoded + reproduced byte-for-byte + field-level semantics |
| Cryptography understanding | 🟢 95% | AES-256-ECB + key derivation (time-bucket SHA-256 chain) + response key (0x9E3779B1 mixer + SHA-256) — all verified independently |
| Full app understanding | 🟡 60% | Architecture mapped (2-tier), business logic understood (seller platform), flows identified. NOT decoded: all Dart-layer logic, full REST API schema, exact purpose of beacon response fields |
| Local modification capability | 🟡 70% | DATA-section patching works (proven). CODE patching blocked by anti-tamper. Response injection possible but effect on app behavior not fully measured. |
| Server control | 🔴 0% | Not attempted; server is managed Cloud Run; no access |
| Login access | 🔴 0% | REST API auth is separate system; no access obtained |

---

## Files
- `scripts/test_inject.py` — proves DATA-section writing is safe (app survives injection)
