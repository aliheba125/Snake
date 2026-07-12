# 03 — Dynamic Analysis

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Scripts: [`../scripts/`](../scripts/) · Evidence: [`../evidence/`](../evidence/)

---

## Environment (✅ Confirmed)

- **Redroid 14** (Android 14, `arm64-v8a`) in Docker on an ARM64 EC2 host.
- Live device used in July‑12 work: `44.198.192.12` (has working outbound network).
- Instrumentation: **Frida Gadget 17** in listen mode, injected via
  `wrap.com.snake = LD_PRELOAD=/system/lib64/libskia_android.so` (link-level, **no ptrace**).
- Root `/proc/<pid>/mem` reads (do **not** attach a debugger → `TracerPid` stays 0).

## What survives the anti-tamper, and what does not (✅ Confirmed)

| Technique | Result | Use |
|-----------|--------|-----|
| `Interceptor.attach` on `libengine` `.text` | ❌ process dies ~1.3 s (inline `svc` exit) | avoid |
| Frida Gadget in `/data/local/tmp/` | ❌ detected on UI interaction (maps scan) | avoid |
| Gadget at `/system/lib64/libskia_android.so` | ✅ survives | primary injection |
| Hook `libc` exports (`malloc`, `memcmp`, `getaddrinfo`, …) | ✅ safe | main capture method |
| Hook `libflutter` `SSL_write` (`+0x6d4be8`) | ✅ safe | plaintext HTTP sink |
| Read `libengine` `.data`/`.bss` globals | ✅ safe | key/response capture |
| Write `libengine` `.data`/`.bss` globals | ✅ safe (app survives) | injection test |
| **Frida Stalker** (`transform`, 1 thread) | ✅ survives (dynamic recompilation, no `.text` patch) | execution tracing |

## Core capture techniques (✅ Confirmed reproducible)

1. **Beacon key + S-box + z**: poll `DAT_009280f0` / `DAT_009281a8` globals and hook the
   `SSL_write` sink to grab the outgoing `?z=…` line in one run.
   → `scripts/beacon-crypto/capture_all.py`
2. **Crypto buffers**: hook `libc malloc` filtered by the libengine wrapper return-address
   `0x800290`, snapshot 16/32/48/64-byte buffers (before `free`).
   → `scripts/beacon-crypto/capture_activate*.py`
3. **Comparison capture**: hook `libc memcmp` filtered to libengine return addresses.
   → `scripts/beacon-crypto/hook_memcmp.py`
4. **Network topology**: hook `getaddrinfo`/`connect` (fires per connection over whole lifetime,
   no race with the early beacon).
   → `scripts/beacon-crypto/trace_hosts.py`
5. **Execution path**: Stalker `compile` transform recording libengine offsets during a window.
   → `scripts/beacon-crypto/stalker_funcs.py`

## Live server testing (✅ Confirmed)

`curl` against the Cloud Run endpoint from multiple networks, with crafted / garbage / replayed
`z` values, to probe server behaviour without the app.
→ `scripts/beacon-crypto/server_test.py`, `discriminating_test.py`, `probe_logic.py`

## Memory scanners (✅ Confirmed — all NEGATIVE, which was informative)

`scripts/memory-scanners/scanner*.c` — hand-rolled + OpenSSL-EVP verifiers for AES‑GCM,
ChaCha20‑Poly1305, AES‑CTR (known-plaintext), encrypt-then-MAC, and simple-KDF forms, run over
2.6 GB of live process memory. **All returned NO MATCH.** This correctly ruled out static
AEAD/CTR/MAC keys and pointed to a derived key — later confirmed as the time-bucket key. The
scanners' original *framing* (assuming AEAD) was ❌ disproved; their negative *results* remain valid
and are part of the evidence chain.

## Practical limits encountered (honest)

- **OLLVM control-flow flattening** makes full static reading of the activation validator
  impractical; hundreds of dead blocks per function.
- **Stalker windows** during "Activate" landed on beacon serialization functions, not a cleanly
  isolated activation-validator trace → activation algorithm remains ❓.
- The **seller REST API** requires credentials we do not have → 🟨 not exercised.
- Target games are **not installed** in the emulator → the in-game cheat path is ⬜ untested.
