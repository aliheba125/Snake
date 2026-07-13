# UNKNOWNS — What We Do Not Know (and how to resolve it)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Everything below is **not** established. Each entry states what is missing and what experiment
would prove or disprove it. Nothing here should be cited as fact.

---

## Critical unknowns

### U‑01 — The exact Entry-Key validation algorithm 🟨
- **Known (NEW — July 13 session):**
  - Validation is local, symmetric, uses the AES engine built into libengine.
  - The 6-digit code is stored as 8-byte ASCII (`"135790"` → `31 33 35 37 39 30 00 00`).
  - The code is **immediately transformed** into a 32-byte (256-bit) high-entropy value (KDF):
    - `111111` → `6a37c0115fcfbde920775cffb0dc409052ef5e8b04b167a8491fd9a1e35136cf`
    - `135790` → `2ca02fce9ca0f0b2fa432a0258d2168499e4323e0412aa3c7a148a9ac2917d80`
  - The KDF output is **expanded as AES-256 key schedule** (8→16→32→64→128 bytes growth).
  - A **session-stable device constant** (`738738368b08c14fc7578908f99eb9da249f84a2785adc6af8cb6cb45f0b41c9`) is also present — different from the raw device token but likely derived from it.
  - Stalker successfully traced the validator: **1507 unique blocks across 41 function ranges** (vs. the old run's 200 blocks which caught beacon instead).
  - The comparison does NOT use libc `memcmp`/`strcmp` — it is inline.
- **Missing:** the precise KDF algorithm (code → 32 bytes), and whether the comparison is direct equality or another transform.
- **To resolve:** isolate the specific function that transforms the 8-byte code into the 32-byte output. The Stalker trace narrowed it to ~41 candidates; the function at `0x7eae18-0x7eb2cc` (584 bytes) is the prime suspect.
- **Evidence:** `evidence/beacon-crypto-traces/entry_key_kdf_evidence.json`

### U‑02 — Whether a valid Entry Key can be forged ❓ / ⬜
- **Known:** symmetric ⇒ not protected by asymmetric math; server issues keys bound to Device ID.
- **Missing:** the key-derivation inputs and algorithm (U‑01) and token derivation (U‑03).
- **To resolve:** only after U‑01+U‑03; then derive key, encrypt a valid payload with the current
  time bucket, and test in-app. **Not attempted successfully; do not claim forgeability.**

### U‑03 — Derivation of the stable device token `751fb123…` 🟨
- **Known:** 32 bytes, high entropy, session-stable, not on disk, not `SHA256` of
  android_id/app_instance_id/device_id/model (all tested; the android_id value used,
  `8840bf6a81679fc4`, is recorded in `evidence/runtime-memory/device_evidence.txt`).
- **NEW (July 13):** Token is stored in heap as **ASCII hex string** (64 chars), not raw bytes.
  It lives in a Dart `_OneByteString` object near `/data/user/0/com.snake/code_cache` string.
  A **separate session constant** `738738368b08c14fc7578908f99eb9da249f84a2785adc6af8cb6cb45f0b41c9`
  (32 raw bytes) is derived from it and used in the validation comparison.
- **To resolve:** trace the libengine calls that produce it at boot (libc/Stalker), or diff it
  against device inputs across multiple devices.

## Server-side unknowns

### U‑04 — Meaning of response record fields ❓
- **Known:** bytes [0,4,8,12] echo the client mask; fixed markers `9c1400`, `83000000`, `d900`,
  `00e0de08`; the rest varies per request (server data).
- **To resolve:** systematically vary `(time, id, mask)` and correlate every byte; collect many
  samples to classify markers (version? record type? seller id?).

### U‑05 — Deferred/backend validation of `z` 🟨
- **Known:** ingress accepts garbage `z` (no authenticity check at the edge). **NEW (July 13):**
  confirmed with controlled tests — all-zeros z, random z, any user-agent, any `v=` value all
  produce a valid 33-byte response. Short z (<49 bytes) or missing z → empty response.
  Same z sent 5× in rapid succession → 5 different responses (server adds randomness/nonce).
- **To resolve:** volume/behavioral testing — does the backend ever flag, rate-limit, or later
  reject forged beacons? Not observable from the client alone.
- **Evidence:** `evidence/network-diagnosis-logs/server_response_analysis.json`

## Business-tier unknowns (require access we don't have)

### U‑06 — Seller REST API schema + login 🟨
- **Known:** `rest.snakeseller.com/api/request/`; needs `Authorization`/`X-Req`/`X-Client`;
  rejects unauthenticated calls with "Authentication failed"; `action=*` parameter exists.
- **To resolve:** legitimate seller credentials (out of scope) to map the schema.

### U‑07 — In-game cheat behaviour ⬜
- **Known:** libengine has an app-virtualization/hooking engine (July‑8 static/emulation).
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

- Resolving U‑01+U‑02+U‑03 could establish whether the activation is forgeable. Until then, **the
  activation is neither broken nor proven unbreakable — it is undetermined.**
- U‑06/U‑07 concern the business/seller system and the in-game engine, which are separate from the
  beacon work that is already ✅ complete.
