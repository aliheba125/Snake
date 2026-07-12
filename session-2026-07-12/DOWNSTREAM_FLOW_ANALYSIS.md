# Downstream Flow Analysis — What Happens After the Server Receives z

**Date**: 2026-07-12
**Purpose**: The methodological review correctly noted that "the server performs no cryptographic validation" was stronger than the evidence, because only the **input point** was tested. This document traces what happens *after* the request — the app's network topology, whether the response is stored/reused, and whether the app has code to *process* the response. Claims are separated into **measured** vs **capability-proven** vs **unproven**.

---

## Corrected wording (per review)

> ~~"The server performs no cryptographic validation of z."~~

Replaced with:

> **No cryptographic validation of z was observed at the input point in the current tests. Later-stage or backend validation cannot be ruled out** — the endpoint may queue, log, or defer verification, and a downstream service may check z asynchronously. We did not observe such a stage, but we also did not have the means to rule it out.

---

## 1. Network topology (MEASURED — `scripts/trace_hosts.py`)

Hooking `getaddrinfo`/`connect` in libc (fires for every connection over the whole process lifetime, so it does not race with the early beacon) over a 30 s cold launch + idle window:

```
Distinct hosts contacted:
  1. push-918010152455.europe-west1.run.app   (the z beacon)   — contacted ONCE (+422ms)
  2. storage.googleapis.com                    (Firebase/GCS)   — contacted repeatedly
```

- `rest.snakeseller.com` (the authenticated seller REST API) is **not** contacted at cold launch or during basic UI interaction (`scripts/trace_interact.py`). It is only relevant after login.
- The z beacon fires **exactly once**; no second request to the push endpoint was observed in the window.

**Interpretation**: at launch, the z endpoint is a one-shot call. No observed request reuses the response toward another service.

## 2. Is the response persisted? (MEASURED)

After a fresh launch, dumping `shared_prefs`, `files/`, `databases/`, and `cache/`:

- `shared_prefs`: only `cip_pub` (empty) and Firebase auto-init flags.
- `files/`: Firebase installation JSON + several large (250–450 KB) hex-named asset/cache blobs dated earlier (not the 33-byte token).
- `databases/`: only Firebase / Google Analytics measurement DBs.

**The 33-byte response is not written to persistent storage.** (It may still be held in memory for the session.)

## 3. The app HAS code to decrypt an incoming value (CAPABILITY-PROVEN — static)

`FUN_00189774` (`libengine + 0x89774`) does exactly this:

```c
FUN_00161788(&ctx, *(param_1+0x3a8), *(param_1+0x3a0), 0);  // derive a decryption key
FUN_0015faec(&buf, param_2);                                 // hex-string -> raw bytes
FUN_00160208(&ctx, &buf, &out);                              // DECRYPT (AES core, decrypt dir)
DAT_009280f8 = malloc(size); memcpy(DAT_009280f8, out, size);// store plaintext in a global
```

- `FUN_00160208` is the decrypt-direction counterpart of the z encrypt path (same AES core, 3 call sites).
- `FUN_0015faec` converts an incoming hex string to bytes — i.e., this function is designed to consume a hex payload like the 66-hex-char server response.
- The decryption key (`FUN_00161788`) is derived from **two integers** via the mixing constant `0x9E3779B1` (golden-ratio / Wang-hash) + `0x5F356495`, then SHA-256 — **a different key from the time-bucket master key** used for z. This is why the earlier attempt to decrypt the response with the master key failed.
- `FUN_00189774` has **no caller inside libengine** → it is invoked from Dart via FFI. The Dart layer (in `libapp.so`) decides when to call it.

**Hypothesized protocol** (consistent with the code, not fully proven):
1. Client picks a random `id` (nonce) and a `time`.
2. Client derives `resp_key = SHA256(mix(id, time))` via `FUN_00161788`.
3. Client sends z = `padlen ‖ AES-256-ECB(master_key, plaintext(id, time, …))`.
4. Server decrypts z, extracts `(id, time)`, derives the **same** `resp_key`, encrypts its reply with it.
5. Client decrypts the reply with `resp_key` (`FUN_00189774`) and stores the plaintext in `DAT_009280f8`.

If correct, this is a challenge/response that establishes a shared value — meaning the response is **used**, not ignored.

## 4. Runtime correlation (SUGGESTIVE, NOT CONCLUSIVE — `scripts/poll_decrypt_global.py`)

Polling the global `DAT_009280f8` (read-only; no code hook, so no anti-tamper trigger):

```
+420ms  master key populated (0x8280f0)
+422ms  beacon request sent (from host trace)
+533ms  DAT_009280f8 becomes populated  <-- ~110ms after the beacon, i.e. right after a plausible response
        (content then updates a few times over +533..+623ms)
```

- The timing (`+533ms`, just after the beacon round-trip) is **consistent with** decrypting the beacon response.
- **Caveat**: the pointer is stable but its contents change across polls, so this global may be reused for other purposes. We therefore treat this as *suggestive*, not proof that the stored bytes are specifically the decrypted beacon response.

## 5. What remains UNPROVEN (honest limitations)

1. We did **not** prove the 33-byte response is the specific input to `FUN_00189774` at runtime (the caller is in Dart; hooking libengine text triggers anti-tamper and kills the app).
2. We did **not** decode the meaning of the decrypted value or of `DAT_009280f8`'s contents.
3. We did **not** exercise the post-login flow (`rest.snakeseller.com`), so any use of the beacon result *after* authentication is untested.
4. We did **not** test for asynchronous/backend validation of z (a server could flag a bad z later without changing the immediate 200 response).
5. No login bypass, account access, or authentication defeat was attempted or achieved.

---

## Bottom line (precise)

- **Measured**: at launch the app contacts only the z beacon (once) and Firebase storage; the response is not persisted; malformed z → HTTP 500; z < 32 bytes → no token; z ≥ 32 bytes → 33-byte token.
- **Capability-proven (static)**: the app contains a dedicated routine to hex-decode and **decrypt** an incoming value with a nonce/time-derived key and store the result — so the response is plausibly *consumed*, not merely discarded telemetry.
- **Unproven**: the exact runtime data flow of the response, its semantic meaning, any deferred/backend validation of z, and anything about bypassing the authenticated REST API.

The reviewer's framing stands: understanding and reproducing z is fully established; the *role of the endpoint within the wider system* is now partially mapped (one-shot beacon + a client-side decrypt routine keyed to the request nonce), but a complete, runtime-proven data-flow and any claim about defeating the overall system's authentication remain **out of what has been demonstrated**.

## Scripts
- `scripts/trace_hosts.py` — enumerate every host via getaddrinfo/connect
- `scripts/trace_interact.py` — host + SSL_write trace with injected UI events
- `scripts/poll_decrypt_global.py` — poll DAT_009280f0 (key) and DAT_009280f8 (decrypt-store) globals
