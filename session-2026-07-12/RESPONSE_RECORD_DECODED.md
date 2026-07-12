# Response Record — Semantic Decoding

**Date**: 2026-07-12
**Status**: The 32-byte server response record is decoded into constant markers, an echoed client field, and server-supplied per-request data. This adds *meaning* on top of the earlier structural proof.

---

## Method (`scripts/decode_response.py`, `scripts/decode_mask.py`)

Controlled correlation: craft z with chosen `(time, id, mask)`, decrypt the response with `resp_key(time,id)`, and observe which record bytes change when each input is varied.

## Findings

### 1. Fixed `(time, id)` → record is NOT constant (server injects data)

Sending identical `(time, id)` four times: **20/32** byte positions constant, **12** varying. So the response is not a pure function of the request — the server adds its own per-request data (counter / timestamp / nonce) in the 12 varying bytes.

### 2. The record ECHOES the client mask (proven)

Varying only the mask (which is **not** an input to `resp_key`), record bytes `[0], [4], [8], [12]` equal the mask exactly, little-endian:

```
mask=0x00000000 -> bytes[0,4,8,12] = 00 00 00 00   match
mask=0xffffffff -> bytes[0,4,8,12] = ff ff ff ff   match
mask=0xdeadbeef -> bytes[0,4,8,12] = ef be ad de   match
mask=0x11111111 -> bytes[0,4,8,12] = 11 11 11 11   match
mask=0xaabbccdd -> bytes[0,4,8,12] = dd cc bb aa   match
```

Because the mask lives only inside z's encrypted plaintext and is never used to key the response, the only way it can reappear in the decrypted reply is if the server **decrypted z, parsed its plaintext structure, extracted the mask, and re-emitted it**. This is a third independent confirmation of server-side cryptographic processing of z (the first two: response keyed to `(time,id)`; consistent template across keys).

Positions `[6,7,9,10,11,13,14,15,22,23,25,26]` also move with the mask — consistent with the reply re-encoding mask-dependent plaintext fields (e.g. `id XOR mask`).

### 3. Record layout (observed)

```
offset  bytes            meaning
------  ---------------  ---------------------------------------------
 0      mask[0]          echoed client mask (LE)
 1- 3   9c 14 00         constant marker  (LE 0x00149c = 5276)
 4      mask[1]          echoed client mask
 5      00               constant
 6- 7   varies w/ mask   mask-dependent field
 8      mask[2]          echoed client mask
 9-11   varies w/ mask   mask-dependent field
12      mask[3]          echoed client mask
13-15   varies w/ mask   mask-dependent field
16-19   83 00 00 00      constant marker  (LE 131)
20-21   d9 00            constant marker  (LE 217)
22-23   server-varying   per-request server data
24      00               constant
25-26   server-varying   per-request server data
27      ~3d/3e           near-constant (low-rate change)
28-31   00 e0 de 08      constant marker  (LE 0x08dee000)
```

The constant markers (`0x00149c`, `131`, `217`, `0x08dee000`) are stable across every request and likely encode a record type / protocol version / fixed server config. Their exact meaning is not determined.

---

## What this adds

- **Third proof** that the server fully decrypts and parses z (mask echo).
- The reply is a **structured record**, not an opaque nonce: it carries the echoed client mask, fixed markers, and ~12 bytes of server-generated per-request data.
- Both protocol directions are now decoded to the field level (uplink fully; downlink structurally + the echoed field identified).

## Limitations (unchanged)

- The semantics of the fixed markers and the server-varying bytes are **not** determined (could be timestamp, sequence counter, or session token — not proven).
- Still the beacon protocol only; the seller REST API auth (email+password) is untouched; no account access or auth bypass.

## Scripts
- `scripts/decode_response.py` — deterministic-vs-varying + field interpretation
- `scripts/decode_mask.py` — proves record bytes [0,4,8,12] == client mask
