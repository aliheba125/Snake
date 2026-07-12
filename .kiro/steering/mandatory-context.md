# Mandatory Context for Any Agent Working on This Repository

## BEFORE doing ANYTHING, read these two files:

1. **`MASTER_INDEX.md`** (root) — the entry point to the entire project; explains what exists, what's proven, what's unknown, and the reading order.
2. **`docs/ENVIRONMENT_ACCESS.md`** — how to connect to the server (`44.198.192.12`), the Android device (Redroid 14 via ADB `localhost:5555`), and Frida Gadget (port `27052`). Contains the SSH key setup, anti-tamper rules, and a quick-start checklist.

## Critical rules (will kill the app if violated):

- **NEVER** use `Interceptor.attach` on `libengine.so` `.text` section addresses — the app dies in ~1.3 seconds.
- **SAFE**: hook `libc` exports, hook `libflutter.so`, read/write `libengine` `.data`/`.bss` globals, use Frida **Stalker**.
- Frida Gadget location: `/system/lib64/libskia_android.so` (inside the container). Placing it elsewhere triggers maps-scan detection.
- Launch command: `adb shell setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"` then force-stop + start.

## Where the project currently stands:

- **Beacon protocol (z parameter)**: ✅ fully broken — both directions reproduced offline.
- **AES-256 master key**: ✅ derived from `floor(unix_time/16)` — reproduced offline.
- **Entry-Key activation**: ❓ NOT cracked — the KDF is unknown, the validator is OLLVM-obfuscated.
- **Next steps**: see `docs/11_Next_Steps.md` — priority is isolating the Entry-Key validator via Stalker.

## Status discipline:

Every claim in this repo carries one of: ✅ Confirmed · 🟨 Partially Confirmed · ❓ Unknown · ⬜ Not Started · ❌ Disproved.
Do NOT state something is "proven" or "confirmed" unless you have reproducible evidence. If you attempt something and it fails, document the failure honestly (negative results are valuable).
