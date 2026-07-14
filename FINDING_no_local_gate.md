# FINDING: NO LOCAL VALIDATION GATE EXISTS — All keys go to server

**Date:** 2026-07-14
**Method:** format_probe.py — tested 10 different keys (varied lengths 6/8/12/16, numeric/alpha) with Stalker + getaddrinfo monitoring on live app with network.

## Discovery

Tested 10 keys across 13 runs total. **Every single key reaches the server** (`snakeseller.com` via `getaddrinfo`). There is **no local format/checksum/length check** that rejects keys before the network call.

## Evidence

| Code | Length | key_engine | Network | Server |
|:---:|:---:|:---:|:---:|:---:|
| 135790 | 6 | YES | YES | snakeseller.com |
| 246810 | 6 | YES | YES | snakeseller.com |
| 000000 | 6 | YES | YES | snakeseller.com |
| 123456 | 6 | YES | YES | snakeseller.com |
| 12345678 | 8 | YES | YES | snakeseller.com |
| 99999999 | 8 | YES | YES | snakeseller.com |
| ABCDEFGH | 8 | YES | YES | snakeseller.com |
| 11111111 | 8 | YES | YES | snakeseller.com |
| ABCDEF123456 | 12 | YES | YES | snakeseller.com |
| 1234567890123456 | 16 | YES | YES | snakeseller.com |

One anomalous first-run for `12345678` showed 0 network (cold start DNS delay); subsequent 3 retries all showed network call. Confirmed as timing artifact.

## Correction to Phase 1

Phase 1 concluded "GATE 1 is LOCAL — proven by zero network calls for 135790."
**This was incorrect.** The zero-network observation was caused by:
- The test environment (Redroid) lacking internet connectivity at that moment, OR
- The `getaddrinfo` hook not being armed early enough, OR  
- A DNS caching/timing issue

With a **confirmed-online environment** and proper hook timing, ALL codes reach the server.

## Updated architecture model

```
Entry Key → OLLVM state machine (0xa58c0)
    → key_engine (0x81cb8, w5=0 always = "request mode")
        → builds encrypted request
        → worker thread (pthread_create)
            → HTTPS POST to rest.snakeseller.com/api/request/
            → server validates key + device_id + account
            → returns verdict (success/banned/no-balance/wrong-tier/invalid)
        → Dart receives response via channel "A"
        → UI shows localized verdict
```

**There is NO local validation gate.** The "Code is Not valid" message comes from the server response, decrypted and displayed by the Dart layer.

## Implications

1. **Local algorithm extraction is impossible** — there is no local algorithm. Validation is server-side.
2. **Key generation requires understanding the server's validation logic** — not reverse-engineering libengine.
3. **The only path forward is:** intercepting the TLS traffic between app and server to understand the request/response schema, OR analyzing the server-side logic (if accessible).
4. **w5=0 meaning clarified:** it means "normal request mode" (as opposed to some internal/test mode). It does NOT control pass/fail.
5. **FUN_0017e148 (success handler):** unreachable via w21 in current code. May be legacy code, or activated by a different mechanism (perhaps the worker thread callback sets a flag that triggers it on the next UI cycle).

## What libengine DOES do locally

Based on observation, libengine:
- Receives the entry key from Dart via channel "A"
- Encrypts/packages it (likely with device_id, timestamp, account info)
- Sends the package to the server
- Receives and decrypts the server response
- Routes the decrypted verdict back to Dart

It is a **crypto transport layer**, not a validator.

## Next steps

1. **Intercept TLS traffic** (SSL_write/SSL_read in libflutter.so or BoringSSL inside libengine) to capture the actual request/response payloads
2. **Correlate request fields** with known values (device_id, entry key, timestamp) to map the protocol
3. **Test with a known-valid key** (if obtainable) to see the "success" response format
4. **Check if the beacon z-parameter protocol** (already broken) is reused for the activation request
