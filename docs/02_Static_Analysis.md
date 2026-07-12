# 02 — Static Analysis

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Static artifacts live under [`../artifacts/decompiled/`](../artifacts/decompiled/).

---

## Tooling and outputs (✅ Confirmed)

| Layer | Tool | Output location | Coverage |
|-------|------|-----------------|----------|
| Java/Kotlin | jadx 1.5.1 | `artifacts/decompiled/java-jadx/` | 3086 `.java` files (obfuscated) |
| Resources/Manifest | apktool 2.10.0 | `artifacts/decompiled/smali/`, `resources/`, `AndroidManifest.xml` | complete |
| Dart AOT | Blutter (+ Dart VM 3.5.x) | `artifacts/decompiled/dart-blutter/` | ~670 files; symbol names obfuscated |
| Native | Ghidra | `artifacts/decompiled/native-deep/ghidra/libengine_decompiled.c` | ~2241/2283 functions decompiled |
| Native (angr) | angr 9.2.102 + capstone + pyelftools + unicorn | `artifacts/decompiled/native-deep/static-max/` | 2 of the 42 Ghidra-failed functions recovered as C (`_INIT_16`, `_INIT_36`); the remaining 40 are shown to be either genuinely absent from the file (4 functions, runtime-generated RWX code) or 26 near-identical 175 KB OLLVM-flattened + self-modifying copies (95.6% byte-identical to each other — one obfuscated routine × 26, not 26 distinct functions) |
| ELF/strings | pyelftools/capstone | `artifacts/decompiled/native-deep/strings/` (raw dumps) + `artifacts/decompiled/native-deep/` notes | full printable-string extraction for all 4 libraries |

> ⚠️ The `.md` files under `artifacts/decompiled/native-deep/` are the **original July‑8 static
> analysis notes**. Several of their crypto conclusions were **later disproved** by the July‑12
> live work (see the ❌ items below and [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md)). They are
> kept as reference for the decompiled code, not as current truth.

## Key libengine functions (✅ Confirmed by decompilation + live tracing)

Ghidra image base is `0x100000`; runtime offset = Ghidra addr − `0x100000`.

| Function (Ghidra) | Runtime off | Role |
|-------------------|-------------|------|
| `FUN_0015fdec` | `0x5fdec` | Beacon **encrypt** orchestrator (init + pad + feed + finalize) |
| `FUN_0015fc7c` | `0x5fc7c` | Crypto-state init |
| `FUN_0015fe88` | `0x5fe88` | Padding + pad-length header |
| `FUN_00160014` | `0x60014` | Byte-feeder into 16-byte block buffer |
| `FUN_001604e0` | `0x604e0` | Block accumulator (calls block cipher, grows output) |
| `FUN_00160640` | `0x60640` | **AES‑256 block encrypt** (14 rounds, standard S‑box, on-the-fly key schedule) |
| `FUN_00160968` | `0x60968` | AES‑256 key-expansion step |
| `FUN_00160208` | `0x60208` | **AES‑256 block decrypt** orchestrator (used for beacon response) |
| `FUN_00160d2c` | `0x60d2c` | AES block **decrypt** (inverse S‑box `DAT_009281c0`) |
| `FUN_0016169c` | `0x6169c` | **Master-key generation** (time-bucket → PRNG → SHA256 → shuffle → SHA256) |
| `FUN_001614a4` | `0x614a4` | Seed PRNG (`0xA5A5…`, `0xB4B4…A000`, `0xA3A3…` constants + NEON) |
| `FUN_00161598` | `0x61598` | Fisher–Yates shuffle keyed by seed (**MurmurHash2** const `0x5bd1e995`) |
| `FUN_00161428` | `0x61428` | **SHA‑256** wrapper (IV `6a09e667…` @ VA `0x110a90`, K-table @ file `0x2b450`) |
| `FUN_00161788` | `0x61788` | Response/other **key derivation** from two ints (const `0x9e3779b1`, `0x5f356495` → SHA‑256) |
| `FUN_00165b70` | `0x65b70` | Beacon **plaintext builder** (interleave of masked id/time + random) |
| `FUN_00152cec` | `0x52cec` | RNG (Mersenne-Twister seeded from `/dev/urandom`) |
| `FUN_00189774` | `0x89774` | **Decrypt an incoming hex value** and store in `DAT_009280f8` (Dart-FFI entry) |
| `FUN_0017e148` | `0x7e148` | Large serializer/validator (protobuf-like; symmetric decrypt + time-window check) |

## Global data (✅ Confirmed)

| Global (Ghidra) | Runtime off | Meaning |
|-----------------|-------------|---------|
| `DAT_009280f0` | `0x8280f0` | Pointer → 32-byte **AES master key** (per session) |
| `DAT_009280f8` | `0x8280f8` | Pointer → decrypted beacon-response record |
| `DAT_009281a8` | `0x8281a8` | Pointer → **AES S-box** (standard, materialized at runtime) |
| `DAT_009281c0` | `0x8281c0` | Pointer → AES **inverse** S-box (decrypt path) |
| `DAT_009281a0` | `0x8281a0` | Baseline for the time bucket (observed = 0) |

## Cryptographic-primitive census (✅ Confirmed)

| Primitive | libengine.so | libapp.so | libflutter.so |
|-----------|--------------|-----------|---------------|
| AES (inline, hand-rolled) | ✅ present | — | — |
| SHA‑256 (inline) | ✅ present | — | — |
| Asymmetric (RSA/ECDSA/Ed25519) | ❌ **absent** (no strings, no symbols, no curve constants P‑256/secp256k1/Ed25519) | OID strings only (pointycastle ASN.1 table, for TLS/X.509) | BoringSSL (TLS) |

This census is the basis for the ✅ conclusion that **on-device activation crypto is symmetric**
(see [`06_Activation.md`](06_Activation.md)).

## Disproved static-era claims (❌)

| Old claim (July‑8 / early July‑12 notes) | Corrected finding |
|------------------------------------------|-------------------|
| ❌ "z-cipher is AES‑GCM / AEAD (nonce12+ct20+tag16)" | ✅ It is AES‑256‑**ECB** with a 1-byte pad-length prefix |
| ❌ "z-cipher is AES‑256‑CBC (rand IV + PKCS7)" | ✅ ECB; verified by byte-for-byte reproduction |
| ❌ "key is per-message and erased; unextractable by any means" | ✅ Key is time-bucket-derived and reproduced **offline** |
| ❌ "FUN_00160208 only runs for game-patch decryption, never network" | ✅ It decrypts the **beacon response** |
| ❌ "rest.snakeseller.com is the backend for the beacon" | ✅ Beacon → Cloud Run; REST API is a separate seller channel |
