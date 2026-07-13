# UNKNOWNS — What We Do Not Know (and how to resolve it)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Everything below is **not** established. Each entry states what is missing and what experiment
would prove or disprove it. Nothing here should be cited as fact.

---

## Critical unknowns

### U‑01 — The exact Entry-Key validation algorithm 🟨 (~45%)
- **Known (UPDATED — July 13 late session):**
  - Validation is local, symmetric, uses the AES engine built into libengine.
  - **CRITICAL NEW FINDING:** KDF has TWO inputs: the 6-digit code AND `floor(unix_time/16)` (time bucket).
  - Same code produces DIFFERENT KDF outputs at different times (proven: 111111 gave different values across sessions).
  - Uses the SAME time-bucket mechanism as the beacon protocol.
  - **7 code samples captured** (000000, 111111, 123456, 222222, 394318, 654321, 999999) — all produce unique outputs.
  - PRNG state structure: `[time_bucket(4)][zeros(4)][interleaved_data(8)][time_bucket(4)][size(4)]`
  - The interleaved data has last 2 bytes always repeated (structural pattern).
  - Device ID (394318) triggers slightly different code path (tail=0x08 vs 0x07).
  - Each validation performs: PRNG(code, time_bucket) → SHA-256 → AES-256 key schedule → inline compare.
  - The comparison does NOT use libc `memcmp`/`strcmp` — it is inline.
- **Missing:** the precise PRNG formula (how code maps to seed values), and what the comparison target is derived from.
- **To resolve:** static disassembly (Ghidra) of the OLLVM-flattened function at `0x7eae18-0x7eb2cc` (584 bytes). Or: input the same code at two different time_buckets, solve the 2-equation system for the PRNG coefficients.
- **Evidence:** `evidence/beacon-crypto-traces/entry_key_kdf_evidence.json`, `/tmp/cap_ke_*.json` (7 code captures)

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

### U‑05 — Deferred/backend validation of `z` 🟨 (~40%)
- **Known:** ingress accepts garbage `z` (no authenticity check at the edge). **UPDATED (July 13 late):**
  - **50 rapid requests** from same IP accepted without any rate-limiting or blocking.
  - **Replay works**: same z sent 5× produces 5 different responses (server adds fresh nonce).
  - No IP filtering, no User-Agent check, no mutual TLS requirement.
  - Invalid hex → 200 with empty body (not 500 as previously reported — may have changed).
  - Short z (< 32 bytes) → 200 with empty body.
- **To resolve:** volume/behavioral testing at scale (hundreds of requests per minute), or server-side log access.
  Not fully provable from client alone — deferred analysis is invisible to the sender.
- **Evidence:** `FINAL_ANALYSIS_REPORT.md` (this session)

## Business-tier unknowns (require access we don't have)

### U‑06 — Seller REST API schema + login 🟨 (~25%)
- **Known:** `rest.snakeseller.com`; ALL paths (including `/`, `/api/request/`, `/api/login/`) return
  `{"error":true,"error_code":-2,"message":"Invalid action"}` — indicating the action parameter must
  be encrypted or use a non-obvious format. Basic JSON POST with plain action names all rejected.
- **UPDATED (July 13):** Server responds identically to GET and POST. Fake Bearer tokens get same
  "Invalid action" response (not "Authentication failed" as previously reported).
- **To resolve:** legitimate seller credentials (out of scope) OR reverse the Dart API client code
  to determine the encrypted action format.
- **Evidence:** `FINAL_ANALYSIS_REPORT.md`

### U‑07 — In-game cheat behaviour ⬜
- **Known:** libengine has an app-virtualization/hooking engine (July‑8 static/emulation).
- **To resolve:** install a target game + a valid subscription; observe the `:engine` process and
  the `FUN_00160208` game-patch decryption path live.

## Method-level uncertainties

### U‑08 — Is `FUN_0017e148` the Entry-Key validator? 🟨
- Stalker windows during Activate landed on beacon serialization, not a confirmed validator trace.
- Resolve with U‑01's precise isolation.

### U‑09 — Is `DAT_009280f8` byte-exactly the decrypted reply? ✅ (~95%)
- **PROVEN (July 13 late session):** Direct memory read confirms DAT_009280f8 is a POINTER to a
  32-byte buffer containing the decrypted server response record.
  Live captured value: `5a9c14001800b0eff43b00a5b6fac2ad83000000d900e0ad00bc3f7900e0de08`
  All 4 documented constant markers present at exact offsets:
  - `9c 14 00` at offset 1-3 ✓
  - `83 00 00 00` at offset 16-19 ✓
  - `d9 00` at offset 20-21 ✓
  - `00 e0 de 08` at offset 28-31 ✓
  - Client mask at bytes [0,4,8,12] ✓
- Adjacent pointer `DAT_009280f0` → 32-byte high-entropy value (likely the derived decryption key).
- **Evidence:** `/tmp/follow_ptr.py` output, `FINAL_ANALYSIS_REPORT.md`

---

## What "resolving these" would and would not mean

- Resolving U‑01+U‑02+U‑03 could establish whether the activation is forgeable. Until then, **the
  activation is neither broken nor proven unbreakable — it is undetermined.**
- U‑06/U‑07 concern the business/seller system and the in-game engine, which are separate from the
  beacon work that is already ✅ complete.
