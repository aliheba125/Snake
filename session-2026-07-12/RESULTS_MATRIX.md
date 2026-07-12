# Memory-scan results matrix (raw)

All scans read full `/proc/<pid>/mem` dumps (anonymous rw regions) taken while the app ran
un-instrumented on Redroid 14. Verifiers are self-tested for correctness before each run:
- `scanner.c`  → AES-GCM, self-test vs NIST KAT `58e2fccefa7e3061367f1d57a4e7455a` = PASS
- `scanner2.c` → AES-256-GCM + ChaCha20-Poly1305 (OpenSSL EVP), self-test both = PASS
- `scanner3.c` → AES-CTR keystream + known-plaintext needle (AAD-independent)

A GCM/Poly1305 tag match is cryptographic proof (false-positive ≈ 2⁻¹²⁸).

| # | dump | MB | algo(s) | key sizes | align | z-sample | AAD | outcome |
|---|------|----|---------|-----------|-------|----------|-----|---------|
| 1 | main anon | 1419 | AES-256-GCM | 32 | 8 | old | ∅,0x0c | NO MATCH |
| 2 | main anon | 1419 | AES-256-GCM + ChaCha20-Poly1305 | 32 | 8 | old | ∅,0x0c | NO MATCH |
| 3 | base.apk (Dart AOT rodata + code + data) | 59 | AES-GCM + ChaCha | 16/24/32 | 1 | old×2 | ∅,0x0c | NO MATCH |
| 4 | main anon | 1419 | AES-256-CTR (KP = android_id, ctr∈{0,1,2}) | 32 | 1 | old×2 | n/a | NO KP-MATCH |
| 5 | engine anon | 1205 | AES-256-GCM + ChaCha | 32 | 8 | old | ∅,0x0c | NO MATCH |
| 6 | main anon | 1419 | AES-256-GCM + ChaCha | 32 | 8 | **fresh** | ∅,0x0c | NO MATCH |
| 7 | main anon | 1419 | AES-256-CTR (KP = android_id) | 32 | 1 | **fresh** | n/a | NO KP-MATCH |
| 8 | main anon | 1419 | AES-128-GCM | 16 | 8 | **fresh** | ∅,0x0c | NO MATCH |
| 9 | main anon | 1419 | AES-192-GCM | 24 | 8 | **fresh** | ∅,0x0c | NO MATCH |
| 10 | main anon | 1419 | AES-256-GCM + ChaCha | 32 | 8 | **fresh** | ∅,0x0c,"20",nonce,ver+nonce | NO MATCH |
| 11 | main anon | 1419 | AES-256-GCM | 32 | **1** (unaligned) | **fresh** | ∅,0x0c | NO MATCH |

**Conclusion:** No static AES-128/192/256-GCM or ChaCha20-Poly1305 key (aligned or unaligned),
and no AES-CTR key producing an android_id plaintext, exists as contiguous bytes in either
process's live memory — verified with a **freshly-captured in-memory** `z` sample (row 6-11), which
eliminates the "key belonged to an expired session" possibility. See `KEY_EXTRACTION_FINDINGS.md`
§3 for the surviving hypotheses (non-standard AAD / per-message KDF / encrypt-then-MAC / hybrid).
