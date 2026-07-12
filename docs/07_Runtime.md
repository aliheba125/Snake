# 07 — Runtime Behaviour & Anti-Tamper

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

> **Ownership & authorization:** Runtime behaviour of the **owner's own** app, observed on the owner's own devices/backend, with the owner's authorization.

Evidence: `evidence/screenshots/`, `evidence/runtime-memory/`, `evidence/beacon-crypto-traces/`

---

## App UI flow — ✅ Confirmed (15 screenshots, `evidence/screenshots/`)

- App opens **directly to the dashboard** — no login screen.
- Home: rotating banner (8 Ball Pool / Carrom Pool / Soccer Stars), 3 supported games (each ⚠ =
  not activated), bottom nav: Games · Shop · Chat · Settings.
- **Device ID 394318** shown top-left and in the Device screen (with copy button + "Entry Key").
- Shop: resellers listed by country. Settings: Account Manager (multiple slots, all "Never Used")
  + Language.
- Tapping a game with no subscription → "not installed / install from Google Play" or "no active
  subscription" dialog.

## Network at runtime — ✅ Confirmed (`trace_hosts.py`)

Over a 30 s cold-launch + idle + interaction window, only **two hosts** are contacted:

1. `push-918010152455.europe-west1.run.app` — the beacon, **once**.
2. `storage.googleapis.com` — Firebase Storage/assets, repeated.

`rest.snakeseller.com` is **not** contacted during normal use. Entry-Key activation makes **zero**
network requests. After the initial burst the app is network-silent.

## Persistence / storage — ✅ Confirmed

- `shared_prefs/com.snake.xml`: only `cip_pub` = empty string (no stored auth token).
- Firebase prefs (auto_init, messaging), Firebase installation JSON, GA measurement DBs.
- `files/`: large hex-named blobs = **PNG asset caches** (verified magic bytes), not tokens.
- The beacon response and master key live **in memory only** (globals), never persisted.
- The 33-byte beacon response is **not** written to disk.

## Dart ↔ libengine FFI — ✅ Confirmed (global polling)

- `DAT_009280f0` (master key) populated ~+430 ms at cold launch (Dart calls `FUN_0016169c`).
- `DAT_009280f8` (decrypted response) populated ~+530 ms.
- Activate triggers ~127 crypto allocations but **0** changes to those two globals.
- `FUN_00189774` (decrypt-store) has no in-libengine caller → invoked via **Dart FFI**.

## Anti-tamper model — ✅ Confirmed (comparative experiments)

| Action | Outcome |
|--------|---------|
| `Interceptor.attach` on libengine `.text` | process dies ~1.3 s (silent inline `svc` exit_group; not via libc) |
| Gadget under `/data/local/tmp/` + UI interaction | detected (`/proc/self/maps` scan) → crash |
| Gadget at `/system/lib64/libskia_android.so` | survives |
| Hook libc exports | safe |
| Read/Write libengine `.data`/`.bss` | safe (app survives ≥5 s after writing a global) |
| Frida **Stalker** (1 thread, transform) | survives ≥120 s (recompiles code, no `.text` patch) |

Interpretation: a watchdog periodically checks `.text` integrity and self-exits on modification;
`.data` and other modules are not covered.

## Self-modifying / virtualization behaviour — 🟨 Partially Confirmed (July‑8 static + emulation)

Static + Qiling notes indicate libengine allocates RWX memory and generates code at runtime,
hooks Java methods, and reassigns process identity — consistent with an app-virtualization engine
that loads a target game in the `com.snake:engine` process. This was **not** re-exercised live in
July‑12 (no target game installed), so it stays 🟨.

## Environment fragility — ✅ Confirmed (context)

The July‑8/11 environment lost outbound TCP (AWS/sandbox-level), and the app SIGSEGV'd ~8 s after
launch when it could not reach its server. The July‑12 environment (`44.198.192.12`) had working
network and the app ran normally. This is an **environment** issue, not an app finding.
