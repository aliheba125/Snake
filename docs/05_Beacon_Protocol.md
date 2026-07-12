# 05 — Beacon Protocol (the `z` parameter)

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Scripts: [`../scripts/beacon-crypto/`](../scripts/beacon-crypto/) · Evidence:
[`../evidence/beacon-crypto-traces/`](../evidence/beacon-crypto-traces/),
[`../evidence/z-samples/`](../evidence/z-samples/)

---

## The request — ✅ Confirmed

```
GET /?z=<98 hex chars>&v=20 HTTP/1.1
Host: push-918010152455.europe-west1.run.app
user-agent: Dart/3.5 (dart:io)
accept-encoding: gzip
```

- Endpoint: Google **Cloud Run** (`918010152455` = Firebase sender id). Fires **once** at cold
  launch.
- `z` = 49 raw bytes hex-encoded = `0x0c` (pad length) + 48-byte AES‑256‑ECB ciphertext.
- `v=20` = protocol/version tag (server does not validate it — see below).

## The plaintext inside `z` — ✅ Confirmed (`plaintext_decode.py`)

36-byte plaintext (before padding to 48), built by `FUN_00165b70`:

```
plaintext[0:4]   = 00 00 00 00                       (zero prefix)
plaintext[4:36]  = 32 bytes, byte-interleaved from two 16-byte blocks:
     even bytes ← block P: [ id^mask : 8 ] [ mask : 4 ] [ time^mask : 4 ]
     odd  bytes ← block Q: 16 random bytes (Mersenne-Twister from /dev/urandom)
```

- `mask` = 32-bit RNG value; `id` = 64-bit random nonce; `time` = unix seconds (baseline 0).
- Verified: decoding a captured plaintext recovers `time` = exact capture wall-clock (diff 0 s),
  which also re-confirms baseline = 0.

## The response — ✅ Confirmed

- 33 bytes (66 hex) = 1 prefix byte + `AES-256-ECB(resp_key, 32-byte record)`.
- `resp_key = SHA256(gen32(time, id))` using the `(time, id)` embedded in the request.
- The decrypted 32-byte record **echoes the client `mask`** at bytes `[0,4,8,12]` (little-endian),
  plus fixed markers (`9c 14 00`, `83 00 00 00`, `d9 00`, `00 e0 de 08`) and server-varying fields.

## Proof the server cryptographically processes `z` — ✅ Confirmed (`prove_cr2.py`)

Send 5 crafted `z` (each a different random `id`), decrypt each reply with the correct
`resp_key(time,id)` vs a wrong key:

| Key used | constant byte positions across 5 replies | entropy |
|----------|-------------------------------------------|---------|
| correct `resp_key(time,id)` | **16 / 32** (structured template) | 4.21 |
| wrong key | **0 / 32** (noise) | 4.85 |

A consistent template across different keys+ciphertexts is impossible unless the server decrypted
each `z`, recovered `(time,id)`, and derived the same `resp_key`. Combined with the mask echo,
this is three independent confirmations of server-side cryptographic processing.

## Server validation behaviour — ✅ Confirmed (`discriminating_test.py`, `probe_logic.py`)

| Input | HTTP | Body | Interpretation |
|-------|------|------|----------------|
| valid `z` | 200 | 33-byte token | normal |
| garbage hex (valid length/charset) | 200 | 33-byte token | **no authenticity check** |
| odd-length / non-hex `z` | **500** | — | server *parses* (hex-decodes) `z` |
| `< 32` bytes | 200 | empty | length threshold |
| `≥ 32` bytes | 200 | 33-byte token | length threshold |
| stale `z` (1 hour old) | 200 | token | no freshness check at ingress |
| wrong/empty `v`, wrong user-agent, different IP | 200 | token | not validated |

**Precise conclusion:** the server **parses structure** (hex, even length, ≥32 B) and
**cryptographically processes** `z`, but performs **no authenticity validation at
ingress**. (Whether a later/backend stage validates is ❓ — see [`../UNKNOWNS.md`](../UNKNOWNS.md).)

## Client-side response handling — 🟨 Partially Confirmed

- `FUN_00189774` hex-decodes and decrypts an incoming value and stores it in `DAT_009280f8`.
  Runtime: that global populates ~110 ms after the beacon (consistent with response decryption),
  but its contents are somewhat unstable, so "this global == the decrypted beacon response" is
  🟨 (strongly suggested, not byte-locked).

## Both directions reproduced — ✅ Confirmed

- **Uplink**: craft `z` offline from time alone (`end_to_end.py`).
- **Downlink**: decrypt the server reply to a structured record (`prove_cr2.py`).

## No transport protections — ✅ Confirmed

No TLS client cert / mutual TLS, no certificate pinning enforced against `curl`, no device
attestation (SafetyNet/Play Integrity absent from all binaries), no IP filtering.
