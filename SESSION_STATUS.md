# SESSION STATUS — Where to Resume

> Last updated: 2026-07-13 (commit `ec3666a`)
> GitHub: https://github.com/aliheba125/Snake

---

## Current State (honest summary)

### What IS established (observations, not interpretations):

| # | Observation | Confidence | Evidence |
|---|---|---|---|
| 1 | Stalker burst-detection: 21 reproducible code ranges during Activate | 95% | `stalker_v2_*.json` |
| 2 | Device token `751fb123…` appears in buffers during Activate | 90% | `stalker_v2_*.json` |
| 3 | `blr x8` at vtable dispatch → `0x7d7780` (single `ret` instruction) | 95% | `blr_target_*.json` |
| 4 | OLLVM `br x11` → `0xaa1a0` (case 7, x9=7) — same across 3 tested codes | 95% | `capture_br_x11.py` output |
| 5 | `cbz w20, 0xaaef0` at 0xa6238 is **NOT executed** during Activate (invalid codes) | 95% | `capture_w20_invalidate.py` |
| 6 | "Code is Not valid" string NOT in libengine.so binary | 99% | `trace_error_write.py` (Memory.scanSync) |
| 7 | memcpy callers for error string are in libflutter.so | 90% | Frida Process.findModuleByAddress |
| 8 | `w21 = 0` always at `tbz` gate (FUN_0017e148 never reached with invalid codes) | 95% | `callout_v3b_*.json` |
| 9 | Response: 20 bytes stable within same (time+mask+id), 12 server-varying | 80% | `response_correlation_extended.json` |
| 10 | resp_key sensitivity: changing any input → wrong decryption → noise | 80% | Test F in extended correlation |

### What is NOT established:

- ❌ The exact Entry-Key validation algorithm
- ❌ Where the pass/fail decision is made within case 7 (0xaa1a0 path)
- ❌ Key derivation from 6-digit code
- ❌ Device token derivation
- ❌ Generation of a valid Entry Key
- ❌ Whether vtable entry changes for valid keys (polymorphic dispatch hypothesis)

### What was DISPROVED:

- ❌ `cbz w20` at 0xa6238 is the pass/fail gate → **NOT in active path** for invalid codes
- ❌ `FUN_0017e148` is the validator → it's behind `tbz w21,0` (success-path function)
- ❌ "Code is Not valid" is produced by libengine → string doesn't exist in the binary
- ❌ Previous "TIME_ONLY" classification of response fields → it's resp_key sensitivity

---

## Execution Path (what actually runs during Activate with invalid code):

```
[Dart FFI call]
  → libengine OLLVM dispatcher (br x11 at 0xa61c8, case 7)
    → 0xaa1a0 (entry — OLLVM case 7 start)
      → ... (pre-burst processing)
        → 0xaa39c (Range06 — main activation function)
          → 0x7aef0 (Range03 — data/struct preparation, calls memcpy)
          → 0x81cb8 (Range04 — "key engine")
            → 0x7d3d14 (vtable dispatcher: blr x8)
              → 0x7d7780 (ret — no-op stub with invalid codes)
            → tbz w21, bit0 → w21=0 → SKIP FUN_0017e148
            → pthread_create (always, regardless of result?)
          → cmp x19, x0 (always equal — struct check, not pass/fail)
          → b.eq 0xae3e8
    → [returns to Dart]
      → Dart displays "Code is Not valid" UI message
```

**THE GAP:** We don't know what happens between 0xaa39c entry and the vtable dispatch
that makes the app "decide" the code is invalid. The decision may be:
- (a) Made by the vtable-dispatched function (but it's just `ret` — does nothing)
- (b) Made before the vtable dispatch (somewhere in the OLLVM-flattened code within 0xaa39c)
- (c) Not made at all in libengine — Dart checks a return value from the FFI call
- (d) The `ret` stub IS the "invalid" response (a valid key would dispatch to a real function)

---

## Server / EC2 Status

- **EC2:** `44.198.192.12`, user `ubuntu`, SSH key in env `EC2_SSH_KEY`
- **Redroid 14:** running (container `redroid14`)
- **ADB:** connected (`localhost:5555`)
- **frida-server:** running inside Redroid as root
- **com.snake:** v2.2.6, installed and running
- **Injection:** `wrap.com.snake = LD_PRELOAD=/system/lib64/libskia_android.so`
- **Frida port:** 27042 or 27052 (try both)
- **radare2:** available at `/usr/bin/r2`
- **libengine.so:** at `~/Snake/artifacts/native-libs/libengine.so`

## Key Files

| File | Purpose |
|---|---|
| `docs/11_Next_Steps.md` | Detailed next steps with status |
| `UNKNOWNS.md` | All open questions with evidence |
| `EVIDENCE_MATRIX.md` | Every conclusion → evidence mapping |
| `scripts/beacon-crypto/` | All Frida/Python scripts |
| `evidence/beacon-crypto-traces/` | All captured data (JSON) |

## Next Session Should:

1. **Instrument deeper within case 7** (0xaa1a0 → 0xaa39c → 0x81cb8):
   - What registers/globals change between entry and exit of 0x81cb8?
   - Does the vtable entry (0x7d7780) change if a different code is used?
   - What does Dart receive back from the FFI call? (hook the FFI return)

2. **Test hypothesis (d):** If `ret` stub = "invalid" response, then a valid key would
   route `blr x8` to a DIFFERENT function (not 0x7d7780). Test by comparing vtable
   contents at runtime with different app states.

3. **Trace device token derivation** (A2) — separate from activation, can run independently.
