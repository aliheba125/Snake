# Entry Key Validation — Evidence-Based Findings (correcting prior speculation)

**Date**: 2026-07-12
**Purpose**: A reviewer correctly noted that several statements in the previous report
were **hypotheses, not proof** (asymmetric signature; device token = comparison value;
padding-based check; "mathematically impossible"). This document replaces speculation
with what the raw evidence actually supports, and clearly flags what remains unknown.
Raw evidence files are in `raw_evidence/` so claims can be independently checked.

---

## Reviewer's flagged hypotheses — resolved with evidence

| Prior hypothesis | Verdict | Evidence |
|------------------|---------|----------|
| "Validation may use RSA/ECDSA/Ed25519 (→ irreproducible)" | **DISPROVEN for on-device validation** | libengine.so contains **no** asymmetric crypto: no RSA/ECDSA/Ed25519 strings, no `EVP_PKEY`/`EC_POINT`/`BN_` symbols, and **no curve constants** — P-256 prime, secp256k1 prime, and Ed25519 prime are all absent from the binary (scanned raw bytes, both endiannesses). The on-device crypto is hand-rolled **symmetric AES-256 + SHA-256** only. |
| "Device token `751fb123…` is the final comparison value" | **DISPROVEN** | Live `memcmp` hook during Activate shows the only libengine memcmp compares the 32-byte token **to itself** (size 64, result always MATCH) — an **integrity self-check**, not a code-vs-expected comparison. See `raw_evidence/memcmp_activate.json`. |
| "Comparison depends on padding" | **UNSUPPORTED** | No evidence of a PKCS7/zero-padding decision in the isolated path. Earlier a `0x01` "padding match" during exhaustive testing was a **statistical false positive** (1/256), confirmed by entering that code in the app → "Code is Not valid". |
| "Validation is mathematically impossible to reproduce" | **NOT SUPPORTED** | Since it is symmetric (above), it is **not** protected by asymmetric math. Resistance rests only on the secrecy/complexity of a symmetric key-derivation — architecturally solvable, though **not solved here**. |

### Note on the asymmetric strings in libapp.so
libapp.so *does* contain `ecdsaWithSHA256`, `rsaEncryption`, `secp256r1`,
`curveEd25519`, etc. These are the **pointycastle** ASN.1 OID/algorithm-name table
(a bundled Dart crypto library used for TLS/X.509 parsing). The activation validation
runs in **libengine** (native, via Dart FFI), which has none of these — so the OID
strings are not evidence of asymmetric activation.

---

## What the evidence positively shows

1. **On-device activation crypto is symmetric** (AES-256 `FUN_00160640` + SHA-256
   `FUN_00898a14`, both inline/hand-rolled). Proven by exhaustive absence of asymmetric
   primitives.
2. **Entry-Key validation is fully local** — 0 network calls during Activate
   (`test_code_network.py`), ~127 libengine crypto allocations.
3. **A stable 32-byte device token** `751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed`
   is present at Activate, identical across ≥4 sessions with different master keys
   (`raw_evidence/cap_*.json`, `corr_*.json`) → device-bound, session-stable. Its role is
   an integrity anchor (self-memcmp), **not** the code-comparison target.
4. **The 6-digit code is transformed, not string-compared** — it never appears verbatim
   in captured buffers; no memcmp/strcmp mismatch was observed for it.
5. **Stalker tracing works without tripping anti-tamper**, but the captured 400 ms windows
   landed on **state-construction/serialization** functions (`FUN_00189fd4` = engine-state
   copy ctor; `FUN_0018dcb4` = bit-serializer) — i.e., the periodic beacon/serialization
   work, **not** a cleanly isolated activation-validation trace. See
   `raw_evidence/stalker_funcs.json` (695 offsets, 40 ranges).

## A related decrypt+time-window path (context, not confirmed as the Activate validator)

Reading `FUN_0017e148` statically shows a representative pattern used elsewhere in the
engine: derive a symmetric key via `FUN_00161788`, `FUN_00160208`-decrypt an input, then
check `((now-baseline)>>4) - decrypted_bucket` is within ±0xFF (a ~time-window/expiry
check). This is **evidence of the engine's general scheme** (symmetric + time-bucketed),
but I did **not** confirm this specific function is the Entry-Key validator (the Stalker
window did not reach it), so I flag it as context, not proof.

---

## What remains UNKNOWN (honest)

- The exact Entry-Key KDF and comparison logic — buried in OLLVM control-flow-flattened
  code (hundreds of dead blocks) and not cleanly isolated by Stalker.
- Whether the key-derivation inputs are fully device-derivable or include a
  value only the server can produce. Symmetric design makes on-device derivation *likely*,
  but this is **not demonstrated**.
- No valid Entry Key was generated; activation was **not** achieved.

---

## Honest bottom line

- **Corrected**: the on-device activation is **symmetric**, not asymmetric — so the
  "RSA/ECDSA makes it unbreakable" concern does not apply to the client-side check.
- **Still true**: understanding the beacon/crypto scheme did **not** yield a valid Entry
  Key or an activation method. The remaining barrier is OLLVM obfuscation + `.text`
  anti-tamper, which blocked full isolation of the validator — not asymmetric mathematics.
- The reviewer's core position stands: **Entry-Key generation and activation
  are NOT achieved and NOT proven.**

## Raw evidence (independently inspectable)
- `raw_evidence/memcmp_activate.json` — the token-self-check memcmp captures
- `raw_evidence/stalker_funcs.json`, `stalker_activate.json` — full Stalker offset traces
- `raw_evidence/cap_135790.json`, `cap_999888.json` — Activate crypto-buffer captures (stable token)
- `raw_evidence/corr_runB.json`, `corr_runC.json` — master-key vs stable-token per run
