# Mandatory Context for Any Agent Working on This Repository

## FIRST TASK (non-negotiable):

**Before writing any code, running any script, or starting any analysis:**

1. **Read the ENTIRE repository structure** — use `MASTER_INDEX.md` as your map. Every answer you might need is already documented somewhere. Store what you learn in your working memory.
2. **Read `docs/ENVIRONMENT_ACCESS.md`** — server access, device access, Frida setup, anti-tamper rules.
3. **Read `docs/11_Next_Steps.md`** — know exactly what's been done and what remains.
4. **Read `ROADMAP.md`** — understand completion percentages per axis.

**WHY:** This project has months of accumulated work across 71 scripts, 92 evidence files, 12 numbered docs, and thousands of decompiled artifacts. Almost everything you might want to "discover" is already discovered and documented. Searching the repo first saves hours of redundant work.

## When you need information during work:

- **Before running a new scan/hook/trace:** check `scripts/beacon-crypto/` — there may already be a script that does exactly what you need.
- **Before making a claim:** check `EVIDENCE_MATRIX.md` — it maps every conclusion to its evidence file.
- **Before exploring a function:** check `docs/02_Static_Analysis.md` — key libengine functions are mapped with Ghidra addresses and runtime offsets.
- **Before testing the server:** check `docs/05_Beacon_Protocol.md` — the full request/response format and server behavior is documented.
- **Before trying to crack activation:** check `docs/06_Activation.md` — multiple approaches were already tried and failed (documented with reasons).

## Critical rules (will kill the app if violated):

- **NEVER** use `Interceptor.attach` on `libengine.so` `.text` section addresses — the app dies in ~1.3 seconds.
- **SAFE**: hook `libc` exports, hook `libflutter.so`, read/write `libengine` `.data`/`.bss` globals, use Frida **Stalker**.
- Frida Gadget location: `/system/lib64/libskia_android.so` (inside the container). Placing it elsewhere triggers maps-scan detection.
- Launch command: `adb shell setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"` then force-stop + start.

## Where the project currently stands:

| Area | Status | Details in |
|------|--------|-----------|
| Beacon protocol (z parameter) | ✅ fully broken — both directions reproduced offline | `docs/04_Crypto.md`, `docs/05_Beacon_Protocol.md` |
| AES-256 master key | ✅ derived from `floor(unix_time/16)` — reproduced offline | `docs/04_Crypto.md`, `scripts/beacon-crypto/reproduce_key.py` |
| Server challenge/response | ✅ server decrypts z, keys reply to (time,id) | `docs/05_Beacon_Protocol.md`, `scripts/beacon-crypto/prove_cr2.py` |
| Entry-Key activation | ❓ NOT cracked — KDF unknown, validator OLLVM-obfuscated | `docs/06_Activation.md` |
| App UI/flow | ✅ 17 screenshots, full network trace, all storage mapped | `docs/07_Runtime.md`, `evidence/screenshots/` |
| Anti-tamper model | ✅ .text=death, .data/libc/Stalker=safe | `docs/03_Dynamic_Analysis.md` |
| Asymmetric crypto | ❌ NONE in libengine (proven by binary scan) | `docs/06_Activation.md` |

## Key files to know exist:

| Need | File |
|------|------|
| Ghidra decompiled source (2241 functions) | `artifacts/decompiled/native-deep/ghidra/libengine_decompiled.c` |
| Function address inventory | `artifacts/decompiled/native-deep/ghidra/function_inventory.tsv` |
| All captured z samples | `evidence/z-samples/` |
| Beacon crypto traces (memcmp, stalker, activation captures) | `evidence/beacon-crypto-traces/` |
| App screenshots (17) | `evidence/screenshots/` |
| Device info (android_id, maps, etc.) | `evidence/runtime-memory/` |
| Website frontend (checkout flow) | `evidence/network-pcaps-extra/snakeengine_frontend.js` |
| Stable device token (`751fb123...`) | captured in `evidence/beacon-crypto-traces/corr_run*.json` |

## Status discipline:

Every claim in this repo carries one of: ✅ Confirmed · 🟨 Partially Confirmed · ❓ Unknown · ⬜ Not Started · ❌ Disproved.
Do NOT state something is "proven" or "confirmed" unless you have reproducible evidence. If you attempt something and it fails, document the failure honestly (negative results are valuable).

## After finishing your work:

- Commit and push ALL files (scripts, logs, evidence, docs).
- Update `ROADMAP.md` with new completion percentages if anything changed.
- Update `docs/11_Next_Steps.md` if you completed or added steps.
- If you discovered something new, add it to `EVIDENCE_MATRIX.md` with its evidence file.
