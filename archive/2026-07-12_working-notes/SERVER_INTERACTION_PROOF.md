# Server Interaction Proof — Can a Crafted z Bypass Server Protections?

**Date**: 2026-07-12  
**Status**: PROVEN — a crafted z (generated offline from wall-clock time alone) is accepted by the production server with no additional authentication. However, this endpoint is a **beacon/telemetry** endpoint, not the authenticated seller API.

---

## Executive Summary

| Question | Answer | Evidence |
|----------|--------|----------|
| Can we craft z offline? | ✅ Yes | `end_to_end.py` reproduces z byte-for-byte from time alone |
| Does the server validate z content? | ❌ No | Garbage hex (`deadbeef...`) gets same 200 + token response |
| Is cert pinning required? | ❌ No | `curl` from any machine works (no client cert, no pinning) |
| Is device attestation used? | ❌ No | No SafetyNet/Play Integrity strings in any binary |
| Is IP filtering applied? | ❌ No | Works from EC2 us-east-1 AND sandbox (different networks) |
| Is user-agent validated? | ❌ No | Works with `user-agent: test` |
| Can crafted z access the seller REST API? | ❌ No | REST API at `rest.snakeseller.com` has separate auth (email+password) |
| Is the push-endpoint response usable as auth token? | ❌ No | Using it as Bearer token on REST API returns "Authentication failed" |

**Bottom line**: The z endpoint (`push-918010152455.europe-west1.run.app`) is a completely unauthenticated beacon. Anyone can interact with it using any z value. But this does NOT grant access to the authenticated seller functionality at `rest.snakeseller.com`.

---

## Architecture (Two Separate Systems)

```
┌─────────────────────────┐
│   Snake App (com.snake)  │
│                          │
│  ┌────────────────────┐  │
│  │ Cold launch beacon │──────► push-918010152455.europe-west1.run.app
│  │ (anonymous, no auth)│  │     GET /?z=<98hex>&v=20
│  │ Fires BEFORE login  │  │     Response: 66 hex chars (33 bytes)
│  └────────────────────┘  │     NO AUTH REQUIRED
│                          │
│  ┌────────────────────┐  │
│  │ Seller REST API    │──────► rest.snakeseller.com/api/request/
│  │ (email+password)   │  │     Requires: Authorization header
│  │ Login required     │  │     Returns: "Authentication failed" without valid token
│  └────────────────────┘  │
└─────────────────────────┘
```

---

## Test Results

### Test 1: Legitimate z (captured from running app)
```
URL: https://push-918010152455.europe-west1.run.app/?z=0c9b5df1...882e7bf61e&v=20
HTTP: 200
Body: a4c3b8fe9305c6beac2cba27eaceb8dea3dbf2e54ac33b89ca26f24579c61417a7 (66 hex chars)
```

### Test 2: Garbage z (random hex, invalid structure)
```
URL: https://push-918010152455.europe-west1.run.app/?z=deadbeef...abcdef01&v=20
HTTP: 200
Body: 84d71bc515137724b0093c52cd7a09f11c93d803ff7708846b9196cb4a82cb416f (66 hex chars)
```

### Test 3: Crafted z (generated OFFLINE from current time)
```
z = 0c1593d39d7ae5e2cf3fe7ccb413e93e89dc17a7349dac986391973001c27460028105e9cd46943c1267d7898213fbeee8
Key used: 7d0da0ecfe62fb6032af1dd821ffb4944d3973dc58c74e6e38e20b0b4e94ff38
Seed: 111492267 (= floor(unix_time/16))
HTTP: 200
Body: 006aa0d68018ff0fbc288fa524b5ee31996bd68ed42e5b19f351a559f2358fa162 (66 hex chars)
```

### Test 4: Crafted z from 1 hour ago (stale time bucket)
```
HTTP: 200
Body: 43d3a845a3f7020acbb5b75004827881efb7f6272c2686752ae1778a3fa98ac044 (66 hex chars)
```
Server does NOT check timestamp freshness.

### Test 5: Empty z / No z
```
HTTP: 200
Body: (empty / newline only)
```

### Test 6: Same z sent twice → different responses
```
R1: 57963de03caffa86f6c750430d5e32cbf844063864c7de0c510c183425dc7482c7
R2: f9f5e66f6feed1dc9105d493e9079add27097807a9391fc60fa36727caeb58da7a
```
Response is NOT deterministic from z → server adds its own randomness/state.

### Test 7: From completely different network (this sandbox, not EC2)
```
HTTP: 200
Body: c88677b34569f85ba8d127d7861e1f0e65c88a74c616ab5f85c747ecc3eee4b6e4
```
No IP filtering.

### Test 8: Wrong user-agent
```
user-agent: Mozilla/5.0
HTTP: 200
Body: 003272...e8814e (66 hex chars)
```
No UA validation.

### Test 9: Push response used as Bearer token on REST API
```
curl rest.snakeseller.com/api/request/?action=profile -H "Authorization: Bearer <push_token>"
Response: {"error":true,"error_code":-1,"message":"Authentication failed"}
```
Push token does NOT unlock the REST API.

---

## What the Push Endpoint Does

Based on all evidence:

1. **It is a telemetry/heartbeat beacon** — fires at cold launch, before any user interaction or login.
2. **It accepts any input** — no validation of z content, timestamp, structure, or authenticity.
3. **It returns a 33-byte nonce** — changes every call, not derived from z. Purpose unclear (possibly a server-side session ID or push notification registration token).
4. **It has no authentication** — no API key, no client cert, no device attestation, no IP filter.
5. **It is separate from the seller API** — the main business logic at `rest.snakeseller.com` requires email+password login and returns "Authentication failed" without proper credentials.

---

## Security Assessment

### What z-knowledge DOES enable:
- ✅ Sending valid-looking beacons to the push endpoint (indistinguishable from app traffic)
- ✅ Receiving 33-byte server responses (purpose unknown, but available to anyone)
- ✅ Potentially flooding the endpoint (no rate limiting observed in our tests)
- ✅ Understanding the app's launch telemetry mechanism

### What z-knowledge does NOT enable:
- ❌ Logging into seller accounts (requires email+password on a separate endpoint)
- ❌ Accessing user data (REST API rejects unauthorized requests)
- ❌ Impersonating another user/device (z contains only timestamp + random nonce, no identity)
- ❌ Bypassing seller authentication (completely separate system)
- ❌ Gaining any privileged access (push endpoint returns same response for everyone)

---

## Protections Checked

| Protection | Present? | Evidence |
|-----------|----------|----------|
| Server-side z validation | ❌ | Garbage z accepted |
| Timestamp freshness check | ❌ | 1-hour-old z accepted |
| TLS client certificate | ❌ | curl with system CAs works |
| Certificate pinning (client-side) | N/A | Not relevant for server access |
| SafetyNet / Play Integrity | ❌ | No strings in any binary |
| Device attestation | ❌ | No evidence in code or network |
| IP-based access control | ❌ | Works from multiple networks |
| User-Agent validation | ❌ | Any UA accepted |
| Rate limiting | ❌ | 10 rapid requests all succeeded |
| Session cookies | ❌ | No Set-Cookie in response |
| CORS enforcement | N/A | Server sets `Access-Control-Allow-Origin: *` on REST API |

---

## Conclusion

The "ملخص التنفيذي" (executive summary) review was **partially correct**:

> ✅ Correct: "Understanding how z is created ≠ ability to access app functionality"

The seller REST API (`rest.snakeseller.com`) has separate authentication that z does not bypass.

> ❌ However, the review overstated remaining protections:

The push endpoint has **zero** protections. There is no cert pinning, no device attestation, no IP filtering, no z validation — literally nothing prevents anyone from interacting with it. The z "encryption" provides no security against this endpoint because the endpoint doesn't even check if z is valid.

**The real security boundary is the REST API authentication**, not the z parameter. The z endpoint is effectively a public endpoint with an obfuscation layer that provides no actual security.

---

## Reproduction

```bash
# From any machine with internet access:
curl -s "https://push-918010152455.europe-west1.run.app/?z=0c$(openssl rand -hex 48)&v=20"
# Returns: 66 hex chars (33-byte token)
```

No special tools, keys, or device required.
