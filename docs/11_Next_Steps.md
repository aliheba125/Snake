# 11 — Next Steps

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Ordered by value and feasibility. Nothing here is started yet (this refactor paused new analysis).

---

## Track A — Entry-Key algorithm (highest value, hardest)

1. ⬜ **Isolate the validator with Stalker precisely.** Trigger Activate, and start Stalker only
   on the UI thread at the moment the Dart→FFI activation call enters libengine (not on a periodic
   beacon allocation). Record the exact function sequence and the arguments to `FUN_00160208` /
   the comparison.
2. ⬜ **Recover the token derivation (`751fb123…`).** Trace the libengine calls that produce it at
   boot using libc/Stalker (safe methods), to learn whether it is device-derivable (⇒ forgeable)
   or seeded by a server value.
3. ⬜ **Attempt a controlled forge** only if Q1+Q3 resolve: derive the key, encrypt a valid
   payload with a current time bucket, and test in-app. (Would be the decisive proof either way.)

## Track B — Server/protocol (medium value)

4. ⬜ **Response field semantics.** Vary `(time, id, mask)` systematically and correlate every
   response byte to an input or a server value; identify the fixed markers.
5. ⬜ **Backend validation of `z`.** Send many crafted/garbage beacons and look for any
   server-side rate-limiting, flagging, or delayed rejection.

## Track C — Business tier (requires access we don't have)

6. ⬜ **Seller REST API** — only with legitimate credentials; map `action=*` schema, auth header
   format (`X-Req`, `X-Client`, `Authorization`).
7. ⬜ **In-game cheat behaviour** — install a target game + a valid subscription; observe the
   `:engine` virtualization + hooking path (`FUN_00160208` game-patch decryption).

## Method notes carried forward (✅ proven-safe techniques)

- Use `.data`/libc/Stalker instrumentation only; never `Interceptor.attach` libengine `.text`.
- Inject the Gadget from `/system/lib64/…` to bypass the maps scan.
- Capture crypto buffers by hooking `libc malloc`/`free` filtered by the wrapper return address
  `0x800290`.

## Explicitly out of scope / not to be claimed

- Do **not** state activation is "broken" or that keys can be "generated" unless a forged key is
  demonstrated in-app.
- Keep the proven/inferred/unknown separation in every future report.
