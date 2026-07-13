# UNKNOWNS — What We Do Not Know (and how to resolve it)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Everything below is **not** established. Each entry states what is missing and what experiment
would prove or disprove it. Nothing here should be cited as fact.

---

## Critical unknowns

### U‑01 — The exact Entry-Key validation algorithm ❓ (narrowed — 🟦 In Progress)
- **Known:** validation is local, symmetric, ~127 AES ops; the entered code is transformed (not
  string-compared); a representative decrypt+time-window pattern exists in `FUN_0017e148`.
- **July‑13, Stalker v2 (burst detection):** The activation path was traced using burst-detection
  Stalker (3 reproducible runs, CODE 135790, 999888, 246810 — identical 21 ranges, 372
  instructions in a 600ms window each).
  **Observation:** Within this 600ms Stalker window, **none of the known beacon crypto functions
  were observed** (`FUN_00160208` AES, `FUN_00161788` gen32/KDF, `FUN_0016169c` master_key,
  `FUN_001614a4` PRNG16, `FUN_00161598` shuffle, `FUN_00165b70` beacon_builder).
  Instead, 21 different code ranges were recorded:
  `0x618a4–0x61904`, `0x61938–0x6196c`, `0x7aef0–0x7afc8`, `0x81cb8–0x81db0`, `0xaa39c–0xaa4a4`,
  `0xae3e8–0xaf6e4`, `0x7d3d14–0x7d4004` (vtable dispatcher), + allocator ranges.
  The device token `751fb123…` appears inside several buffers (sz=48/80/96) as ASCII-hex
  during the Activate window (observation; does not confirm "processing" vs passive presence).
  **Caveats:** Stalker records only compiled blocks during its window. Functions may be absent
  because they are inlined, called via indirect jump tables, executed before/after the window,
  or optimized into the captured ranges under different names.
- **July‑13, Disassembly + Callout (r2 + Stalker putCallout):**
  - **Call graph:** Range06(0xaa39c) → Range03(0x7aef0) → Range04(0x81cb8) → Range12(0x7d3d14,
    vtable dispatch via `blr x8`) → `FUN_0017e148` **conditionally** (`tbz w21, bit0`).
  - **Callout findings (3 codes):** `w21 = 0` ALWAYS at the `tbz` gate → `FUN_0017e148` is
    **never reached** with an invalid code. It is a **post-activation success handler**, not the
    validator itself.
  - `cmp x19, x0` at 0xaa4a0: x0 == x19 always (pointer self-comparison, not pass/fail gate).
  - `key_engine` (0x81cb8) receives x1=0x8000008 (constant flags) across all codes.
  - **The actual pass/fail logic resides inside the vtable-dispatched function** (reached via
    `blr x8` at 0x7d3d50). This code is OLLVM-flattened and was not directly instrumented.
- **July‑13, Buffer correlation:** 0 common 32-byte buffers across runs (all session-unique).
  After filtering heap pointers, only 1–3 high-entropy 32-byte buffers per run exist
  (likely AES/SHA256 output). SHA256 of code variants and device token not found in buffers.
  The KDF is not a simple hash of the code.
- **Missing:** the exact algorithm inside the vtable-dispatched OLLVM function; the inputs that
  produce w21=1 (activation success); the derivation from 6-digit code → crypto input.
- **To resolve:** (a) Extended Stalker inside the vtable-dispatched function (instrument `blr x8`
  target), (b) patch w21 to 1 to observe post-activation behavior, (c) binary pattern analysis
  of OLLVM-flattened code at the dispatch target.
- **Evidence:** `evidence/beacon-crypto-traces/stalker_v2_*.json`,
  `callout_v3b_*.json`, `activation_ranges_disasm.txt`.
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
- **July‑13, initial 5-sample correlation (`response_correlation_v2.py`):** Preliminary byte-level
  classification attempted. **SUPERSEDED by extended test below.**
- **July‑13, extended 20-sample correlation (`response_correlation_extended.py`):**
  **CORRECTED classification:**
  - **20 bytes** are stable ONLY when (time_bucket + mask + id) are ALL held constant. Changing
    ANY of the three (mask, time, or id) results in noise decryption (because `resp_key` depends
    on all three via `SHA256(gen32(time, id))`). The previous "TIME_ONLY" / "MASK_ONLY"
    classifications were WRONG — they reflected resp_key mismatch, not direct field dependency.
  - **12 bytes** vary even with identical inputs → true server-side counter/nonce.
  - **FIXED_MARKER: 0** universally constant bytes. The documented markers (`9c1400`, `83000000`,
    `d900`, `00e0de08`) are stable within a single time bucket but change across buckets.
  - **Test F (time offsets):** ALL offsets (including 0, -300, +60, +300, +3600, +86400) produced
    noise. Explanation: `resp_key = SHA256(gen32(time, id))` — if the time embedded in `z` differs
    from the server's time by even 1 bucket (16s), the derived key is wrong → decryption produces
    noise. This is **not** server-side time validation but simply **key-derivation sensitivity**.
  - **ID dependency:** No byte is exclusively ID-dependent because ID affects the decryption key
    (via resp_key), not the plaintext record content.
- **Remaining unknown:** semantic meaning of the 20 time-bucket-stable bytes; what the 12
  server-varying bytes encode (counter? session ID? subscription state?).
- **Evidence:** `evidence/beacon-crypto-traces/response_correlation_v2.json`,
  `response_correlation_extended.json`.

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

### U‑08 — Is `FUN_0017e148` the Entry-Key validator? 🟨 (Revised: likely associated with success path)
- **July‑13 disassembly** shows `FUN_0017e148` is called from 0x81d40 with `tbz w21, bit0` guard.
- **July‑13 callout** (3 codes): `w21 = 0` always when code is invalid → the function is **never
  reached** on failed activation. It is called only when `w21 bit0 = 1`.
- **Revised interpretation:** `FUN_0017e148` is a **function associated with the success path**
  (likely persists the activated state, spawns the engine thread via `pthread_create`). It is
  probably NOT the validation/comparison function — but this remains a hypothesis until a real
  activation success is observed.
- **The validator** is hypothesized to be inside the vtable-dispatched code reached by `blr x8`
  at 0x7d3d50, which presumably sets `w21` based on code validity. This has not been confirmed.

### U‑09 — Is `DAT_009280f8` byte-exactly the decrypted reply? 🟨
- Timing matches (~+110 ms after beacon) but contents were unstable across polls.
- Resolve by hooking the store site precisely (Stalker) and comparing to the decrypted reply.

---

## What "resolving these" would and would not mean

- Resolving U‑01+U‑02+U‑03 could establish whether the activation key is derivable. Until then, **the
  activation is neither broken nor proven unbreakable — it is undetermined.**
- U‑06/U‑07 concern the business/seller system and the in-game engine, which are separate from the
  beacon work that is already ✅ complete.
