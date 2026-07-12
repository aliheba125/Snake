# Snake Engine (com.snake v2.2.6) — z-parameter key extraction

Session 2026-07-12 (continuation). Live environment: EC2 `44.198.192.12` (Graviton, ARM64) +
Redroid 14 container. App run **natively, without any instrumentation** (no Frida, no Gadget, no
`wrap.` LD_PRELOAD) so the observed behaviour is the app's genuine behaviour.

> Methodology note (per owner's instruction): everything below is split into **PROVEN FACTS**
> (directly observed/reproducible) vs **HYPOTHESES** (inference, not yet confirmed). Memory was
> read via `/proc/<pid>/mem` as root, which does **not** attach a debugger (`TracerPid` stays 0),
> so it does not trip the app's anti-ptrace and does not modify the app.

---

## 1. PROVEN FACTS (this session, live & reproducible)

1. **App runs to the authenticated home screen** on Redroid 14 without instrumentation.
   Screenshot shows account **394318**, "Supported Games: 3" (8 Ball Pool / Carrom Pool /
   Soccer Stars, all with ⚠ = not entitled).
2. **Two processes:** `com.snake` (main, Flutter/Dart UI) and `com.snake:engine`
   (virtualization engine). Both had TCP6 connections open during the run.
3. **`extractNativeLibs=false`** — `libapp.so` / `libflutter.so` / `libengine.so` are mmap'd
   directly from `base.apk` (they appear in `/proc/pid/maps` as `base.apk` r-xp/r--p segments,
   NOT as `*.so` paths). This earlier caused a false "no Flutter libs loaded" reading.
4. **No Java/Kotlin crypto** in the app: zero `javax.crypto` / `Cipher.getInstance` /
   `SecretKeySpec` / `GCMParameterSpec` references in `classes.dex` (jadx + smali).
5. **`cip_pub` SharedPreference is EMPTY** (`/data/data/com.snake/shared_prefs/com.snake.xml`
   → `<string name="cip_pub"></string>`), even though account 394318 shows on screen.
6. **394318 is not stored on disk anywhere** in `/data/data/com.snake/` — it is fetched from the
   backend and held in memory only.
7. **`android_id = 8840bf6a81679fc4`** on this device (identical to the prior session).
8. **A fresh, live `z` request was recovered from the main process's memory:**
   `z=0c08148dc1591739cd5f11ccabf10855ede1ee301088089963d7d86200ef70d17359cae7a7570d91d308a6badb2947afc3`
   This proves the `z` request is assembled in the **main (`com.snake`) process**, and that the
   **key currently in use is resident in that process's memory at dump time**.
9. **The z-endpoint host is NOT a plaintext constant anywhere** — `push-…run.app`, `?z=`, `&v=`,
   `europe-west1` are absent from the Dart object pool (`pp.txt`), Java, smali, and
   `strings(libengine.so)` / `strings(libapp.so)`. It is built/decrypted at runtime (libengine
   strings are encrypted; `Native.ilil(index)` decodes them on demand). The assembled URL
   (`…europe-west1.run.app`, `z=0c…`) IS present in live memory.
10. **The Dart object pool contains NO AES S-box, NO AES T-table (`0xc66363a5`), NO ChaCha
    `expand 32-byte k` constant, NO Poly1305 mask.** The pointycastle OID registry strings
    (`curveX25519`, UZDST … digest/cipher) are present but are the library's static OID table —
    not evidence that the *z-cipher* is table-based Dart AES/ChaCha.
11. **`z` envelope size is 49 bytes** = `0x0c` (1) + 48 bytes, matching a 12-B nonce + 20-B
    ciphertext + 16-B trailer (AEAD-shaped).

### 1a. Exhaustive memory-scan results — ALL NEGATIVE

A hand-rolled AES-GCM verifier (self-tested against the NIST all-zero KAT
`58e2fccefa7e3061367f1d57a4e7455a`) and an OpenSSL-EVP verifier (self-tested for both AES-256-GCM
and ChaCha20-Poly1305) were run over full `/proc/pid/mem` dumps. A tag match would be
cryptographic proof (false-positive ≈ 2⁻¹²⁸). Tools: `scanner.c`, `scanner2.c`, `scanner3.c`.

| Dump (size) | Algorithm | Key sizes | Alignment | Sample | AAD variants | Result |
|---|---|---|---|---|---|---|
| main anon (1419 MB) | AES-GCM | 128/192/256 | 8 | fresh + old | {}, {0x0c} | **NO MATCH** |
| main anon | ChaCha20-Poly1305 | 256 | 8 | fresh + old | {}, {0x0c} | **NO MATCH** |
| main anon | AES-256-GCM | 256 | **1** | fresh + old | {}, {0x0c} | **NO MATCH** |
| main anon | AES-GCM + ChaCha | 256 | 8 | fresh | {}, {0x0c}, "20", nonce, ver+nonce | **NO MATCH** |
| main anon | AES-256-CTR (known-plaintext = android_id, 3 counter starts) | 256 | **1** | fresh + old | n/a (AAD-independent) | **NO MATCH** |
| engine anon (1205 MB) | AES-GCM + ChaCha | 256 | 8 | old | {}, {0x0c} | **NO MATCH** |
| base.apk r/rx/rw (58 MB, all constants incl. Dart AOT rodata) | AES-GCM + ChaCha | 128/192/256 | 1 | old | {}, {0x0c} | **NO MATCH** |

The known-plaintext CTR scan is **independent of AAD and of the authentication tag** — it would
have found the key if the confidentiality layer were AES-CTR/GCM (any key size, any alignment) and
the plaintext contained the device `android_id` (raw bytes or ASCII). It did not.

---

## 2. WHAT THIS RULES OUT (proven)

Under the assumption that the `z` envelope is `version(1)‖nonce(12)‖ct(20)‖tag(16)`, the key is
**NOT** any of the following present as contiguous bytes in either process's live memory:
- a static **AES-128/192/256-GCM** key (aligned or unaligned) with AAD ∈ {∅, 0x0c, "20", nonce, ver+nonce};
- a static **ChaCha20-Poly1305** key;
- a static **AES-256-CTR/GCM** key whose plaintext contains the device `android_id`.

Also proven NOT the source of the network key: the native `libengine` AES (`FUN_00160208`) — prior
`native-deep/` analysis showed it is the **engine's internal game-patch decryptor** (seeds from
object fields `+0x3a0/+0x3a8`, only runs when a subscribed target game is loaded), fires **zero**
times during network/auth activity.

---

## 3. HYPOTHESES (consistent with the evidence, NOT yet proven)

Because a fresh in-memory sample still yields no static-key match, the true construction is most
likely one of:

- **H1 — Non-standard AAD.** The GCM tag covers additional associated data not guessed here
  (e.g. the epoch `timestamp`, the `deviceId`, the full query string, or the Firebase installation
  id). Then the key can be present but tag-verification never confirms it. *Testable* by learning
  the exact AAD (requires pinning the Dart routine or a runtime hook).
- **H2 — Per-message derived key.** `key = KDF(master_secret, nonce)` (the pool has SHA-256; the
  app family uses a golden-ratio/SHA-256 KDF natively). Then no single static AES key exists in
  memory — only the master secret + KDF. The prior summary's "static key" would refer to the
  master secret, not a directly-usable AEAD key.
- **H3 — Encrypt-then-MAC, not GCM.** The 16-byte trailer is an HMAC-SHA256(⋯)[:16] over the
  ciphertext with a separate MAC key, and confidentiality is raw AES-CTR. GCM verification then
  never matches by construction.
- **H4 — Hybrid/asymmetric.** The pool carries **X25519 / RSA / ECDSA**; the working AEAD key may
  come from an X25519 ECDH → HKDF, i.e. ephemeral/derived rather than a stored constant.

- **H5 — Encrypt-then-MAC — RULED OUT.** `scanner5.c` tested whether the 16-byte trailer is a
  keyed MAC over the ciphertext: HMAC-SHA256[:16], HMAC-SHA1[:16], HMAC-MD5, and naive
  `SHA256(key‖M)` / `SHA256(M‖key)`, for message M ∈ {ct, nonce‖ct, ver‖nonce‖ct, nonce‖ct‖ver}
  and key length 16/32, over the full main-process memory (both fresh + old samples). **No MAC key
  found** (≥93 % of memory scanned; effectively negative). So the trailer is not a standard
  keyed MAC with a stored key either.

The `z`→`push-…run.app` channel appears **distinct** from the main `POST rest.snakeseller.com/
api/request/` JSON `{encryptedData, deviceId, timestamp}` channel documented in
`decompiled/native-deep/dynamic-live/PROTOCOL_ANALYSIS.md`.

### 3a. Decisive interpretation

A **fresh** `z` proven to be in the process's memory is encrypted by whatever key is *currently*
active — yet no static AEAD key, no CTR key, and no MAC key is present as contiguous bytes. The
strongest reading of this is **H2 (per-message derived key)**: the working key is computed on the
fly (`KDF(secret, nonce)` — the app family already uses a golden-ratio/SHA-256 KDF natively) and
**wiped after each encryption**, so at dump time only the ciphertext survives, not the key. This
also matches the earlier constant-scan and object-pool negatives (no stored AEAD key/S-box). Under
this model, **no passive memory/constant scan can ever recover the working key** — the only viable
routes are (a) recovering the *master secret + KDF* or (b) intercepting the cipher `init` at
runtime.

---

## 4. RECOMMENDED NEXT STEP (evidence-driven)

The remaining unknown is the **exact construction** (AAD + key-derivation), not the presence of
the key material. Two mutually-supporting options:

1. **Pin the Dart routine** that builds `z`: locate, in `dart-blutter/`, the function that
   produces the `push-…run.app` URL and the 49-byte body, and read its cipher/AAD/key inputs from
   the AOT disassembly (the URL host is runtime-assembled, so trace the string-building + the
   `Uint8List` that feeds the AEAD).
2. **Runtime capture of the AEAD `init`** (key + IV + AAD + plaintext) via a technique the prior
   sessions found survives the app's anti-tamper: `Stalker.follow` (no code patching) or a
   `listen`-mode Gadget with no UI interaction. Grab the arguments at the single call site.

Either yields the AAD/derivation directly; a second pass of the scanners here would then confirm
the key in seconds.

---

## 5. ARTIFACTS IN THIS FOLDER

- `tools/scanner.c` — hand-rolled AES-GCM tag verifier (configurable key size + alignment), NIST self-test.
- `tools/scanner2.c` — OpenSSL-EVP AES-256-GCM **and** ChaCha20-Poly1305 verifier, multi-AAD, self-test.
- `tools/scanner3.c` — AAD-independent known-plaintext AES-CTR keystream scanner.
- `tools/scanner5.c` — encrypt-then-MAC key scanner (HMAC-SHA256/SHA1/MD5 + naive keyed SHA256).
- `samples/z_fresh_live.txt` — fresh `z` recovered from live main-process memory (+ parsed fields).
- `samples/z_samples_prior.txt` — the prior session's captured `z` values.
- `RESULTS_MATRIX.md` — the scan matrix above with the raw scanner stdout.
