# 09 — Evidence Index

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

This document indexes the **raw evidence** so any claim can be independently checked. The
conclusion↔evidence mapping is in [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md).

---

## Evidence by type ([`../evidence/`](../evidence/))

| Folder | Contents | Supports |
|--------|----------|----------|
| `evidence/screenshots/` | 15+ PNGs of every app screen (launch, home, shop, settings, device, Entry-Key dialog, "Code is Not valid", etc.) | UI flow (07), activation model (06) |
| `evidence/beacon-crypto-traces/` | JSON traces: `memcmp_activate.json`, `stalker_funcs.json`, `stalker_activate.json`, `cap_135790.json`, `cap_999888.json`, `corr_runB/runC.json`, `capture_activate2.json` | server-processing proof (05), activation internals (06) |
| `evidence/z-samples/` | `z_fresh_live.txt`, `z_samples_prior.txt` | z structure (04, 05) |
| `evidence/runtime-memory/` | `device_evidence.txt`, `snake_maps.txt`, `engine_maps.txt`, `home_screen_394318.png`, `path_proof_trial*.json` | runtime (07), path proof |
| `evidence/scanner-logs/` | `s*.log` — memory-scanner outputs (all NO MATCH) | ruling out AEAD/CBC/MAC (04) |
| `evidence/network-pcaps/`, `network-pcaps-extra/` | `*.pcap` startup captures | network topology (07) |
| `evidence/mitm-certs/` | mitmproxy CA/certs used in July‑11 attempts | network diagnosis (archive) |
| `evidence/network-diagnosis-logs/` | July‑11 logs (DNS, crash forensics, call classification, strings) | archived network session |

## Reproduction scripts ([`../scripts/`](../scripts/))

| Folder | Key scripts | Purpose |
|--------|-------------|---------|
| `scripts/beacon-crypto/` | `capture_all.py`, `reproduce_key.py`, `prove_z.py`, `end_to_end.py`, `fresh_verify.py`, `verify_shared_key.py` | capture + reproduce z/key |
| | `prove_challenge_response.py`, `prove_cr2.py`, `decode_response.py`, `decode_mask.py` | server-processing + response decode |
| | `test_code_network.py`, `capture_activate*.py`, `hook_memcmp.py`, `stalker_*.py`, `correlate_activate.py`, `plaintext_decode.py` | activation internals |
| | `server_test.py`, `discriminating_test.py`, `probe_logic.py`, `trace_hosts.py`, `trace_interact.py` | server behaviour + network topology |
| `scripts/memory-scanners/` | `scanner.c` … `scanner9.c` | AEAD/CTR/MAC/KDF memory scans (negative results) |
| `scripts/network-diagnosis/`, `network-diagnosis-extra/` | July‑11 capture/bypass/diagnosis scripts | archived network session |
| `scripts/frida-agents/` | `agent_*.ts` + `compiled_*.js` | July‑11 Frida agents (string recovery, memscan, net capture) |

## Static artifacts ([`../artifacts/`](../artifacts/))

| Path | Contents |
|------|----------|
| `artifacts/apk/SE_2.2.6.apk` | the analyzed APK |
| `artifacts/native-libs/*.so` | `libapp.so`, `libengine.so`, `libflutter.so` |
| `artifacts/decompiled/native-deep/ghidra/libengine_decompiled.c` | Ghidra C for libengine (~2241 functions) |
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
