# 06 — Activation (the 6-digit Entry Key)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Scripts: `scripts/beacon-crypto/{test_code_network,capture_activate3,hook_memcmp,stalker_funcs}.py`
· Evidence: `evidence/beacon-crypto-traces/`, `evidence/screenshots/`

---

## Model — ✅ Confirmed (from UI + website frontend strings)

```
User opens app → Device ID (e.g. 394318) assigned (no login screen)
        │
        ▼
User buys a 6-digit Entry Key on the website (bound to the Device ID)
        │  website checkout strings: "Enter your device ID", "Get Key",
        │  "Direct Activation", "Your Activation Key"
        ▼
User enters the Entry Key in-app → validated LOCALLY (no network)
        ├── valid   → device activated (subscription)
        └── invalid → "Code is Not valid"
```

- There is **no email/password login** to use the app itself. Seller login is a separate feature
  for resellers (→ `rest.snakeseller.com`).

## What is Confirmed (✅)

1. **Validation is fully local** — 0 DNS/connect calls during "Activate"
   (`test_code_network.py`). It uses libengine's AES (~127 crypto allocations).
2. **On-device activation crypto is symmetric** — `libengine.so` contains no asymmetric
   primitives whatsoever (no RSA/ECDSA/Ed25519 strings, symbols, or curve constants; P‑256,
   secp256k1, Ed25519 primes all absent from the raw bytes; cross-verified independently by an
   angr-based static pass, see `artifacts/decompiled/native-deep/static-max/`).
3. **The entered code is transformed, not string-compared** — codes `123456`, `394318`,
   `999999`, `135790`, `999888`, `246810` never appear verbatim in captured buffers.
4. **A stable 32-byte device token** is processed during Activate:
   `751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed` — identical across ≥4
   sessions with *different* master keys and *different* entered codes → device-bound,
   session-stable. Live `memcmp` shows it is compared **to itself** (an integrity self-check),
   not to the entered code.
5. **A representative decrypt+time-window pattern** exists in the engine (`FUN_0017e148`): derive
   a symmetric key, `FUN_00160208`-decrypt, then check `|(now−baseline)>>4 − embedded_bucket| ≤
   0xFF`. This is 🟨 (evidence of the engine's general scheme; not confirmed as THE Entry-Key
   validator because Stalker did not isolate that exact path).

## What was attempted and FAILED (❌ / honest negative results)

| Attempt | Result |
|---------|--------|
| Brute-force `key = SHA256(code)` → decrypt token, check padding | false positive `0x01` (1/256); the candidate code `000503` was tested in-app and rejected — see `evidence/screenshots/screen_code_entered.png` (code entered) and `screen_after_valid_code.png` ("Code is Not valid") |
| Brute-force `key = SHA256(gen32(code, device_id))` (beacon KDF), 1M codes × 4 orderings, strict padding | **0 matches** |
| Simple KDFs (zero-padded, integer-LE keys) | 0 matches |
| Live `memcmp` capture during Activate | only the token self-check (always MATCH); the code-vs-expected comparison uses neither `memcmp` nor `strcmp` |

## What remains Unknown (❓) / Not achieved (⬜)

- ❓ The exact Entry-Key key-derivation and comparison logic (buried in OLLVM-flattened code;
  Stalker windows caught beacon serialization, not the isolated validator).
- ❓ How the stable device token `751fb123…` is derived (high entropy; not on disk; not a simple
  hash of android_id/app_instance_id/device_id — all tested).
- ❓ Whether a valid Entry Key can be **forged**. It is symmetric, so it is *architecturally* not
  protected by asymmetric math — but the key-derivation inputs were not recovered, so forgeability
  is **not demonstrated**.
- ⬜ No valid Entry Key was generated. Activation was **not** bypassed.

## Honest bottom line

Understanding the beacon/crypto scheme did **not** yield a valid Entry Key or an activation
bypass. The remaining barrier is **OLLVM obfuscation + `.text` anti-tamper**, which blocked full
isolation of the validator — **not** asymmetric cryptography. See
[`10_Open_Questions.md`](10_Open_Questions.md) and [`../UNKNOWNS.md`](../UNKNOWNS.md).
