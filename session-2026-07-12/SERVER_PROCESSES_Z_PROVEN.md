# PROVEN: The Server Cryptographically Processes z (Bidirectional Protocol Broken)

**Date**: 2026-07-12
**Status**: PROVEN at runtime — the server decrypts the submitted z, recovers the embedded `(time, id)`, and encrypts its response under a key derived from those values. This resolves the open question ("does the server actually *use* z, or just echo a token?") with a decisive, quantified cryptographic test.

---

## The decisive test (`scripts/prove_cr2.py`)

Because we can craft z with a **known** `(time, id)` (we control the plaintext), we can predict the response key the server *should* use if — and only if — it actually decrypts z:

```
resp_key = SHA256( gen32(time, id) )        # reverse of FUN_00161788 (0x9E3779B1 mixer)
```

Procedure: send 5 crafted z (each with a fresh random `id`), capture each 33-byte response, and decrypt `response[1:33]` with AES-256-ECB under (a) the **correct** `resp_key(time,id)` and (b) a **wrong** key from perturbed inputs. Then measure how many byte positions are constant across the 5 decrypts.

### Result

```
                        constant byte positions (of 32)   avg entropy
correct resp_key(t,id)            16 / 32                   4.21 bits/byte   (structured)
wrong   resp_key                   0 / 32                   4.85 bits/byte   (noise)
```

Correct-key decrypts share a fixed 32-byte template:

```
XX 9c 14 00 XX 00 XX XX  XX XX XX XX XX XX XX XX   <- block 1
83 00 00 00 d9 00 XX XX  00 XX XX 3d 00 e0 de 08   <- block 2
   ^^^^^^^^^^^^^^^                    ^^^^^^^^^^^   constant fields
```

Examples (correct key):
```
469c14002800f182581807e40897e1aa 83000000d900f92400fe8f3d00e0de08
b69c14008d003685c9330a234290caa7 83000000d900b32b00c4823d00e0de08
769c1400bc008d4e228206985a5b7bab 83000000d90037fb008a8f3d00e0de08
```

Wrong key on the same ciphertexts → full-entropy noise, 0 shared positions.

### Why this is conclusive

Each of the 5 requests used a **different `id`** ⇒ a **different `resp_key`** ⇒ the server produced a **different ciphertext**. For all 5 to decrypt to the *same structured template* under `resp_key(time,id)` — while a wrong key yields noise — the server must have:

1. received the crafted z,
2. decrypted it with the time-bucket master key (which we derived purely from time),
3. parsed the plaintext to recover `(time, id)`,
4. derived the identical `resp_key = SHA256(gen32(time, id))`,
5. encrypted its 32-byte response record with that key.

There is no way to obtain a consistent structured plaintext across different keys/ciphertexts by chance (a wrong key gives 0/32). **The server performs full cryptographic processing of z.**

---

## What this establishes

- The z beacon is a genuine **challenge/response** protocol, and **both directions are now reproduced**:
  - **Uplink**: we craft z byte-for-byte from time alone (earlier proofs).
  - **Downlink**: we decrypt the server's response to a structured 32-byte record using the nonce/time-derived key.
- This confirms the client-side decrypt routine `FUN_00189774` (which stores the decrypted record in `DAT_009280f8`) is fed exactly this response — the recovered template matches the `DAT_009280f8` byte pattern observed at runtime (`…9c1400…83000000d900…00e0de08`).

## Reconciliation with the earlier "no authenticity check" finding

Both statements are true and consistent:

- The server **does not validate z's authenticity**: a garbage z is still decrypted (AES always yields *some* plaintext), yields *some* `(time,id)`, and gets a response keyed to those garbage-derived values. That is why garbage z produced a 66-hex reply.
- The server **does cryptographically process z**: for a *correctly crafted* z, the response is provably encrypted under the key derived from the `(time,id)` we embedded.

So: **structure/crypto processing = yes; authenticity/anti-forgery validation = not observed at this endpoint.**

---

## The decoded response record (partial)

32-byte plaintext record, constant vs variable fields:

| offset | bytes | nature |
|--------|-------|--------|
| 0 | 1 | variable |
| 1–3 | `9c 14 00` | constant |
| 4 | 1 | variable |
| 5 | `00` | constant |
| 6–15 | 10 | variable (per-request) |
| 16–21 | `83 00 00 00 d9 00` | constant |
| 22–23 | 2 | variable |
| 24 | `00` | constant |
| 25–26 | 2 | variable |
| 27–31 | `3d 00 e0 de 08` | constant |

The constant little-endian-looking markers (`0x0000149c`, `0x083…`, `0x08dee0…`) are likely record tags / fixed config values; the variable fields carry the per-session payload. Full field semantics are not yet decoded (see limitations).

---

## Honest limitations (unchanged boundaries)

1. We decoded the response **structure** (constant/variable layout) but not the **meaning** of the variable fields.
2. This is the **beacon** protocol only. It is separate from the seller REST API (`rest.snakeseller.com`), which uses email+password auth. Nothing here bypasses that login.
3. No user-account access, session hijack, or authentication bypass was achieved or attempted.
4. We did not test server-side abuse controls at scale.

---

## Bottom line

The reviewer's core question — *"does the server actually accept/use z, or merely return a generic token?"* — is now answered with proof: **the server decrypts z, extracts the embedded `(time, id)`, and encrypts its reply under the matching derived key.** The entire beacon exchange (request and response) is understood and reproducible end-to-end, offline, from wall-clock time plus the client's own random nonce. What remains out of scope/unproven is any access to the authenticated seller system, whose credentials-based boundary this work does not touch.

## Scripts
- `scripts/prove_challenge_response.py` — first observation of structured decrypts
- `scripts/prove_cr2.py` — quantified correct-vs-wrong-key test (16/32 vs 0/32)
