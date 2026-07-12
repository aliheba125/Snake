# archive/ — Historical Working Notes (NOT current truth)

> ⚠️ **These are chronological research notes, kept for transparency and history.**
> Some conclusions here were **later disproved**. For the current, evidence-backed truth, read
> [`../MASTER_INDEX.md`](../MASTER_INDEX.md) and [`../docs/`](../docs/).
> When anything here disagrees with `docs/`, **`docs/` is correct.**

## Contents

| Folder | What it is | Superseded by |
|--------|-----------|---------------|
| `2026-07-11_network-session/` | Network + account diagnosis on an environment that had lost outbound TCP; live-validation attempts; frida binaries; env config tarballs. | `docs/03`, `docs/07` (environment was fixed later on a different host) |
| `2026-07-12_working-notes/` | 20 chronological working docs from the day the crypto was solved — including early **wrong** hypotheses (AES-GCM/CBC, "key unextractable") that were corrected the same day. | `docs/04`, `docs/05`, `docs/06`, `docs/08` |

## Specific disproved claims found in these notes

See [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md) (❌ section). Summary:

- ❌ "z is AES-GCM / ChaCha20 / AEAD" → ✅ it is AES-256-ECB
- ❌ "z is AES-256-CBC" → ✅ ECB (reproduced byte-for-byte)
- ❌ "key is per-message and erased; unextractable" → ✅ key derived from time, reproduced offline
- ❌ "rest.snakeseller.com is the beacon backend" → ✅ beacon → Cloud Run
- ❌ "FUN_00160208 never runs for network" → ✅ it decrypts the beacon response

## Why keep them?

Transparency. A reviewer can see the full reasoning trail — including where hypotheses were made
and then corrected by evidence. This is deliberate: the study's credibility rests on showing how
conclusions changed when evidence arrived.
