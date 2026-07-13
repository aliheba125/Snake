# 11 — Next Steps

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Ordered by value and feasibility. Nothing here is started yet (this refactor paused new analysis).

---

## Track A — Entry-Key algorithm (highest value, hardest)

1. 🟨 **Isolate the validator with Stalker precisely.** *(July 13 — partial success)*
   Burst-detection Stalker (`stalker_activate_v2.py`) recorded 21 reproducible code ranges
   (372 instructions, 600ms window) during Activate. Known beacon crypto functions were **not
   observed** within this window — this suggests (but does not prove) that activation uses a
   different code path. Caveats: inlining, indirect jumps, or execution outside the window could
   explain the absence. See UNKNOWNS U‑01 for full discussion.
   → Evidence: `evidence/beacon-crypto-traces/stalker_v2_*.json`
2. ⬜ **Recover the token derivation (`751fb123…`).** Trace the libengine calls that produce it at
   boot using libc/Stalker (safe methods), to learn whether it is device-derivable
   or seeded by a server value.
3. 🟦 **Deep-dive the 21 activation ranges.** *(July 13 — partially completed)*
   - ✅ Disassembled all ranges with radare2. Call graph mapped.
   - ✅ Callout captured register state at key_engine entry, tbz gate, and cmp gate (3 codes).
   - ✅ Buffer correlation: most 32-byte values are heap pointers; 1–3 real crypto intermediates.
   - **Key conclusion:** The actual validator runs inside OLLVM-flattened code reached via vtable
     indirect call (`blr x8` at 0x7d3d50). The pass/fail result sets `w21` which gates
     `FUN_0017e148` (success handler + `pthread_create`).
   - **Remaining:** instrument the vtable dispatch target to trace the OLLVM-flattened validator.
4. ⬜ **Attempt a controlled test** only if Q1+Q3 resolve: derive the key, encrypt a valid
   payload with a current time bucket, and test in-app. (Would be the decisive proof either way.)

### New sub-steps identified (enabled by July‑13 findings):
- ✅ **A3a:** Capture the vtable dispatch target address (`blr x8` at 0x7d3d50).
  Result: target = `0x7d7780` (single `ret` instruction) — fixed across 3 codes.
- ✅ **A3a+:** Capture OLLVM `br x11` target at 0xa61c8.
  Result: always jumps to `0xaa1a0` (x9=7) — did not change between 3 tested codes.
- 🟨 **A3b:** Capture w20 at the `cbz w20, 0xaaef0` gate (pass/fail candidate).
  **Status: DISPROVED as the active path.** Multiple attempts (callout, invalidate) confirmed
  that the code block at 0xa6220-0xa6238 (containing `cbz w20`) is **not executed** during
  Activate with invalid codes. The `br x11` OLLVM dispatcher jumps to case 7 (`0xaa1a0`),
  NOT to 0xa61cc where `cbz w20` resides. The `0xa61cc → 0x8d61c → 0x89774 → cbz w20` path
  is a **different OLLVM case** that was not active in any tested scenario.
  
  **What this means:** The pass/fail decision for invalid codes is made entirely within the
  case 7 path (0xaa1a0 → 0xaa39c → 0x81cb8 → vtable dispatch → ret). The cbz w20 gate may
  only be relevant for a valid key (different OLLVM case) or a different activation state.
  
  **Revised next step:** Instrument deeper within the case 7 path itself (0xaa1a0 → 0xaa39c)
  to find where the pass/fail decision occurs within THAT specific code path.
- ⬜ **A3c:** Patch w21 to 1 (write to register in callout at tbz gate) and observe whether
  `FUN_0017e148` + `pthread_create` execute → would support the success-path hypothesis.
- ⬜ **A2:** Trace device token derivation at boot (unchanged from previous plan).

## Track B — Server/protocol (medium value)

4. 🟨 **Response field semantics.** *(July 13 — preliminary results, needs more samples)*
   Systematic 5-test correlation (`response_correlation_v2.py`): initial classification suggests
   byte[0]=mask-dependent, ~19 bytes=time-bucket-dependent, ~12 bytes=server-varying.
   No byte exclusively depends on ID. Beacons with future time buckets decrypt to noise
   (possible time-validity check OR key-derivation mismatch — not yet disambiguated).
   Previously documented "fixed markers" (`9c1400`, `83000000`, `d900`, `00e0de08`) appear stable
   within a time bucket but change across buckets.
   **Needs:** 20+ samples per test for statistical confidence; disambiguation of time-rejection
   vs key-mismatch for future-time beacons.
   → Evidence: `evidence/beacon-crypto-traces/response_correlation_v2.json`
5. ⬜ **Backend validation of `z`.** Send many crafted/garbage beacons and look for any
   server-side rate-limiting, flagging, or delayed rejection.

## Track C — Business tier (requires access we don't have)

6. ⬜ **Seller REST API** — only with legitimate credentials; map `action=*` schema, auth header
   format (`X-Req`, `X-Client`, `Authorization`).
7. ⬜ **In-game behaviour** — install a target game + a valid subscription; observe the
   `:engine` virtualization + interaction path (`FUN_00160208` game-patch decryption).

## Method notes carried forward (✅ proven-safe techniques)

- Use `.data`/libc/Stalker instrumentation only; never `Interceptor.attach` libengine `.text`.
- Inject the Gadget from `/system/lib64/…` to avoid the maps scan.
- Capture crypto buffers by hooking `libc malloc`/`free` filtered by the wrapper return address
  `0x800290`.

## Explicitly out of scope / not to be claimed

- Do **not** state activation is "broken" or that keys can be "generated" unless a valid key is
  demonstrated in-app.
- Keep the proven/inferred/unknown separation in every future report.
- Do **not** claim Stalker observations as definitive proofs of function absence — Stalker
  records compiled blocks within its window; absence of a function in the trace ≠ proof it is
  never called (it may be inlined, indirect, or outside the window).

## Explicitly out of scope / not to be claimed

- Do **not** state activation is "broken" or that keys can be "generated" unless a valid key is
  demonstrated in-app.
- Keep the proven/inferred/unknown separation in every future report.
