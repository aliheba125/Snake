# Server z-Processing Analysis — Correcting Earlier Overreach

**Date**: 2026-07-12
**Purpose**: A methodological review correctly flagged that the earlier claim "the server does not validate z at all" was stronger than the evidence. This document replaces that claim with precise, test-backed statements that distinguish **"the server responds"** from **"the server actually processes z"**.

---

## Correction of Prior Claims

| Earlier claim | Status | Correction |
|---------------|--------|-----------|
| "Server does not validate z at all" | ❌ OVERREACH | The server DOES parse z: malformed z causes HTTP 500, and there is a length threshold for producing a token. |
| "Accepts any hex" | ⚠️ IMPRECISE | It accepts any *even-length, ≥32-byte* hex. Odd-length or non-hex → HTTP 500. Shorter hex → 200 but empty body. |
| "Returns same token for everyone" | ⚠️ IMPRECISE | The token is unique per request (server-side randomness), but issuance is conditional on input shape. |

The methodological critique was correct. The tests below show the server has real parsing logic; what it does NOT do is *cryptographically validate* the z payload.

---

## What the tests actually prove (measured, not inferred)

### 1. The server PARSES z (it is not ignored)

| Input | HTTP | Body size | Interpretation |
|-------|------|-----------|----------------|
| odd-length hex (97 chars) | **500** | 0 | server-side exception → it tries to byte-decode z |
| non-hex (`zzz…`) | **500** | 0 | hex-decode fails → real parsing |
| `0cGG…` (invalid hex digit) | **500** | 0 | same |
| valid even-length hex | 200 | conditional | decode succeeds |

HTTP 500 on malformed input is positive evidence of server-side processing (an exception thrown while decoding). This directly refutes "the server ignores z."

### 2. There is a precise LENGTH THRESHOLD (32 bytes)

Valid even-length hex, varying byte length:

```
 1..31 bytes  -> HTTP 200, body size 0   (no token issued)
 32+ bytes    -> HTTP 200, body size 66  (33-byte token issued)
```

The boundary is exactly 32 bytes (64 hex chars). This is deterministic logic, not random behavior. (The app's real z is 49 bytes, comfortably above the threshold.)

### 3. What the server does NOT check (also measured)

| Check | Result | Evidence |
|-------|--------|----------|
| pad_length byte value | not checked | pad = 0x00, 0x0c, 0x10, 0xff all → size 66 |
| decryptability with the real key | not checked | a properly-encrypted z and a random 48-byte z both → size 66 |
| `v` parameter value | not checked | v = 20, 1, 999, abc, empty, missing all → size 66 |
| timestamp freshness | not checked | 1-hour-old crafted z → size 66 |
| client TLS cert / mutual TLS | not required | curl with system CAs succeeds |
| source IP | not filtered | works from EC2 and from the sandbox |
| user-agent | not validated | works with arbitrary UA |

So the server validates **structure** (hex, even length, ≥32 bytes) but not **authenticity** (it does not attempt to decrypt z or verify it was produced by a legitimate key).

### 4. The response is a server-generated random nonce, NOT a function of z

- The same z sent 6 times produced **6 different** 33-byte responses.
- The response does **not** decrypt as `padlen‖AES-ECB(key,·)` under the time-bucket key (tried seeds ±2).
- Response length is constant (33 bytes) across all valid inputs.

Interpretation: the 33-byte reply is most consistent with a freshly generated server-side token/nonce (e.g., a registration or session identifier), emitted whenever a structurally-valid z of sufficient length arrives. **We have NOT decoded its meaning or proven it is functionally "accepted" downstream** — see limitations.

---

## Honest limitations (what we did NOT prove)

Per the critique, the following remain **unproven**:

1. **We did not prove z is "functionally accepted."** A 200 + token could mean the server queued it, logged-and-ignored it, or deferred validation. We only proved the request produces a token under structural conditions.
2. **We did not decode the 33-byte response.** Its purpose (push-registration token? opaque nonce? session id?) is unknown. It is not usable as a Bearer token on the REST API (returns "Authentication failed").
3. **We did not test volume/rate-limiting at scale** (only ~10s of requests). No conclusion on abuse resistance.
4. **We did not prove any login access or account access.** The seller REST API (`rest.snakeseller.com`) uses separate email+password auth and rejects unauthenticated requests. Nothing here accesses it.

---

## Bottom line (precise)

- **Proven**: the endpoint is reachable off-device with no mutual TLS; the server *parses* z (malformed → 500); it issues a 33-byte token only for structurally-valid z ≥ 32 bytes; it does **not** verify z's cryptographic authenticity, the `v` value, timestamp freshness, IP, or user-agent.
- **Not proven**: that z is "used" downstream in any meaningful way; the meaning of the response; any ability to log in, access accounts, or access the authenticated REST API.

Understanding and reproducing z (cipher + key + payload) is fully established. Turning that into access to the app's protected functionality is a **separate, unproven** capability — the authentication boundary is the REST API, which this work does not defeat.

---

## Test scripts

- `scripts/discriminating_test.py` — length/charset/v-value/response-uniqueness matrix
- `scripts/probe_logic.py` — exact length threshold, pad-byte/decryptability/response-decrypt probes, malformed→500 confirmation
