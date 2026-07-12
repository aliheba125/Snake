# KNOWLEDGE MAP — Component Relationships

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

How every component connects. Edges are labelled with the relationship and a status.

---

## Master diagram

```
                              ┌─────────────────────────────┐
                              │        USER / DEVICE         │
                              │  Device ID (e.g. 394318) ✅  │
                              └───────────────┬─────────────┘
                                              │ enters 6-digit Entry Key
                                              ▼
┌──────────────────────────────── com.snake (main process) ─────────────────────────────────┐
│                                                                                             │
│   FLUTTER / DART                                        NATIVE ENGINE                        │
│  ┌──────────────────────┐     Dart FFI (✅)          ┌────────────────────────────────┐     │
│  │ libapp.so (Dart AOT) │ ─────────────────────────▶ │ libengine.so (obfuscated)      │     │
│  │  • all UI/logic      │                            │  • AES-256 (ECB) enc/dec  ✅   │     │
│  │  • pointycastle OIDs │  (asymmetric strings here, │  • SHA-256, PRNG, shuffle ✅   │     │
│  │    for TLS only ✅   │   NOT used for activation) │  • master-key gen (time)  ✅   │     │
│  └──────────┬───────────┘                            │  • beacon build/parse     ✅   │     │
│             │ uses                                    │  • Entry-Key validate     ❓   │     │
│             ▼                                         │  • device token 751f…     ✅   │     │
│  ┌──────────────────────┐                            │  • virtualization/hook    🟨   │     │
│  │ libflutter.so        │  TLS (BoringSSL) ✅        │  • anti-tamper watchdog   ✅   │     │
│  │  + BoringSSL         │ ──────────────┐            └──────────────┬─────────────────┘     │
│  └──────────────────────┘               │                          │ IPC                    │
└──────────────────────────────────────── │ ──────────────────────── │ ───────────────────────┘
                                           │                          ▼
                                           │            ┌─────────────────────────────┐
                                           │            │ com.snake:engine (2nd proc) │
                                           │            │  virtualization/game load 🟨│
                                           │            └─────────────────────────────┘
                                           ▼
        ┌──────────────────────────────────────────────────────────────────────┐
        │                          NETWORK (TLS)                                 │
        │                                                                        │
        │  ① BEACON (once, cold launch) ✅          ② FIREBASE ✅                 │
        │  push-918010152455.europe-west1.run.app    storage.googleapis.com      │
        │  GET /?z=<98hex>&v=20                       (assets / remote config)    │
        │   z = 0x0c ‖ AES-256-ECB(K_time, pt) ✅                                  │
        │   reply = AES-256-ECB(resp_key(time,id), rec) ✅                         │
        │                                                                        │
        │  ③ SELLER REST API 🟨 (only after seller login, not reached)           │
        │  rest.snakeseller.com/api/request/  (email+password; X-Req/X-Client)    │
        └──────────────────────────────────────────────────────────────────────┘
```

## Relationship table

| From | To | Relationship | Status |
|------|----|--------------|--------|
| libapp (Dart) | libengine | calls crypto/beacon/activation via **FFI** | ✅ |
| libapp | libflutter | uses Flutter engine + TLS (BoringSSL) | ✅ |
| libengine | master key `DAT_009280f0` | generates from `floor(unix/16)` at boot | ✅ |
| libengine | beacon `z` | builds `0x0c ‖ AES-256-ECB(K, plaintext)` | ✅ |
| Beacon `z` | Cloud Run server | GET request, server **decrypts** it | ✅ |
| Cloud Run server | beacon reply | encrypts with `resp_key = SHA256(gen32(time,id))` | ✅ |
| libengine (`FUN_00189774`) | `DAT_009280f8` | decrypts reply → stores record | 🟨 |
| Entry Key (user) | libengine validator | transformed + checked **locally** (symmetric) | ✅ model / ❓ algorithm |
| Website checkout | Entry Key | server generates key bound to Device ID | 🟨 (frontend strings) |
| Seller | REST API | email+password; manage subs/keys/orders | 🟨 (not accessed) |
| Firebase | app | assets, remote config, messaging (project 918010152455) | ✅ |
| libengine watchdog | process | self-exit on `.text` modification | ✅ |

## Crypto relationships (who uses what)

| Primitive | Where | Used for | Status |
|-----------|-------|----------|--------|
| AES-256-ECB (encrypt) | libengine `FUN_00160640` | build `z` | ✅ |
| AES-256-ECB (decrypt) | libengine `FUN_00160208/0d2c` | beacon reply + (likely) activation | ✅ / 🟨 |
| SHA-256 | libengine `FUN_00161428/898a14` | key derivations | ✅ |
| PRNG16 + shuffle | libengine `FUN_001614a4/61598` | master-key from time | ✅ |
| `gen32` KDF | libengine `FUN_00161788` | response key from (time,id) | ✅ |
| Mersenne-Twister | libengine `FUN_00152cec` | nonce/mask randomness | ✅ |
| BoringSSL | libflutter | TLS transport only | ✅ |
| pointycastle OIDs | libapp | ASN.1/X.509 for TLS (NOT activation) | ✅ |
| RSA/ECDSA/Ed25519 | libengine | **absent** | ❌ (none) |

## Key insight the map encodes

The **beacon** and the **activation** are cryptographically related (both use libengine's
symmetric AES + the same KDF family) but serve different purposes. The **seller REST API** is a
separate world (asymmetric/TLS + credential auth) that this study did not enter. Security of the
*whole system* rests on the seller API + the (undetermined) Entry-Key algorithm — **not** on the
beacon, which is fully reproduced.
