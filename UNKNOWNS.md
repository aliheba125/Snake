# UNKNOWNS — What We Do Not Know (and how to resolve it)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Everything below is **not** established. Each entry states what is missing and what experiment
would prove or disprove it. Nothing here should be cited as fact.

---

## Critical unknowns

### U‑01 — The exact Entry-Key validation algorithm ❓ (narrowed — 🟦 In Progress)
- **Known:** validation is local, symmetric, ~127 AES ops; the entered code is transformed (not
  string-compared); a representative decrypt+time-window pattern exists in `FUN_0017e148`.
- **NEW (July‑13, Stalker v2):** The activation path was **cleanly isolated** using burst-detection
  Stalker (2 reproducible runs, CODE 135790 & 999888 — identical 21 ranges, 372 instructions).
  **Key finding:** the activation **does NOT call** any of the beacon crypto functions
  (`FUN_00160208` AES, `FUN_00161788` gen32/KDF, `FUN_0016169c` master_key, `FUN_001614a4` PRNG16,
  `FUN_00161598` shuffle, `FUN_00165b70` beacon_builder). It uses a **separate set of functions:**
  `0x618a4–0x61904`, `0x61938–0x6196c`, `0x7aef0–0x7afc8`, `0x81cb8–0x81db0`, `0xaa39c–0xaa4a4`,
  `0xae3e8–0xaf6e4`, `0x7d3d14–0x7d4004` (likely OLLVM dispatcher), + allocator ranges.
  The device token `751fb123…` appears 3x as ASCII-hex in captured buffers. 105 unique 32-byte
  intermediate values captured.
- **Missing:** the exact algorithm within those new ranges (OLLVM-flattened); the role of each
  32-byte intermediate; the comparison/gate logic.
- **To resolve:** disassemble the 21 identified ranges in Ghidra (now known exactly); correlate
  32-byte intermediates with entered code and device token; instrument specific sub-ranges with
  Stalker `callout` to capture register state at branch points.
- **Evidence:** `evidence/beacon-crypto-traces/stalker_v2_135790.json`, `stalker_v2_999888.json`.

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

### U‑04 — Meaning of response record fields 🟨 (Partially Resolved — July 13)
- **Known (previously):** bytes [0,4,8,12] echo the client mask; fixed markers `9c1400`,
  `83000000`, `d900`, `00e0de08`.
- **NEW (July‑13, response_correlation_v2.py):** Systematic 5-test correlation completed.
  **Byte-level classification of the 32-byte record:**
  - **byte[0]:** MASK_DEPENDENT (low byte of mask echoed).
  - **bytes[1–5, 8, 12, 16–21, 24, 27–31]:** TIME_DEPENDENT (19 bytes) — stable when same time
    bucket used, change with different time bucket.
  - **bytes[6–7, 9–11, 13–15, 22–23, 25–26]:** SERVER_NONCE/COUNTER (12 bytes) — vary even with
    identical inputs → server-side counter or RNG.
  - **FIXED_MARKER:** 0 bytes are **universally constant** (previous markers `9c1400` etc. are
    time-bucket-stable, not epoch-fixed).
  - **ID has no exclusively dependent byte** — ID influences the *decryption key* (via resp_key)
    but does not echo directly in the plaintext record.
  - **Critical finding (Test C):** beacons sent with **future time buckets** decrypt to **noise**
    (prefix ≠ 0x00) → the server performs some **time-validity check** and returns a non-standard
    reply for out-of-window timestamps.
- **Remaining unknown:** semantic meaning of the 19 time-dependent bytes (version? subscription
  state? device flags?); meaning of the 12 server-nonce bytes.
- **Evidence:** `evidence/beacon-crypto-traces/response_correlation_v2.json`.

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

### U‑08 — Is `FUN_0017e148` the Entry-Key validator? ❌ (Disproved — July 13)
- **July‑13 Stalker v2** cleanly isolated the activation path. `FUN_0017e148` (at offset
  `0x7e148`) is **NOT** in any of the 21 ranges executed during Activate. It is part of the beacon
  crypto path, not the activation path. The activation uses a separate set of functions listed in
  U‑01 above.
- **Resolution:** Disproved. The activation validator is a different code path entirely.

### U‑09 — Is `DAT_009280f8` byte-exactly the decrypted reply? 🟨
- Timing matches (~+110 ms after beacon) but contents were unstable across polls.
- Resolve by hooking the store site precisely (Stalker) and comparing to the decrypted reply.

---

## What "resolving these" would and would not mean

- Resolving U‑01+U‑02+U‑03 could establish whether the activation key is derivable. Until then, **the
  activation is neither broken nor proven unbreakable — it is undetermined.**
- U‑06/U‑07 concern the business/seller system and the in-game engine, which are separate from the
  beacon work that is already ✅ complete.
