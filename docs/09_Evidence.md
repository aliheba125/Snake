# 09 — Evidence Index

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

This document indexes the **raw evidence** so any claim can be independently checked. The
conclusion↔evidence mapping is in [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md).

---

## Evidence by type ([`../evidence/`](../evidence/))

| Folder | Contents | Supports |
|--------|----------|----------|
| `evidence/screenshots/` | **17** PNGs of every app screen (launch, home, shop, settings, device, Entry-Key dialog, "Code is Not valid", etc.), including `screen_code_entered.png` + `screen_after_valid_code.png` = the **`000503` false-positive brute-force test** (code entered, then rejected) referenced in [`06_Activation.md`](06_Activation.md) | UI flow (07), activation model (06) |
| `evidence/beacon-crypto-traces/` | JSON traces: `memcmp_activate.json`, `stalker_funcs.json`, `stalker_activate.json`, `cap_135790.json`, `cap_999888.json`, `corr_runB/runC.json`, `capture_activate2.json` | server-processing proof (05), activation internals (06) |
| `evidence/z-samples/` | `z_fresh_live.txt`, `z_samples_prior.txt` | z structure (04, 05) |
| `evidence/runtime-memory/` | `device_evidence.txt` (android_id, `cip_pub`, Firebase tokens — the source of the android_id value tested in [`../UNKNOWNS.md`](../UNKNOWNS.md) U‑03), `snake_maps.txt`/`engine_maps.txt` (`/proc/pid/maps` dumps), `home_screen_394318.png`, `path_proof_trial1/2/3.json` (the raw capture logs behind the 3 trials described in `archive/2026-07-12_working-notes/PATH_PROOF.md`) | runtime (07), path proof |
| `evidence/scanner-logs/` | `s*.log` — memory-scanner outputs (all NO MATCH). Methodology/self-test values are in `archive/2026-07-12_working-notes/RESULTS_MATRIX.md` and `KEY_EXTRACTION_FINDINGS.md`. ⚠️ The scanned memory dumps themselves (2.6 GB: `dump.bin`, `dump_engine.bin`, `dump_apk.bin`) are **not in this repo** — see the reproduction recipe in `archive/2026-07-12_working-notes/MANIFEST.md` | ruling out AEAD/CBC/MAC (04) |
| `evidence/network-pcaps/` | 4 small `.pcap` files from the **2026‑07‑11** session (network was blocked; captures are near-empty, 24–504 bytes) | network topology (07), archived network session |
| `evidence/network-pcaps-extra/` | ⚠️ Despite the folder name, these logs are from **2026‑07‑12** (verified by internal timestamps, e.g. `api_capture_run1.log` starts `2026-07-12T01:59:08Z`), not July‑11. Contains `aes_key.log`, `strace_run*.log`, and the website capture `snakeengine_frontend.js` + `snakeengine_main.html` (source for P‑01 in [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md)) | network topology (07), website checkout evidence (06) |
| `evidence/mitm-certs/` | mitmproxy CA/certs used in July‑11 attempts (rejected — Flutter/Dart doesn't trust the system CA store) | network diagnosis (archive) |
| `evidence/network-diagnosis-logs/` | July‑11 logs (DNS, crash forensics, call classification, strings) | archived network session |

> **Duplicate content note:** `artifacts/decompiled/native-deep/dynamic-live/{captures,runners}/` contains byte-identical
> copies of 5 files also in `evidence/network-diagnosis-logs/` and 8 scripts also in `scripts/network-diagnosis/`.
> Per project policy, nothing was deleted — both copies are kept intentionally (the `dynamic-live/` copies are the
> original pre-refactor location; the `evidence/`/`scripts/` copies are the current canonical organization).

## Reproduction scripts ([`../scripts/`](../scripts/))

| Folder | Key scripts | Purpose |
|--------|-------------|---------|
| `scripts/beacon-crypto/` | `capture_all.py`, `reproduce_key.py`, `prove_z.py`, `end_to_end.py`, `fresh_verify.py`, `verify_shared_key.py` | capture + reproduce z/key |
| | `prove_challenge_response.py`, `prove_cr2.py`, `decode_response.py`, `decode_mask.py` | server-processing + response decode |
| | `test_code_network.py`, `capture_activate*.py`, `hook_memcmp.py`, `stalker_*.py`, `correlate_activate.py`, `plaintext_decode.py` | activation internals |
| | `server_test.py`, `discriminating_test.py`, `probe_logic.py`, `trace_hosts.py`, `trace_interact.py` | server behaviour + network topology |
| | *(71 files total)* the remaining ~46 scripts (`backtrace_fuzzy.py`, `catch_url.py`, `find_raw48.py`, `full_flow.py`, `keyseed_test.py`, `scan_procmem.py`, `sink_and_dump.py`, `trace_libengine_url.py`, `find_writer*.py`, `poll_*.py`, `watch_*.py`, `proof_run*.py`, `dumpapk.sh`/`dumpeng.sh`/`dumpmem.sh`, `*_blocks.txt`/`*_index.txt`, etc.) are exploratory or one-off steps from the July‑12 investigation (URL-assembly tracing, raw memory dumping, writer-hunting, dead ends). They are not individually described but are safe to read; none contradict the numbered `docs/`. | exploratory / supporting |
| `scripts/memory-scanners/` | `scanner.c` … `scanner9.c` (8 files: `scanner.c`, `scanner2.c`, `scanner3.c`, `scanner5.c`–`scanner9.c`) | AEAD/CTR/MAC/KDF memory scans (negative results); methodology detail in `archive/2026-07-12_working-notes/RESULTS_MATRIX.md` |
| `scripts/network-diagnosis/`, `network-diagnosis-extra/` | July‑11/July‑12 capture/bypass/diagnosis scripts (146 files total: 93 + 53, including a `kiro_sandbox/` subfolder of 33 files — 24 unique scripts not duplicated elsewhere plus 9 byte-identical to sibling files — kept intentionally, see the duplicate-content note above) | archived network session |
| `scripts/frida-agents/` | `agent_*.ts` (11 files) + `compiled_*.js` (9 files) + `package.json` | July‑11 Frida agents (string recovery, memscan, net capture) — TypeScript sources compiled to the `.js` files via `frida-compile` |

## Static artifacts ([`../artifacts/`](../artifacts/))

| Path | Contents |
|------|----------|
| `artifacts/apk/SE_2.2.6.apk` | the analyzed APK |
| `artifacts/native-libs/*.so` | `libapp.so`, `libengine.so`, `libflutter.so` |
| `artifacts/decompiled/native-deep/ghidra/libengine_decompiled.c` | Ghidra C for libengine (~2241 functions) |
| `artifacts/decompiled/native-deep/static-max/` | **angr**-based CFG recovery + decompilation attempt on the 42 functions Ghidra could not decompile. Genuine unique result: `_INIT_16_angr_decompiled.c` (1294 lines, angr succeeded where Ghidra failed) and `_INIT_36_angr_decompiled.c`; independently re-derives the AES/SHA-256/KDF scheme from the decompiled code (cross-check for `docs/04_Crypto.md`); documents *why* the 4 out-of-file functions and the 26 near-identical 175KB `_INIT_*` giants resist static decompilation (OLLVM flattening + runtime code-gen + anti-emulation `clock_gettime` checks). See `static-max/README.md` and `STATIC_MAX_ANALYSIS.md` (Arabic). |
| `artifacts/decompiled/native-deep/strings/` | Extracted printable-string dumps for all 4 libraries (`strings_libengine.txt`, `strings_libapp.txt`, `strings_libflutter.txt`, `strings_classes_dex.txt`) — supporting material for the crypto census in `docs/02_Static_Analysis.md` |
| `artifacts/decompiled/java-jadx/` | Java decompilation (3086 files) |
| `artifacts/decompiled/dart-blutter/` | Dart AOT reconstruction |
| `artifacts/decompiled/{smali,resources,assets}/`, `AndroidManifest.xml` | apktool output |

## Key reproducible values (for spot-checking)

| Value | Meaning |
|-------|---------|
| seed `111492102` → key `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` | offline key reproduction (run 1) |
| seed `111492128` → key `8192f7fc70d13b813c2ac5913469f052c30accef2a7dbc1b29d22309762a975d` | offline key reproduction (run 2) |
| device token `751fb1231d3452a779807c5646d048ee0a8a93a2ed0cb70bc8fb419a692ae9ed` | session-stable Activate token |
| `resp_key` correct → 16/32 constant bytes; wrong → 0/32 | server-processing proof |
