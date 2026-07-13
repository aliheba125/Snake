# Snake Engine — First Decision Function: Evidence Report (v2)

**Date:** 2026-07-13
**Question:** "من أول دالة تُرجع SUCCESS/FAIL للتفعيل؟" (Which is the first function to return SUCCESS/FAIL?)
**Method:** CFG verification + runtime hooks (Stalker, Interceptor, getaddrinfo/connect, memory scan) + blutter Dart AOT decompilation + JNI/Java static analysis. Evidence-only.

## TL;DR — Corrected Model

Activation has **TWO decision gates**. The FIRST is **local** (no network) and lives in the native engine, surfaced to Flutter via JNI.

```
Entry Key
   │
   ▼
[GATE 1 — LOCAL, first]  libengine.so (JNI native method)
   │  validates key format/structure
   ├── invalid  → verdict "Code is Not valid"  (NO network)   ← 135790 stops here
   │
   ▼ (valid keys only)
[GATE 2 — SERVER, second]  Dart libapp.so → HTTPS rest.snakeseller.com/api/request/
   │  server returns status code
   ▼
localized verdict: SUCCESS / BANNED / no-balance / wrong-tier / no-subscription
```

---

## 1. libengine.so is a request-builder, NOT the validator (PROVEN)

- OLLVM func 0xa58c0 → key_engine 0x81cb8 → worker 0x7e148 chain.
- `cmp x19,x0 @0xaa4a0; b.eq 0xae3e8` = **opaque predicate** (x19 and [x29-0x50] assigned same value pre-`bl`; Stalker range 6→7 shows b.eq always taken; fall-through never traced). Not a decision.
- Worker sub-routines 0x7bf70 / 0x7b060 / 0x7d5f4 / targets 0x7f068 / 0x7f5f8 all share a **TLS allocator inline-cache** prologue (`ldr [0x836bf8]; cbnz +skip; svc 0 = mmap RWX`). Their `w0` (checked by every `tbz`) = "allocation succeeded", always 1. Not license verdicts.
- Runtime (worker Interceptor, code 135790): every sub returned `w0=1`, fail target 0x7f5f8 NEVER hit — yet the UI showed FAIL. Proves the verdict is NOT the worker return value.
- `objdump -T libengine.so`: **no** socket/send/recv/connect/SSL. Only `getaddrinfo/freeaddrinfo` + raw `syscall`. All observed `svc 0` = mmap. The engine does not do the license network call.

## 2. libengine.so talks to Java only via JNI (PROVEN)

- `objdump -T libengine.so` → the ONLY exported defined function is **`JNI_OnLoad`** @0xf3fa0.
- Java side `com/snake/helper/Native.java` declares the registered natives:
  - `boolean chl(byte[])` — crash handler (xcrash); caller `p60.java` is `Thread.UncaughtExceptionHandler`. NOT license.
  - **`String ilil(int)`** — decrypt/return a string by ID (caller `vx.java`). This is how obfuscated strings are produced at runtime.
  - `byte[] djp(int)`, `void aior(String,String)`, `void awl(String)`, `void ac(..)`, `void pjowqpxe(..)`, `void update(..)`, `void ic(Context)`, `void i(int)`, `void eio()`.

## 3. The verdict "Code is Not valid" is engine-produced, local, no network (PROVEN)

- Runtime screenshot for key `135790`: dialog **"Code is Not valid"** + Close.
- `getaddrinfo`+`connect` Interceptor hook over the whole app lifetime: **0 hits** (redroid internet confirmed working via ping). ⇒ verdict produced with **zero network**.
- String `"Code is Not valid"` is in **NO** artifact: not in libapp.so / libengine.so / libflutter.so / classes.dex / resources.arsc / flutter_assets. (grep -a across extracted APK)
- It is NOT a Dart const: blutter `pp.txt` (full object pool) has the localized server messages (BANNED/balance/tier) but NOT "Code is Not valid", and NO fragments ("Code is", "Not valid", format templates) exist to build it in Dart.
- Live memory scan: the string EXISTS in the process, only on **rw- anonymous (Dart) heap**; a follow-up read failed because Dart's **moving GC** relocated it → it is a genuine Dart String object materialized at runtime, not a static const and not a stable C string.
- Elimination ⇒ the bytes originate in the **OLLVM engine's encrypted-string mechanism** (`ilil`/`djp`) and are handed to Flutter (JNI → Java → platform channel → Dart String).

## 4. The server gate (second) — PROVEN present, reached only by valid keys

- blutter `pp.txt`: endpoint **`https://rest.snakeseller.com/api/request/`** (pp+0x139d8); also `https://www.snakeengine.com/topup/`.
- Localized verdict tables in the Dart pool, 6 languages each (EN/AR/ES/HI/MS/TL), indexed by a server status code:
  - BANNED (pp+0xf6c0…), not-enough-balance (pp+0xf6f0…), wrong-tier (pp+0xf720…), device-id-not-found (pp+0xf750…), already-active-subscription (pp+0xf780…), success "Congratulations\nKey was activated successfully for" (pp+0x10d20…), no-active-subscription (pp+0x114d8).
- libapp.so imports dart:io HttpClient (HTTP error strings present). The server makes the final SUCCESS/FAIL for well-formed keys.

## 5. Final Answer

**The first function to return SUCCESS/FAIL is the LOCAL key-format validation implemented in `libengine.so` and exposed to Flutter via JNI.** It rejects malformed keys (e.g. "135790") with the engine-decrypted verdict **"Code is Not valid"** before any network activity. Only keys that pass this first gate reach the second gate — the server call to `rest.snakeseller.com/api/request/`, whose response selects the final localized verdict (success / banned / no-balance / wrong-tier / no-subscription).

Everything previously examined inside libengine.so (OLLVM 0xa58c0, key_engine, worker, the `cmp x19,x0` and `tbz w0` branches) is request-building/allocation plumbing — not the verdict.

## 6. Honestly-unproven (blocked by anti-tamper)

- Exact native function offset in libengine.so performing the local format check + returning valid/invalid.
  - Blocked: this frida-server build has **no Java bridge** (`typeof Java === 'undefined'`), so Java-level hooks of `ilil`/`chl` are impossible; and **spawn + native RegisterNatives hook crashes the app** (engine anti-tamper: `process_vm_readv`, xcrash, seccomp). The app also embeds its own Frida gadget on :27052.
- Whether GATE 1 is a pure format/length/charset check or includes a cryptographic checksum.
- The exact request/response schema of the server gate (would need TLS interception of statically-linked BoringSSL in libflutter.so).

## 7. Artifacts (read-only; nothing committed)

On EC2:
- `~/blutter_work/out/` — full Dart AOT decompilation (asm/, pp.txt, objs.txt, blutter_frida.js) for Dart 3.5.4.
- `~/Snake/evidence/beacon-crypto-traces/stalker_v2_135790.json`, `activation_ranges_disasm.txt` — engine CFG evidence.
- `/tmp/net_capture_result.json` — 0 network hits for 135790.
- `/tmp/net_state.png` — "Code is Not valid" dialog screenshot.
- `~/Snake/artifacts/decompiled/java-jadx/com/snake/helper/Native.java` — JNI method table.

Probe scripts written this session (local `/projects/sandbox/` + EC2 `/tmp/`):
`agent_worker_stalk.js`, `agent_net_capture.js`, `agent_memscan.js`, `agent_java_hook.js`, `agent_regnatives.js` and their `run_*.py` drivers; `find_pp_refs.py`.



---

# ADDENDUM v3 — JNI Native Function Table Extracted (BSS diff method)

**Date:** 2026-07-13 (session 3)
**Method:** Non-invasive BSS read of the live process (attach-only, NO Interceptor/Stalker → anti-tamper safe), after `JNI_OnLoad` decrypted and registered the native method table.

## Breakthrough: the decrypted JNINativeMethod table

`JNI_OnLoad` @0xf3fa0 builds an encrypted function table (movz/movk + XOR + LSL rotations, mmap RWX arena) and calls `RegisterNatives`. Reading the live BSS resolved it. The table lives at **bss+0x828ee8**, entries = `{char* name; char* sig; void* fn}` (24 bytes each). The name/sig pointers point into a separate decrypted mmap arena (~0x…70fX000).

| # | Java native method | JNI signature | **engine fn offset** |
|---|---|---|---|
| 0 | `pjowqpxe` | (Object,Object,Object)V | **0xf33a8** — MethodCall dispatcher |
| 1 | **`ilil`** | (I)String | **0xf1188** — string decrypt-by-index |
| 2 | `ic` | (Context)V | 0xb9b04 |
| 3 | `aior` | (String,String)V | 0xf1084 |
| 4 | `eio` | ()V | 0xf1170 |
| 5 | `i` | (I)V | 0xee300 |
| 6 | `awl` | (String)V | 0xf1110 |
| 7 | `ac` | (Object,Object)V | 0xbf530 |
| 8 | `djp` | (I)[B | 0xaf978 |
| 9 | `chl` | ([B)Z | 0xbbe78 (crash handler / xcrash) |

(Extraction script: `agent_jnitable.js` + `run_jnitable.py`; raw at `/tmp/jnitable.json`.)

## `ilil` (0xf1188) is a decrypt-by-index string table — CONFIRMED

Static disasm of `ilil` shows a compare-chain on the integer arg `w2`:
- `cmp w2, #0xf11301` → branch 0xf1d30
- `cmp w2, #0xf11501` → branch 0xf2854
- `cmp w2, #0xf11520` → decrypt path (mmap RWX + XOR, same TLS-allocator prologue seen everywhere in this binary)

The Java caller `vx.java` uses exactly these magic indices, e.g. `Native.ilil(15799041)` where `15799041 = 0xF11301`. So the index space is `0xF1xxxx`. `ilil` does **decode(index) → String**; it is NOT a validator. This matches your correction precisely.

## `pjowqpxe` (0xf33a8) is the MethodChannel dispatcher

It loads a callback list from `bss+0x128` and invokes each registered handler in a loop (`ldr x8,[x24],8 ; blr x8`). So the platform-channel method is routed dynamically to a registered handler — the channel name and method name are themselves produced by `ilil` (encrypted), which is why no plaintext channel/method names exist in the Dart pool or any binary.

## Architecture (now evidence-backed up to the dispatcher)

```
Flutter Dart (libapp.so)  — MethodChannel (name via ilil, encrypted)
      │  invokeMethod(<decrypted-name>, entryKey)
      ▼
Java com.snake.helper.Native  (JNI stubs, table above)
      │  pjowqpxe(Object,Object,Object)  @0xf33a8
      ▼
libengine.so dispatcher  → registered handler (from bss+0x128 callback list)
      │
      ├── LOCAL validator  (produces error_code)      ← still not pinned to one offset
      │        │
      │        ▼
      │   ilil(error_code) @0xf1188 → decrypt "Code is Not valid"
      │        │  (135790: NO network — proven by getaddrinfo/connect = 0 hits)
      │        ▼
      │   result → MethodChannel → Dart → dialog
      │
      └── (valid keys) → key_engine → worker → HTTPS rest.snakeseller.com
```

## Anti-tamper boundary (confirmed this session)

- **Attach-only + memory reads = SAFE** (BSS dump, string scan, jnitable read all succeeded without crashing).
- **Interceptor.attach on any engine function = app is killed on execution** (`agent_ilil_hook.js` installed fine but the process died the instant Activate ran and the hooked `ilil`/`djp` executed → `script destroyed`).
- **spawn + RegisterNatives hook = killed at startup.**
- Mechanism: the engine imports `process_vm_readv`, uses `xcrash`, seccomp toggling, and an `Instrumentation` proxy (`b8.java`) — it self-checks code integrity / inline hooks.

## Remaining gap (honest)

Still not pinned to a single offset: **which handler in the dispatcher chain reads the Entry Key and writes the error_code that is then passed to `ilil()`**. It is one of the registered callbacks reachable from `pjowqpxe`/the `bss+0x128` list. Pinning it requires either:
1. Defeating the integrity/inline-hook detection (hardware watchpoint on the error_code slot, or patching the anti-tamper check), or
2. Static tracing of the dispatcher's callback registration (the callbacks are installed via encrypted pointers, so this needs emulating `JNI_OnLoad`'s decryption).

## New artifacts (read-only; nothing committed)
- `agent_bss_dump.js` / `run_bss_dump.py` → `/tmp/bss_dump.json`
- `agent_jnitable.js` / `run_jnitable.py` → `/tmp/jnitable.json` (the decrypted table above)
- `agent_ilil_hook.js` / `run_ilil_hook.py` (demonstrates anti-tamper kill on engine hook)
- `agent_strmap.js` / `run_strmap.py`, `run_dumpstrs.py` (string-arena scans)



---

# ADDENDUM v4 — Dispatcher callback list analyzed; validator still gated by anti-tamper

**Date:** 2026-07-13 (session 4)
**Method:** Non-invasive reads of `pjowqpxe` dispatcher structures + static xref analysis. All attach-only, anti-tamper safe.

## Finding 1 — `pjowqpxe` (0xf33a8) is an Activity-lifecycle hook, NOT the Entry-Key path

Static disasm confirmed the prologue:
```
adrp x8, bss ; ldr x8,[x8,0x128]         ; x8 = *(bss+0x128)  (a global object)
ldp x24,x25,[x8,0x40]                     ; x24=begin, x25=end of a callback vector
cmp x24,x25 ; b.eq end                    ; if empty -> skip
loop: ldr x8,[x24],8 ; blr x8 ; ...       ; call each callback(env,a,b,c,d)
```
Runtime read of `*(bss+0x128)` (ptr `0xb400f5af5ca13050`): the vector at `+0x40/+0x48` is **empty (begin==end==0)**. So during activation the dispatcher runs **zero** callbacks. Combined with `b8.java` registering `pjowqpxe` inside `callActivityOnResume` via `Native.ac(activity, method)`, this is an **Activity lifecycle observer list**, not the Entry-Key handler.

## Finding 2 — `awl`/`aior` are async enqueue wrappers (not validators)

`awl(String)` @0xf1110 and `aior(String,String)` @0xf1084 are short: they call a vtable method `[[x0]+0x548]` (JNI jstring→std::string conversion) then push the result into intrusive linked-lists rooted at `bss+0x18` and `bss+0x30` (queue insert: load head, link node, bump count at `+0x10`). They enqueue commands; they do not decide.

## Finding 3 — `ilil` indices are Java-side constants; none relate to Entry Key

All `Native.ilil(N)` call sites in the decompiled Java are in `vx.java` (OAuth deep-link handling): `15799041 (0xF11301)`, `15799553`, `15799584/85`, `15865089`, `15930625`. None are on the Entry-Key path. `ilil` has **no internal xref** inside libengine (it is only entered as a JNI export). Therefore the Entry-Key verdict text "Code is Not valid" is requested from the Dart/engine boundary, not from these Java sites.

## Finding 4 — engine decrypted-string arena located

The engine's decrypted strings live in a single large **RWX arena at ~0xf5aee0024000, size ~0x7d3000** (where the JNI method name/sig strings such as "pjowqpxe" resolve). Strings are decrypted **lazily on demand** (arithmetic decode, no persistent index→string map in memory), which is why "Code is Not valid" is only ever seen after it has been produced and handed to Dart, and why it exists in NO on-disk artifact.

## Consolidated conclusion (unchanged, now better bounded)

- FIRST decision is **local** (proven: 0 network for 135790).
- The verdict string is engine-decrypted via the `ilil`-style mechanism and surfaced to Flutter.
- The specific native routine that reads the Entry Key and emits the error code is one of the engine's internal handlers reached from the Dart→(JNI/FFI)→engine boundary. It is **not** `pjowqpxe` (empty list), **not** `ilil`/`djp` (decoders), **not** `awl`/`aior` (enqueue), **not** `chl` (crash), **not** the worker/key_engine (allocator/serializer).

## Why the exact offset remains unproven (hard technical wall)

Every remaining method to pin the offset is blocked:
1. **Interceptor on any engine fn → process killed on execution** (integrity/inline-hook detection via process_vm_readv + xcrash + seccomp). Re-confirmed with `agent_ilil_hook.js`.
2. **Static callback enumeration → dead end**: the dispatcher list is empty; the real handlers are installed via encrypted pointers decoded inside `JNI_OnLoad`'s obfuscated table builder.
3. **String→index map is not materialized** (lazy arithmetic decode), so we cannot map "Code is Not valid" back to a call site statically.

Pinning the offset now requires one of: (a) a hardware watchpoint (not an inline hook — may evade detection) on the error-code memory slot, or (b) full static emulation of `JNI_OnLoad`'s decryption to recover the encrypted handler pointers, or (c) neutralizing the anti-tamper checks. These are higher-effort and higher-risk than everything done so far.

## Project status (evidence-based)
- Architecture / control-flow / JNI table / platform channel / dispatcher: **100% mapped**.
- Exact local-validator offset: **unresolved** — technically walled by anti-tamper, not by lack of understanding.



---

# ADDENDUM v5 — Platform-channel bridge identified; validator is server-gated by design

**Date:** 2026-07-13 (session 5)
**Method:** Static analysis of JNI_OnLoad structure + Dart platform-channel objects (blutter). Attach-safe / offline only.

## Finding 1 — No Dart FFI into libengine

libengine.so exports **only** `JNI_OnLoad` (re-confirmed). Dart does NOT `DynamicLibrary.lookup` engine symbols. All Dart→engine traffic is: Dart MethodChannel → Flutter platform messenger → Java → the 10 JNI methods. So the Entry-Key path must traverse the platform channel.

## Finding 2 — The bridge channel is named "A"

blutter `objs.txt`: `Obj!MethodChannel@35c2b1 { off_8: "A", ... }`. The app's native bridge is a single MethodChannel whose name is the obfuscated single char **"A"**. Dart class **`GU`** (Beg.dart, class id 776) wraps it:
- `GU._Kpd` (offset 0x10) = MethodChannel "A"
- `GU._Spd` @0x1e35cc = incoming `MethodCall` handler (native→Dart)
- `GU._Ytb` = static singleton
- helper closures convert results to double/bool/List<dynamic>

This is the exact bridge over which the Entry Key is sent and the verdict returns. Method names on this channel are themselves obfuscated/encrypted (consistent with everything else), which is why no readable "activate"/"checkKey" method string exists.

## Finding 3 — JNI_OnLoad is a heavily hardened table-builder (emulation is high-cost)

Static disasm of JNI_OnLoad (0xf3fa0) shows, before/around RegisterNatives:
- multiple `svc 0` mmap (w8=0xde) building RWX arenas
- `svc 0x35` (seccomp/`seccomp(2)` = 0x35 on arm64) — sandbox self-hardening
- `rand()`-filled buffers + per-index XOR/rotate decode loops (movz/movk 64-bit immediates, `lsl xN,xM,xK`)
- `strlen`==0xb (11) integrity string checks
- pointer decode via `orr/lsl` chains before storing into BSS

Emulating only the table-builder slice is feasible in principle, but the decode is interleaved with the seccomp/integrity ops, so isolating a clean slice is non-trivial. Since the **registered** table was already recovered losslessly via the BSS-diff (ADDENDUM v3), emulation would only add value for *non-registered* internal handler pointers.

## Consolidated architecture (final, evidence-backed)

```
Flutter UI (Dart, libapp.so)
   │  GU._Kpd = MethodChannel("A")
   │  invokeMethod(<obfuscated>, entryKey)     ← Entry Key leaves Dart
   ▼
Flutter platform messenger → Java (com.snake.helper.Native, 10 JNI methods)
   ▼
libengine.so (OLLVM, anti-tamper: process_vm_readv + xcrash + seccomp)
   │  local format/validity check → error_code
   │     ├─ invalid → engine decrypts "Code is Not valid" (ilil-style) → returns via channel "A"
   │     │            → GU._Spd → Dart shows dialog        (NO network — proven)
   │     └─ valid   → key_engine 0x81cb8 → worker 0x7e148 (serialize/build request)
   ▼
Dart dart:io HttpClient → https://rest.snakeseller.com/api/request/
   ▼
server status code → localized verdict table (pp 0xf6c0..0x10d48) → UI
```

## Final honest assessment

**Architecture: fully understood and evidence-backed (≈98%).** Every stage from keystroke to verdict is mapped, with the two-gate model (local-first, server-second) proven by the zero-network rejection of 135790.

**Exact local-validator offset: unresolved, and now understood to be walled by DESIGN, not by missing analysis:**
- The engine's registered JNI surface (10 fns) are all decoders/enqueue/lifecycle/crash — none is the validator itself; the validator is an *internal* routine invoked behind the channel-"A" dispatch, reachable only through the obfuscated/encrypted handler wiring.
- Live hooking is killed by anti-tamper; the string→index map is lazy/arithmetic; the dispatcher list sampled was empty; JNI_OnLoad emulation is costly due to interleaved seccomp/integrity code.

This is the natural stopping point for static + non-invasive dynamic analysis. Closing the final offset requires anti-tamper neutralization (patch the integrity/seccomp checks in a private copy) or a hardware watchpoint — both are separate, higher-risk research tasks rather than continuations of the current safe methodology.



---

# ADDENDUM v6 — Claim corrections & calibrated confidence (self-review)

**Date:** 2026-07-13 (session 6)
**Purpose:** Correct two overreaching claims in earlier addenda. Distinguish "not observed" from "proven false."

## Correction 1 — "the validator is NOT any of the 10 JNI methods"

**Earlier wording (too strong):** "the validator is not `pjowqpxe`/`ilil`/`djp`/`awl`/`aior`/`chl`."
**Corrected wording:** *We have not observed any of the 10 JNI exports performing the validation directly.* That is weaker and is what the evidence supports. Still-open possibilities, all consistent with current data:
1. A JNI method (e.g. `awl`/`aior`, which take a String and enqueue it) receives the Entry Key and an **internal** routine consumes the queue and validates it later (async). This is actually plausible given `awl`/`aior` push into linked-lists at `bss+0x18`/`bss+0x30`.
2. The validator is a C++ member function invoked behind the platform-channel dispatch, never itself exported.
3. The validator is a dynamically-registered callback.
4. The validator is a state-machine step inside the engine.

What IS established: none of the 10 exports is *itself* a self-contained validator in the disassembled prologues examined; the decision logic is reached *indirectly*.

## Correction 2 — "0 network ⇒ there is a local validator"

**Earlier wording (too strong):** treated zero network as proof of a local validator.
**Corrected wording:** *The evidence strongly indicates a local validation stage precedes any network call, but does not by itself prove where that check lives.* Alternatives not yet excluded:
- Dart-side (Flutter) rejected the input format before invoking the channel.
- Java stopped execution before the native call.
- The MethodChannel returned an internal error.
- An early crash/anti-tamper path prevented the network call.

The strongest single fact remains: **for key "135790", no `getaddrinfo`/`connect` occurred anywhere in the process lifetime, and the UI showed "Code is Not valid".** That localizes the *decision in time* (before network) but not yet the *decision in code*.

## Most valuable durable result of this work

Not the "A" channel name, but the **lossless recovery of the full RegisterNatives table from BSS** (ADDENDUM v3) — it bypassed RegisterNatives hooking entirely and is reusable for any future work on this binary.

## Recommended next step (lowest risk) — chosen over watchpoint/patch

Analyze the **Dart caller of `invokeMethod` on channel "A"** to learn which obfuscated method name is sent on Activate and how the returned success/error value is consumed. Progress this session:
- Bridge object confirmed: `MethodChannel@35c2b1`, name "A" (pp+0xb778 / pp+0xf960); Dart wrapper class `GU` (Beg.dart): `_Kpd` channel, `_Spd`@0x1e35cc inbound handler, `_Ytb` singleton.
- **Blocker for pure-static Dart tracing:** blutter left 1644 function bodies as `size:-0x1` (not decompiled). The send-side (`invokeMethod` caller) and the activation business logic fall partly in these un-recovered bodies, and pool refs to the channel object go through the `GU._Ytb` static singleton rather than direct `[PP,#off]` loads — so grep-based xref did not resolve them. Recovering these needs either a blutter re-run with full body extraction, or manual r2 tracing from `GU`'s constructor outward.

## Calibrated project status (revised down, per reviewer)

- Architecture understanding: **~90–95%** (was overstated at 98%).
- Two-gate model (local-first, server-second): **strongly indicated, not fully proven.**
- Exact internal routine that turns Entry Key → error_code (fed to `ilil`): **still the core open knot.**

## Bottom line

The remaining unknown is a single internal engine routine. The safest path forward is continued static Dart-side tracing (identify the `invokeMethod` sender and the obfuscated method name), NOT anti-tamper defeat or hardware watchpoints. Those remain fallback options only if static Dart tracing is exhausted.



---

# ADDENDUM v7 — Queue (bss+0x18 / bss+0x30) fully traced; hits anti-tamper self-relocation

**Date:** 2026-07-13 (session 7)
**Method:** Static reader-analysis of the command queues (reviewer's recommended path: "who reads the queue?"). Custom ARM64 instruction scanners over libengine.so (adrp+add / adrp+ldr resolution, BL target resolution, address-taken scan). All offline, non-invasive.

## The two queues are intrusive doubly-linked lists

- `aior(String,String)` @0xf1084 → node malloc(0x20), payload = 2 strings, inserted at head of list rooted at **bss+0x18**; count at bss+0x28.
- `awl(String)` @0xf1110 → node malloc(0x18), payload = 1 string, inserted at head of list rooted at **bss+0x30**; count at bss+0x40.
- Node layout: `[+0]=next, [+8]=&head(prev sentinel), [+0x10..]=payload`.

## Exhaustive access map to bss+0x18 / bss+0x30 (whole binary)

A precise scanner (adrp→bss page, then add/ldr with matching base reg) found **only 5 sites** total:

| site | op | target | role |
|---|---|---|---|
| 0x79518 | add | bss+0x18 | **init** (static ctor 0x79510) |
| 0x79538 | add | bss+0x30 | **init** (static ctor) |
| 0xf10e0 | add | bss+0x18 | **writer** = `aior` |
| 0xf113c | add | bss+0x30 | **writer** = `awl` |
| 0xf3ab8 | ldr | bss+0x30 | **reader** = consumer |

So the entire lifecycle is: `ctor(0x79510)` initializes both lists empty (self-referential `stp x1,x1,[x1]`); `aior`/`awl` enqueue; and a single reader at **0xf3ab8** consumes bss+0x30.

## The consumer

- Consumer function starts at **0xf3a54**. Body: loops reading queue items, and for each item calls **0xf3424** (per-item handler, the only `bl` caller of it is 0xf3af4 inside this loop). It invokes C++ vtable methods `[[x]+0x30]`, `[[x]+0x6b8]` and writes state at `bss+0x98`, using a config object at `bss+0xee8`.
- `0xf3a54` has **no direct `bl` caller** → it is invoked via pointer (thread routine / scheduled callback).

## Why the trace stops here (anti-tamper self-relocation)

The address `0xf3a54` is "address-taken" at 3 code sites (0x118c8c, 0x118e20, 0x119e7c). Inspecting 0x118c8c: it is **not** a scheduler — the code computes `0xf3a54 - <other_fn_ptr>` as a byte length and then `mprotect`s/copies that page range (movz 0x1013, and with 0xfff, csel page size, `mprotect(...,7=RWX)`). i.e. **0xf3a54 is used as an end-boundary of a code region that the engine relocates/re-protects at runtime** (self-modifying / integrity layer).

`0xf3424` itself opens with the same `mmap(RWX)+rand()+per-index XOR+0x550-table` prologue seen in JNI_OnLoad, key_engine, and every other sensitive routine — the obfuscator wraps each function in an allocator/decrypt preamble before the real logic, and the real logic is reached through vtable indirection.

## Net result for the search-space

The reviewer's queue-first strategy was correct and **shrank the search space dramatically**: the local command path is now `awl/aior → list@bss+0x18/0x30 → consumer 0xf3a54 → per-item 0xf3424 → (vtable dispatch)`. But 0xf3424's real body is behind the same self-relocation + vtable-indirection obfuscation wall that blocks every other route. Pure static tracing cannot resolve the vtable targets (they are populated at runtime from decrypted pointers), and dynamic hooking is killed by anti-tamper.

## Calibrated status (unchanged conclusion, tighter bound)

- The Entry-Key local command path is mapped end-to-end at the **structural** level (queue producer → consumer → per-item handler).
- The exact instruction that compares the key / emits the error_code lives inside `0xf3424`'s post-preamble vtable-dispatched body, which is only resolvable by (a) neutralizing the self-relocation/integrity layer in a private copy, or (b) a runtime memory watchpoint. Both remain out-of-scope higher-risk tasks, as agreed.

## New artifacts
- ARM64 scanners (inline in session): adrp+add/ldr bss-access finder, BL-target resolver, address-taken finder. Reproducible; can be saved to `scripts/` if desired.



---

# ADDENDUM v8 — CORRECTION: the awl/aior queue is the filesystem-virtualization layer, NOT the Entry-Key path

**Date:** 2026-07-13 (session 8)
**Method:** Payload-type analysis (reviewer's recommended step) + Java caller analysis. This DISPROVES the queue-as-Entry-Key hypothesis.

## Payload type (proven)

Both writers call JNIEnv offset **0x548 = index 169 = `GetStringUTFChars`**. So the queue payloads are **UTF-8 C-strings**:
- `awl(String)` → node malloc(0x18): `[+0x10]` = one C-string
- `aior(String,String)` → node malloc(0x20): `[+0x10]`,`[+0x18]` = two C-strings

## What the strings actually are (proven via Java caller `z10.java`)

`awl`/`aior` are called ONLY from `androidx/appcompat/view/menu/z10.java`, which is a **filesystem path-redirection / anti-detection subsystem**:
- `z10.b(real, fake)` → `Native.aior(real, fake)` — register a path redirect.
- `z10.a(path)` → `Native.awl(path)` — register a path to hide.
- `z10.e(map)` maps `"/system/bin/su" → "…su-fake"`, `"/system/app/Superuser.apk" → "…-fake"`, etc. → **root-detection evasion**.
- `z10.f(map)` maps `"/proc/self/cmdline" → fake cmdline` → **process-identity spoofing**.
- also remaps other packages' data dirs, `/sdcard`, media dirs.

So the awl/aior queue + consumer `0xf3a54`/`0xf3424` = the engine's **virtual-filesystem / sandbox layer** (how Snake Engine runs cloned apps and hides the modified environment). The native consumer applies these redirects by intercepting file syscalls (consistent with the `process_vm_readv`/syscall machinery seen earlier).

## Correction

**The awl/aior queue is NOT on the Entry-Key path.** Sessions 7's "producer→queue→consumer" pipeline is real, but it is the **filesystem-virtualization** pipeline, not license validation. I over-focused on it merely because the JNI methods take String args. The reviewer's demand for payload proof correctly exposed this.

## Reconciliation — the ACTUAL Entry-Key path (from dynamically-observed evidence, sessions 1–2)

The Entry Key path was directly observed earlier and stands:
```
Dart (entry key std::string) → OLLVM func 0xa58c0 (case 7 → 0xaa1a0)
   → key_engine 0x81cb8  (x2 = entry key)
   → pthread_create(start=0x81db8) → worker 0x7e148 → 0x7b060 / 0x7d5f4
```
- This was confirmed via Stalker ranges + pthread hook, with the entry key passed as `x2 = sp+0x210`.
- The verdict is NOT the worker return (all w0=1 for 135790) and NOT any awl/aior queue item.

## Where the local verdict most plausibly forms (recalibrated, still not pinned)

Stalker began mid-execution and **missed the OLLVM blocks BEFORE 0xaa39c** (the case-7 entry). A local format/length/charset check on the entry key could live in those early, un-captured blocks of `0xa58c0`, producing the error state before/around `key_engine`. This is the best-supported location for the "Code is Not valid" decision and was never directly observed.

## Honest status after this correction

- Filesystem-virtualization subsystem (awl/aior/z10 → 0xf3a54/0xf3424): **newly identified, fully explained** — but it is a **side quest**, not the license path.
- Entry-Key path: back to the **OLLVM 0xa58c0 → key_engine → worker** chain (dynamically proven), with the local verdict likely in the **early OLLVM blocks not captured by Stalker**.
- Net: the awl/aior detour is closed. The remaining task is to capture the **early blocks of 0xa58c0** (before 0xaa39c) for the entry key — which requires either an earlier Stalker start or static analysis of 0xa58c0's entry, not the queue.

## Lesson (methodological)

"Takes a String" ≠ "handles the Entry Key." Payload/caller analysis (reviewer's step) is the correct gate before committing to a pipeline. Applied here, it converted a promising-looking lead into a proven dead-end and redirected effort back to the dynamically-confirmed path.



---

# ADDENDUM v9 — FIRST CRYPTO TRANSFORM OF THE ENTRY KEY = SHA-256 (proven static + runtime)

**Date:** 2026-07-13 (session 9)
**Method:** Static analysis of the early blocks of OLLVM func 0xa58c0 (the ones Stalker missed) + SHA-256 constant identification + runtime crypto-buffer cross-check.

## The early block (~0xa5a2c–0xa5aa4) hashes the entry key with SHA-256

Disassembly (before the case-7/key_engine region, i.e. the blocks Stalker never captured):
```
0xa5a30  add  x0, sp, 0x210            ; x0 = &entryKey (std::string)
0xa5a3c  bl   0xaf8b8                  ; build entryKey string
0xa5a48  ldr  x1, [sp, 0x210]          ; x1 = key data ptr
0xa5a50  ldr  x10,[sp, 0x218]          ; x10 = key end ptr
0xa5a58  ldr  q0, [x8, 0xa90]          ; x8=0x10000 -> load SHA-256 IV @0x10a90
0xa5a60  ldr  q1, [x9, 0xaa0]          ;         -> H4..H7
0xa5a64  sub  x2, x10, x1              ; x2 = key length
0xa5a6c  bl   0x798998                 ; SHA-256 UPDATE(ctx=sp+0x370, key, len)
0xa5a7c  bl   0x5a120                  ; SHA-256 FINALIZE -> 64-char hex @x29-0xe0
0xa5a9c  bl   strlen
0xa5aa0  cmp  x0, 0x40                 ; == 64 ? (hex digest length)
0xa5aa4  b.ne 0xa5be8                  ; sanity/opaque (always true for SHA-256 hex)
```

## Proof it is SHA-256

- **Initial hash values (IV):** `H0 = 0x6a09e667` is at file offset **0x10a90** — exactly the address loaded by `ldr q0,[x8,0xa90]` (x8 = adrp 0x10000). So the code loads the SHA-256 IV into the hash context.
- **Round constants:** `K[0] = 0x428a2f98`, `K[1] = 0x71374491` at **0x2b450** (the SHA-256 K table).
- **Block absorption:** `0x798998` buffers input bytes into `[ctx+0x28]`, counter at `[ctx+0x68]`, and calls the compression function `0x798a14` every **64 bytes** (`cmp w8, 0x40`) — the SHA-256 block size.
- **Runtime confirmation:** `stalker_v2_135790.json` cryptoBufs contain clean **32-byte** buffers (256-bit digests, e.g. `597829d892e16aac91ff2ac147daeac6ff72c2bbb76a409a83303f4f0cc0108e`) and **48-byte ASCII hex** buffers (e.g. `"751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70…"`) — captured during the 135790 activation.

## Calibration (important, per reviewer discipline)

- **Proven:** the entry key is SHA-256-hashed early in `0xa58c0`, at `0x798998` (update) + `0x5a120` (finalize→hex). This is the **first real cryptographic transform of the entry key** — answering the project's original "where is the key first transformed" question at the crypto level.
- **NOT the reject gate:** `strlen==0x40` is on the hex digest, which is always 64 chars, so it does not reject short keys like "135790". It is a sanity/opaque check.
- **Salt/combination unknown:** `SHA-256("135790") = dec58ab7d7f9fb6b…` does **NOT** match the captured `751fb123…`. So the hashed input is not the bare key — there is salting/combination (device id, prefix, or a larger struct) that was not brute-forced here. Tested and rejected: bare key, key+newline, key±space, key:deviceid, deviceid:key, key+deviceString — none matched.
- **The "Code is Not valid" reject instruction is still not pinned.** What is now clear: rejection is NOT a trivial raw-length check (the key is hashed regardless of length). It most likely involves comparing the derived hash/value against a device-bound or stored value further along, inside the OLLVM state machine whose blocks are reached by computed dispatch (not statically linear) and wrapped in the mmap/anti-tamper preamble.

## Updated model

```
entryKey (sp+0x210)
   │
   ▼  [early block ~0xa5a6c, missed by Stalker]
SHA-256(update 0x798998 → finalize 0x5a120)  → 64-char hex digest   ← FIRST CRYPTO TRANSFORM (proven)
   │  (input is salted/combined — exact recipe unknown)
   ▼
key_engine 0x81cb8 (x2=key) → worker → serialize request
   │
   ▼
[reject for 135790 happens locally, no network — instruction still unpinned]
   → engine-decrypted verdict "Code is Not valid" → channel "A" → Dart dialog
```

## Net
This session pinned the **first cryptographic operation on the entry key (SHA-256)** with static+runtime proof and correctly bounded the `strlen==0x40` check as a non-decision. The exact reject comparison remains inside the dispatch/anti-tamper-wrapped continuation.



---

# ADDENDUM v10 — CORRECTION to v9: the SHA-256 block hashes a DECRYPTED EMBEDDED CONSTANT, not the entry key

**Date:** 2026-07-13 (session 10)
**Method:** Traced the actual bytes fed into SHA-256 update (reviewer's step: "prove where the input bytes come from" instead of guessing salt). Result overturns v9's headline.

## What the SHA-256 input actually is

The buffer hashed by the block at ~0xa5a2c is built by `0xaf8b8` = `std::string::assign(dst, begin=x20, end=x20+w22)` (it is just `subs len,end,begin; memcpy`). So the hashed bytes = the buffer at **x20**, length **w22**.

Tracing x20 back (0xa5730–0xa57c4):
```
0xa5750  blr x20               ; x20 was an mmap trampoline: mmap(size=0x3f=63, RWX, MAP_ANON)
0xa5758  mov x20, x0           ; x20 = 63-byte RWX buffer
0xa575c..0xa5774                ; copy 63 bytes from rodata 0x2a860 ("str.block_literal") into x20
0xa5778  bl 0x777470           ; get lazy-init decryptor object -> x21
0xa5784  malloc(0xc) -> x22
0xa57a8: loop i=0..0x3d (62):  ; for each byte: w0=x20[i]; blr [x21] (decrypt); x20[i]=w0
```
So x20 = a **63-byte embedded constant** (rodata @0x2a860) that is **decrypted byte-by-byte**, then that decrypted constant is what gets SHA-256'd.

- Rodata @0x2a860 (encrypted): `af b4 c0 c3 a7 b1 b5 b4 b7 a0 de 92 70 73 6d 77 61 66 72 27 6e 68 63 67 69 69 2e 78 79 65 7a 33 71 67 64 79 77 39 27 3b 39 79 32 3f …` — obfuscated bytes, decrypted at runtime via the object from 0x777470.

## Consequence — v9 headline retracted

- **v9 said:** "the entry key's first crypto transform is SHA-256." **That is NOT established.** The SHA-256 invocation I examined hashes a **decrypted embedded 63-byte constant**, not the entry key.
- **Root cause of the error:** `sp+0x210` is a **reused std::string stack slot** across the flattened OLLVM blocks. I assumed "sp+0x210 = entry key" everywhere; in this block sp+0x210 holds the decrypted constant. The reviewer's standing caution about sp+0x210 reuse was correct.

## What remains solidly true

- SHA-256 **is present and executes** in the engine (IV @0x10a90, K-table @0x2b450, 64-byte block absorber 0x798998, finalize 0x5a120; runtime 32-byte digest buffers). Strong.
- But **the input to SHA-256 in the block examined is a constant, not the key.** So we cannot claim the entry key is hashed until we find a SHA-256 call whose input is provably the key.
- `strlen==0x40` remains a post-hash sanity check (unchanged).
- 0xa58c0 is confirmed a single giant flattened OLLVM function (no `ret` between 0xa4000 and 0xa5730), so blocks are reached by computed dispatch and stack slots are recycled — per-block proof of slot contents is mandatory before any claim.

## Honest status

- The clean, repeatable win of the whole effort remains the **BSS-recovered JNI table** (v3) and the **structural map** (channel "A", queues=filesystem-virtualization v8, worker/key_engine pipeline).
- The "entry key → SHA-256" claim is **withdrawn**; what is proven is only that SHA-256 runs on *some* engine data (at least one embedded constant).
- To establish where the entry key is actually consumed cryptographically, the only reliable method left is per-block proof of what `sp+0x210` (or the relevant slot) holds at the key_engine call site 0xaa120 — which, given computed dispatch + stack reuse + anti-tamper, needs a runtime observation (blocked) or emulation, not linear static reading.

## Methodological note
Two sessions in a row (v8 filesystem queue, v10 constant-hash) a promising lead was overturned by doing the reviewer's "prove the data" step. Pattern: in this heavily-flattened, slot-recycling, string-encrypting binary, *any* claim of the form "X handles the entry key" must be backed by proof that the specific bytes at that site are the key — not by the plausibility of the operation.
