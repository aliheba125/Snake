# Activation Internals — Runtime Analysis of the Entry-Key Validation

**Date**: 2026-07-12
**Method**: Live capture on Redroid 14. Buffers captured by snapshotting libengine
wrapper-malloc allocations just before `free()` during the "Activate" action.
Findings tagged PROVEN / INFERRED / UNKNOWN.

---

## Context (from repo review + website frontend)

The captured website bundle (`session-2026-07-11/.../snakeengine_frontend.js`) reveals the
purchase→activation flow (PROVEN from strings):

- Buyer enters their **Device ID** on the website checkout (`checkout.deviceIdPlaceholder`:
  "Enter your device ID from Snake Engine app").
- Two activation types: **Get Key** ("Receive an activation key") or **Direct Activation**
  ("Activate your device instantly").
- On success: `success.activationKey` "Your Activation Key" + `success.keyHint`
  "Open Snake Engine app → Enter this key to activate."

So the Entry Key is **server-generated after payment, bound to a Device ID**. The app then
validates it **locally** (proven below).

---

## PROVEN (runtime observation)

### 1. Code validation is entirely local
- 0 DNS/connect calls during "Activate" (hooked getaddrinfo/connect).
- ~127 libengine crypto allocations occur during "Activate" (AES wrapper at `0x800290`).
- Conclusion: the 6-digit key is validated offline using libengine's AES machinery.

### 2. A stable 32-byte device token is processed during Activate
Captured identically across multiple sessions with **different** master keys and
**different** entered codes:

```
751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed   (64 hex = 32 bytes)
```

| Run | master_key (session-varying) | 32-byte token during Activate |
|-----|------------------------------|-------------------------------|
| earlier (code 135790) | (session A) | 751fb123…2ae9ed |
| earlier (code 999888) | (session B) | 751fb123…2ae9ed |
| runB (code 246810) | 5fec4f76… | 751fb123…2ae9ed |
| runC (code —) | 33b09a37… | 751fb123…2ae9ed |

The token is **identical** while the master key changes every run → the token is
**device-bound and session-stable**, NOT derived from the time-bucket key and NOT
derived from the entered code.

### 3. The token is not stored on disk and not a trivial hash
- Not found as text in `/data/data/com.snake/` (files, prefs, db).
- The hex-named files there are PNG asset caches (verified: PNG magic bytes), not tokens.
- Not equal to SHA256 of: android_id (`8840bf6a81679fc4`), app_instance_id, device_id
  (`394318`), device model, or simple concatenations (all tested, no match).
- Distinct-byte count 31/32 → high entropy (encrypted or keyed-hash output).

### 4. Two distinct structures appear during Activate
- The stable 32-byte token (above).
- A larger serialized blob with repeating tag `d?3da506…` that **varies per run**
  (runA and runD produced different blobs). This is the per-attempt serialized state
  (device state + entered code container), consistent with the protobuf-like
  serialization seen in `FUN_0017b42c`/`FUN_0017e148` (which call the AES encrypt/decrypt).

### 5. The entered code is not stored verbatim in captured buffers
- Codes "135790", "999888", "246810", "394318" never appeared as ASCII or packed hex in
  the wrapper-malloc buffers → the code is transformed (hashed/encrypted) before comparison,
  not memcmp'd as a string.

---

## INFERRED (consistent with evidence, not directly proven)

- Activation compares a transform of the entered 6-digit code against a value derived from
  the stable device token `751fb123…`. Because validation is local and the token is the only
  device-stable secret observed, the check is effectively:
  `valid ⇔ transform(code, device_token) == expected` — computed entirely on-device.
- The valid Entry Key is issued by the server (website checkout) using a generation secret
  tied to the Device ID; the app only needs the device token to *verify* it, not to *generate*
  it. This is why the app can validate offline but a user still must buy a key.
- The `d?3da506…` blob is the serialized activation record (device state + code) that the AES
  layer processes; the stable token is the verification anchor.

---

## UNKNOWN (requires further work / blocked)

| Question | Why still open |
|----------|----------------|
| Exact transform mapping code → comparison value | Requires RE of the OLLVM-obfuscated ~200-line validator, or hooking libengine .text (blocked by anti-tamper: .text hooks kill the app in ~1.3 s) |
| How the 32-byte device token is derived | High-entropy, not on disk, not a simple hash of known IDs; likely AES-derived from device material inside libengine |
| Whether a valid key can be generated offline | Depends on whether verification uses a symmetric secret present on-device (derivable) or an asymmetric signature (not derivable). Not yet determined. |
| Meaning of the `d?3da506` serialized fields | Would need to parse the custom serialization format |

---

## Honest boundary

We have PROVEN the validation is local, identified the stable device-bound verification token,
and shown the code is transformed (not string-compared). We have NOT determined the exact
algorithm, NOT derived the token, and NOT generated a valid key. Turning this into a working
offline key generator/validator would require defeating the .text anti-tamper (to trace the
validator live) or a substantial static analysis effort on the obfuscated code —
neither of which is completed here.

## Scripts
- `scripts/capture_activate3.py` — capture crypto buffers during Activate for a given code
- `scripts/correlate_activate.py` — capture master key + beacon response + Activate token per run
- `scripts/test_code_network.py` — proves code validation triggers no network
