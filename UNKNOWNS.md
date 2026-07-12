# UNKNOWNS — What We Do Not Know (and how to resolve it)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Everything below is **not** established. Each entry states what is missing and what experiment
would prove or disprove it. Nothing here should be cited as fact.

---

## Critical unknowns

### U‑01 — The exact Entry-Key validation algorithm ❓
- **Known:** validation is local, symmetric, ~127 AES ops; the entered code is transformed (not
  string-compared); a representative decrypt+time-window pattern exists in `FUN_0017e148`.
- **Missing:** the precise key-derivation from the 6-digit code and the exact comparison.
- **To resolve:** Stalker-trace the *UI thread* starting exactly when the Dart→FFI activation call
  enters libengine (avoid catching the periodic beacon task); capture args to `FUN_00160208` and
  the comparison operands. Blocker: OLLVM flattening + `.text` anti-tamper (no `Interceptor` on
  libengine).

### U‑02 — Whether a valid Entry Key can be generated ❓ / ⬜
- **Known:** symmetric ⇒ not protected by asymmetric math; server issues keys bound to Device ID.
- **Missing:** the key-derivation inputs and algorithm (U‑01) and token derivation (U‑03).
- **To resolve:** only after U‑01+U‑03; then derive key, encrypt a valid payload with the current
  time bucket, and test in-app. **Not attempted successfully; do not claim generation capability.**

### U‑03 — Derivation of the stable device token `751fb123…` ❓
- **Known:** 32 bytes, high entropy, session-stable, not on disk, not `SHA256` of
  android_id/app_instance_id/device_id/model (all tested).
- **To resolve:** trace the libengine calls that produce it at boot (libc/Stalker), or diff it
  against device inputs across multiple devices.

## Server-side unknowns

### U‑04 — Meaning of response record fields ❓
- **Known:** bytes [0,4,8,12] echo the client mask; fixed markers `9c1400`, `83000000`, `d900`,
  `00e0de08`; the rest varies per request (server data).
- **To resolve:** systematically vary `(time, id, mask)` and correlate every byte; collect many
  samples to classify markers (version? record type? seller id?).

### U‑05 — Deferred/backend validation of `z` ❓
- **Known:** ingress accepts garbage `z` (no authenticity check at the edge).
- **To resolve:** volume/behavioral testing — does the backend ever flag, rate-limit, or later
  reject crafted beacons? Not observable from the client alone.

## Business-tier unknowns (require access we don't have)

### U‑06 — Seller REST API schema + login 🟨
- **Known:** `rest.snakeseller.com/api/request/`; needs `Authorization`/`X-Req`/`X-Client`;
  rejects unauthenticated calls with "Authentication failed"; `action=*` parameter exists.
- **To resolve:** legitimate seller credentials (out of scope) to map the schema.

### U‑07 — In-game behaviour ⬜
- **Known:** libengine has an app-virtualization engine (July‑8 static/emulation).
- **To resolve:** install a target game + a valid subscription; observe the `:engine` process and
  the `FUN_00160208` game-patch decryption path live.

## Method-level uncertainties

### U‑08 — Is `FUN_0017e148` the Entry-Key validator? 🟨
- Stalker windows during Activate landed on beacon serialization, not a confirmed validator trace.
- Resolve with U‑01's precise isolation.

### U‑09 — Is `DAT_009280f8` byte-exactly the decrypted reply? 🟨
- Timing matches (~+110 ms after beacon) but contents were unstable across polls.
- Resolve by hooking the store site precisely (Stalker) and comparing to the decrypted reply.

---

## What "resolving these" would and would not mean

- Resolving U‑01+U‑02+U‑03 could establish whether the activation key is derivable. Until then, **the
  activation is neither broken nor proven unbreakable — it is undetermined.**
- U‑06/U‑07 concern the business/seller system and the in-game engine, which are separate from the
  beacon work that is already ✅ complete.
