# EVIDENCE MATRIX — Conclusion → Evidence

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Every conclusion is mapped to the concrete evidence (script + evidence file) that supports it. No
conclusion appears here without evidence. IDs match [docs/08_Findings.md](docs/08_Findings.md).

---

## ✅ Confirmed conclusions

| ID | Conclusion | Evidence (script → artifact) | How to verify |
|----|-----------|------------------------------|---------------|
| F‑03 | Beacon = `GET push-…run.app/?z=<98hex>&v=20` | `scripts/beacon-crypto/capture_all.py`, `trace_hosts.py` → `evidence/beacon-crypto-traces/`, `evidence/network-pcaps/` | hook SSL_write + getaddrinfo; see request line |
| F‑04/05 | `z` = `0x0c ‖ AES‑256‑ECB(K, pt)`; standard AES | `scripts/beacon-crypto/prove_z.py` → `evidence/z-samples/` | decrypt+re-encrypt reproduces `z` byte-for-byte |
| F‑06 | Key = `SHA256(shuffle(SHA256(PRNG16(floor(unix/16)))))`; reproduced offline | `reproduce_key.py`, `fresh_verify.py`, `end_to_end.py` | seed `111492102`→`40da6112…`; seed `111492128`→`8192f7fc…` |
| F‑08 | Plaintext = 4 zeros + interleave(id^mask‖mask‖time^mask, random); time=unix secs | `plaintext_decode.py` → `evidence/z-samples/` | decode recovers exact capture time (diff 0 s) |
| F‑09/10 | Server decrypts `z`, replies keyed to (time,id); echoes mask | `prove_challenge_response.py`, `prove_cr2.py`, `decode_mask.py` → `evidence/beacon-crypto-traces/` | correct key → 16/32 constant bytes; wrong → 0/32; mask at [0,4,8,12] |
| F‑11 | Server parses `z` but does not authenticate it | `discriminating_test.py`, `probe_logic.py`, `server_test.py` | garbage→200; odd-length→500; <32B→empty |
| F‑12 | No cert pin / mTLS / attestation / IP filter | `server_test.py` (curl from multiple nets) + string census | crafted `z` accepted off-device |
| F‑13 | No login; Device ID; 6-digit Entry Key | `evidence/screenshots/` (15 PNGs) | view screenshots |
| F‑14 | Entry-Key validation is local (0 network) | `test_code_network.py` → getaddrinfo hook | 0 new DNS during Activate |
| F‑15 | libengine has zero asymmetric crypto | string/symbol/constant scan (see docs/02, docs/06) | grep binary; P‑256/secp256k1/Ed25519 primes absent |
| F‑16 | Entered code is transformed, not string-compared | `hook_memcmp.py`, `capture_activate3.py` → `evidence/beacon-crypto-traces/` | code never appears verbatim; memcmp is token-self-check |
| F‑17 | Stable device token `751fb123…` (integrity self-check) | `correlate_activate.py`, `hook_memcmp.py` → `corr_runB/C.json`, `memcmp_activate.json` | identical across sessions/keys; memcmp s1==s2 |
| F‑18 | Anti-tamper: `.text` dies, `.data`/libc/Stalker safe | `test_inject.py`, `stalker_funcs.py`, comparative runs | write global → survives; Interceptor → dies 1.3 s |
| F‑19 | Only beacon + Firebase at runtime | `trace_hosts.py`, `trace_interact.py` | getaddrinfo shows 2 hosts over 30 s |
| F‑20 | Both beacon directions reproduced | `end_to_end.py` (up) + `prove_cr2.py` (down) | offline craft + offline decrypt |

## 🟨 Partially Confirmed

| ID | Conclusion | Evidence | Missing to reach ✅ |
|----|-----------|----------|---------------------|
| P‑01 | Website checkout: DeviceID → pay → Entry Key | frontend strings in `archive/2026-07-11_.../` (snakeengine_frontend.js) | end-to-end purchase not exercised |
| P‑02 | Seller REST API needs email+password | `server_test.py` (returns "Authentication failed") | no credentials; schema unknown |
| P‑03 | `FUN_0017e148`: symmetric decrypt + ±0xFF time window | Ghidra read of `libengine_decompiled.c` | not confirmed as THE Entry-Key validator |
| P‑04 | `DAT_009280f8` holds decrypted beacon reply | `poll_decrypt_global.py` | contents unstable; timing-based only |
| P‑05 | Virtualization engine loads game in `:engine` | July‑8 static/Qiling notes (archive) | not re-verified live (no target game) |

## ❓ Unknown (no sufficient evidence either way)

| ID | Question | What exists | What is needed |
|----|----------|-------------|----------------|
| U‑01 | Entry-Key algorithm | brute-force failures (`prove failed` notes), Stalker ranges | clean validator isolation (Stalker on UI thread) |
| U‑02 | Forgeability of a key | symmetric confirmed; inputs unknown | recover token derivation + key inputs |
| U‑03 | Token `751fb123…` derivation | not on disk; not simple hash (tested) | trace boot derivation via libc/Stalker |
| U‑04 | Response field meanings | mask echo known; markers fixed | correlate many (time,id,mask) samples |
| U‑05 | Backend `z` validation | ingress accepts anything | volume/behavioral server tests |

## ❌ Disproved (evidence contradicts earlier claims)

| ID | Old claim | Disproving evidence |
|----|-----------|---------------------|
| D‑01 | `z` is AEAD/GCM/ChaCha | `scanner*.c` NO MATCH over 2.6 GB + `prove_z.py` ECB reproduction |
| D‑02 | `z` is AES-CBC | `prove_z.py`: ECB (not CBC) reproduces `z` exactly |
| D‑03 | key per-message & erased | `reproduce_key.py`: key reproduced offline from time |
| D‑04 | `FUN_00160208` never used for network | it decrypts the beacon reply (docs/05) |
| D‑05 | `rest.snakeseller.com` is beacon backend | `trace_hosts.py`: beacon → Cloud Run |
| D‑06 | token `751fb123…` = comparison target | `hook_memcmp.py`: token compared to itself |
| D‑07 | activation asymmetric/unforgeable | binary census: zero asymmetric primitives |

> Note: the `scanner*.c` **negative results** remain valid evidence (they ruled out AEAD/CBC/MAC
> static keys). Only the early *interpretation* built on them (AEAD framing) was disproved.
