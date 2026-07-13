# 11 — Next Steps

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Ordered by value and feasibility. Nothing here is started yet (this refactor paused new analysis).

---

## Track A — Entry-Key algorithm (highest value, hardest)

1. ✅ **Isolate the validator with Stalker precisely.** *(Completed July 13)*
   Burst-detection Stalker (`stalker_activate_v2.py`) successfully isolated the activation path:
   21 contiguous ranges, 372 instructions, reproducible across 2 codes. **Key finding:** activation
   does NOT use any beacon crypto functions — it is a separate code path entirely.
   → Evidence: `evidence/beacon-crypto-traces/stalker_v2_*.json`
2. ⬜ **Recover the token derivation (`751fb123…`).** Trace the libengine calls that produce it at
   boot using libc/Stalker (safe methods), to learn whether it is device-derivable
   or seeded by a server value.
3. 🟦 **Deep-dive the 21 activation ranges.** *(New step, enabled by #1)*
   Disassemble and analyze the newly identified ranges (especially `0x7aef0–0x7afc8`,
   `0x81cb8–0x81db0`, `0xaa39c–0xaa4a4`, `0xae3e8–0xaf6e4`) in Ghidra. Correlate the 105
   captured 32-byte intermediates with the entered code and device token. Use Stalker `callout`
   on specific sub-ranges to capture register state at branch points.
4. ⬜ **Attempt a controlled test** only if Q1+Q3 resolve: derive the key, encrypt a valid
   payload with a current time bucket, and test in-app. (Would be the decisive proof either way.)

## Track B — Server/protocol (medium value)

4. ✅ **Response field semantics.** *(Completed July 13)*
   Systematic 5-test correlation (`response_correlation_v2.py`): byte[0]=mask-dependent,
   19 bytes=time-dependent, 12 bytes=server-nonce/counter. No byte exclusively depends on ID.
   Future-time beacons decrypt to noise (server time-validity check). The previously documented
   "fixed markers" (`9c1400`, `83000000`, `d900`, `00e0de08`) are time-bucket-stable, not
   epoch-fixed.
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
