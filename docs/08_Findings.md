# 08 — Consolidated Findings

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

This is the master list of conclusions. Each links to evidence in
[`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md).

---

## ✅ Confirmed

| ID | Finding |
|----|---------|
| F‑01 | App = Snake Engine `com.snake` v2.2.6; Flutter application platform |
| F‑02 | Three native libs: `libapp.so` (Dart AOT), `libflutter.so` (engine+BoringSSL), `libengine.so` (obfuscated engine) |
| F‑03 | Cold-launch beacon: `GET push-918010152455.europe-west1.run.app/?z=<98hex>&v=20` |
| F‑04 | `z` = `0x0c` pad-length ‖ **AES‑256‑ECB**(master_key, plaintext padded to 48 B) |
| F‑05 | Cipher is standard AES‑256‑ECB (standard S-box + key schedule); reproduced byte-for-byte with PyCryptodome |
| F‑06 | master_key = `SHA256(shuffle(SHA256(PRNG16(floor(unix/16))), seed))`; **reproduced offline** in two independent runs |
| F‑07 | Effective key space = candidate time buckets (~16 s), not 2²⁵⁶ (design weakness) |
| F‑08 | Plaintext = 4 zero bytes + interleave(P=id^mask‖mask‖time^mask, Q=random); `time` = exact unix seconds |
| F‑09 | Server **decrypts** `z`, recovers `(time,id)`, replies with `AES‑256‑ECB(resp_key=SHA256(gen32(time,id)), record)` |
| F‑10 | Response record **echoes client `mask`** at bytes [0,4,8,12]; proof 16/32 constant (correct key) vs 0/32 (wrong key) |
| F‑11 | Server does **no authenticity check** on `z` (garbage accepted) but **parses** it (malformed→500; <32 B→no token) |
| F‑12 | No cert pinning, mutual TLS, device attestation, IP filter, or UA check on the beacon endpoint |
| F‑13 | App opens with no login; Device ID (394318) assigned; activation via 6-digit Entry Key |
| F‑14 | Entry-Key validation is **fully local** (0 network, ~127 libengine AES ops) |
| F‑15 | `libengine.so` has **zero asymmetric crypto** → on-device activation is symmetric |
| F‑16 | Entered code is **transformed**, not string-compared (no verbatim code in buffers) |
| F‑17 | Stable 32-byte device token `751fb123…` processed at Activate; session-stable; used as an **integrity self-check** (memcmp to itself) |
| F‑18 | Anti-tamper: `.text` hooks → death ~1.3 s; `.data`/libc/Stalker safe; maps-scan addressed via `/system/lib64` |
| F‑19 | Only two hosts at runtime: beacon (once) + Firebase Storage; app network-silent afterwards |
| F‑20 | Beacon protocol reproduced in **both** directions offline (craft `z`; decrypt reply) |

## 🟨 Partially Confirmed

| ID | Finding | Gap |
|----|---------|-----|
| P‑01 | Website checkout: Device ID → pay → Entry Key (from frontend strings) | not exercised end-to-end |
| P‑02 | `rest.snakeseller.com/api/request/` is a separate seller API needing email+password | rejects us; schema unknown |
| P‑03 | `FUN_0017e148` shows symmetric decrypt + ±0xFF time-window check | not confirmed as THE Entry-Key validator |
| P‑04 | `DAT_009280f8` holds the decrypted beacon response | contents unstable; not byte-locked to the reply |
| P‑05 | Self-modifying/virtualization engine loads target game in `:engine` process | July‑8 static/emulation only; not re-verified live |

## ❓ Unknown

| ID | Question |
|----|----------|
| U‑01 | Exact Entry-Key key-derivation + comparison algorithm |
| U‑02 | Whether a valid Entry Key can be generated (key inputs not recovered) |
| U‑03 | Derivation of the stable device token `751fb123…` |
| U‑04 | Meaning of the response's fixed markers and server-varying fields |
| U‑05 | Whether the beacon has deferred/backend validation of `z` |
| U‑06 | Full seller REST API schema / login flow |
| U‑07 | What functionality it provides in-game |

## ❌ Disproved

| ID | Claim (from earlier notes) | Correction |
|----|-----------------------------|------------|
| D‑01 | `z` is AES‑GCM / ChaCha20‑Poly1305 / AEAD | It is AES‑256‑ECB |
| D‑02 | `z` is AES‑256‑CBC | It is ECB (reproduced byte-for-byte) |
| D‑03 | key is per-message and erased; unextractable | key is time-derived and reproduced offline |
| D‑04 | `FUN_00160208` never runs for network (game-patch only) | it decrypts the beacon response |
| D‑05 | `rest.snakeseller.com` is the beacon backend | beacon → Cloud Run; REST is a separate seller channel |
| D‑06 | device token `751fb123…` is the code-comparison target | it is an integrity self-check |
| D‑07 | activation is asymmetric → mathematically irreproducible | activation is symmetric |
