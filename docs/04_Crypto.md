# 04 — Cryptography

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Reproduction scripts: [`../scripts/beacon-crypto/`](../scripts/beacon-crypto/)
(`reproduce_key.py`, `prove_z.py`, `end_to_end.py`, `verify_shared_key.py`)

---

## The `z` cipher — ✅ Confirmed (byte-for-byte reproduced)

```
z (98 hex chars) = pad_len_byte(0x0c) ‖ AES-256-ECB(master_key, plaintext_padded_to_48B)
```

- Cipher: **standard AES‑256 in ECB mode**. The S-box built at runtime is the *standard* AES
  S-box (`63 7c 77 7b …`); the key schedule is standard AES‑256. Verified because stock
  PyCryptodome `AES.MODE_ECB` reproduces the observed ciphertext exactly.
- **No IV.** The leading `0x0c` is the zero-padding length (12), not an IV. ECB confirmed because a
  chained mode (CBC/GCM) could not reproduce `z` with a keyless-IV ECB call — and it does, twice.
- Proof runs (`prove_z.py`): two independent captures with different session keys both reproduce
  `z` exactly. See [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md) rows C1–C3.

## The master key — ✅ Confirmed (reproduced OFFLINE from time alone)

```
seed        = floor(unix_seconds / 16)                      # ~16-second time bucket, baseline = 0
master_key  = SHA256( shuffle_seed( SHA256( PRNG16(seed) ), seed ) )
```

Components (analyzed from libengine, verified in Python):

- `PRNG16(seed)` = `FUN_001614a4`: from the 32-bit seed,
  `P1 = seed*0xA5A5A5A5A5A5A5A5`, `P2 = seed*0xB4B4B4B4B4B4A000`,
  `A = (P2 & ~0x1FFF) | ((P1>>51)&0x1FFF)`, `B = rotl64(P1 ^ 0xA3A3A3A3A3A3A3A3, 7)`,
  output = `LE64(A) ‖ LE64(B)` (16 bytes). The NEON `ushl/uzp1/xtn` block = little-endian byte
  serialization.
- `SHA256` = standard (IV `6a09e667…`, K-table present).
- `shuffle_seed` = `FUN_00161598`: Fisher–Yates over 32 bytes, per-step mix
  `s = (s*0x5bd1e995) ^ (s>>15)` (**MurmurHash2** constant).

**Verification:**
- `reproduce_key.py`: seed `111492102` → device key `40da6112…bc24` (exact match).
- `fresh_verify.py`: a later launch, seed `111492128` → device key `8192f7fc…975d` (exact match).
- `end_to_end.py`: time → key → decrypt `z` → recovered plaintext → re-encrypt → identical `z`.

### Security consequence (✅ Confirmed, stated factually)

The AES key is a pure function of a ~16-second time bucket (baseline 0). Effective key space is
the number of candidate time buckets, **not** 2²⁵⁶. Anyone who knows the request time to within
16 s can regenerate the key. This is a design weakness documented as a consequence of the proven
derivation.

## The response cipher — ✅ Confirmed

The server reply (33 bytes = 1 prefix byte + 32-byte ciphertext) is **AES‑256‑ECB** under a
*different* key:

```
resp_key = SHA256( gen32(time, id) )      # gen32 = FUN_00161788, const 0x9E3779B1 / 0x5F356495
```

where `time` and `id` are the values the client embedded in `z`'s plaintext. Proven by:
decrypting server replies to crafted `z` yields a **consistent 32-byte template** only under the
correct `resp_key(time,id)` (16/32 constant byte positions) and **noise** under a wrong key
(0/32). See [`05_Beacon_Protocol.md`](05_Beacon_Protocol.md).

## Activation crypto — 🟨 Partially Confirmed / ❓ Unknown

- ✅ It is **symmetric** (libengine has zero asymmetric primitives — no RSA/ECDSA/Ed25519 strings,
  symbols, or curve constants).
- ✅ Validation uses libengine's AES (≈127 crypto allocations during "Activate", 0 network).
- ❓ The exact key-derivation and comparison for the 6-digit Entry Key are **not determined**.
- See [`06_Activation.md`](06_Activation.md).

## Disproved cryptographic hypotheses (❌)

| Hypothesis | Why disproved |
|-----------|---------------|
| ❌ `z` is AES‑GCM / ChaCha20‑Poly1305 / any AEAD | No AEAD key found in 2.6 GB memory (all sizes/alignments/AADs); ECB reproduces `z` exactly |
| ❌ `z` is AES‑256‑CBC | ECB (not CBC) reproduces `z` byte-for-byte; no CBC key found |
| ❌ key is per-message and wiped (unrecoverable) | key reproduced offline from time; it is deterministic |
| ❌ activation is asymmetric (RSA/ECDSA) → irreproducible | libengine has no asymmetric crypto at all |
