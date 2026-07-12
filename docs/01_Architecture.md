# 01 — Architecture

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

---

## Component map

```
┌──────────────────────────────── com.snake (v2.2.6) ────────────────────────────────┐
│                                                                                      │
│  Dart / Flutter UI layer                                                             │
│  ├── libapp.so      Dart AOT snapshot (all app logic, UI, seller dashboard)   ✅     │
│  ├── libflutter.so  Flutter engine + statically-linked BoringSSL (TLS)        ✅     │
│  └── (Dart FFI)  ── calls ──▶ libengine.so                                    ✅     │
│                                                                                      │
│  Native engine layer                                                                 │
│  └── libengine.so   Obfuscated (OLLVM-style) C/C++: crypto, beacon build,     ✅     │
│                     activation validation, app-virtualization/hooking engine         │
│                                                                                      │
│  Second process: com.snake:engine  (DaemonService / virtualization)           ✅     │
└──────────────────────────────────────────────────────────────────────────────────┘
        │                         │                              │
        │ beacon (once, cold      │ Firebase assets/config       │ seller REST API
        │ launch)                 │                              │ (after login only)
        ▼                         ▼                              ▼
 push-918010152455          storage.googleapis.com        rest.snakeseller.com
 .europe-west1.run.app      (Firebase Storage/Remote       /api/request/
 (Google Cloud Run)          Config)                       (email+password auth)
 GET /?z=<98hex>&v=20        ✅ Confirmed                   🟨 Partially Confirmed
 ✅ Confirmed                                               (auth rejects us)
```

## Native libraries (✅ Confirmed)

| Library | Role | Notes |
|---------|------|-------|
| `libapp.so` | Dart AOT snapshot — all app logic/UI | `extractNativeLibs=false`: mmap'd from `base.apk`, appears as `base.apk` segments in `/proc/pid/maps` |
| `libflutter.so` | Flutter engine | Contains BoringSSL for TLS. `SSL_write` plaintext sink at `+0x6d4be8` |
| `libengine.so` | Native engine (8.5 MB) | Only exports `JNI_OnLoad`; ~2283 functions recovered in Ghidra; OLLVM-style obfuscation (control-flow flattening, inline `svc`, runtime string decryption) |

## Two-tier trust model (✅ Confirmed)

The app has **two independent server relationships**:

1. **Beacon tier** — anonymous, fires once at cold launch, cryptographic challenge/response with
   the Cloud Run endpoint. No login required. Fully reverse-engineered (see
   [`05_Beacon_Protocol.md`](05_Beacon_Protocol.md)).

2. **Seller/business tier** — `rest.snakeseller.com/api/request/`, requires email+password login,
   used by resellers to manage subscriptions, generate keys, view orders. **Not reached** in this
   study (no credentials). 🟨

The **device activation** (Entry Key) sits between them: a key is purchased on the website
(bound to a Device ID), then validated **locally** on device (see
[`06_Activation.md`](06_Activation.md)).

## Data-flow at cold launch (✅ Confirmed by network trace)

```
t≈0.40s  DNS storage.googleapis.com  (Firebase)         ── repeated
t≈0.41s  DNS push-918010152455.europe-west1.run.app     ── ONCE
t≈0.42s  GET /?z=<98hex>&v=20  → HTTP 200 + 33-byte body
t≈0.43s  master key present in libengine global (DAT_009280f0)
t≈0.53s  decrypted beacon response stored in global (DAT_009280f8)
~1.0s    UI rendered; network goes SILENT (no further requests during idle/interaction)
```

## Process/anti-analysis characteristics (✅ Confirmed)

- **Anti-tamper watchdog**: modifying `libengine` `.text` (Frida `Interceptor.attach`) kills the
  process in ~1.3 s via an inline `svc` exit (bypasses libc). Writing to `.data`/`.bss`, hooking
  `libc`, and Frida **Stalker** (dynamic recompilation) all survive.
- **maps detection**: a Gadget under `/data/local/tmp/` is detected on UI interaction; placing it
  at `/system/lib64/libskia_android.so` bypasses this.
- Runtime string decryption via `Native.ilil(index)`; no plaintext endpoint/URL constants in any
  static artifact.

See [`07_Runtime.md`](07_Runtime.md) for the full anti-tamper evidence table.
