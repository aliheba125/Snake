# REPOSITORY TREE — Every Folder & File Explained

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

This explains what every directory and important file is, and why it exists. There are no orphan,
hidden, or forgotten files: everything is either an authoritative doc, an input artifact, raw
evidence, tooling, or clearly-labelled history.

---

```
Snake/
├── MASTER_INDEX.md          ← START HERE: entry point + reading order
├── README.md                ← short intro, points to MASTER_INDEX
├── KNOWLEDGE_MAP.md         ← how all components relate
├── EVIDENCE_MATRIX.md       ← every conclusion → its evidence + status
├── UNKNOWNS.md              ← what we don't know + how to resolve
├── ROADMAP.md              ← progress % per axis, done vs remaining
├── REPOSITORY_TREE.md       ← this file
│
├── docs/                    ← THE authoritative study (single source of truth)
│   ├── 00_Project_Overview.md
│   ├── 01_Architecture.md
│   ├── 02_Static_Analysis.md
│   ├── 03_Dynamic_Analysis.md
│   ├── 04_Crypto.md
│   ├── 05_Beacon_Protocol.md
│   ├── 06_Activation.md
│   ├── 07_Runtime.md
│   ├── 08_Findings.md          ← master conclusion list w/ status
│   ├── 09_Evidence.md          ← index into evidence/ and scripts/
│   ├── 10_Open_Questions.md
│   └── 11_Next_Steps.md
│
├── artifacts/               ← INPUTS (the thing we analyzed)
│   ├── apk/SE_2.2.6.apk        ← the analyzed APK
│   ├── native-libs/            ← extracted native libraries
│   │   ├── libapp.so           (Dart AOT snapshot)
│   │   ├── libengine.so        (obfuscated native engine — main crypto target)
│   │   └── libflutter.so       (Flutter engine + BoringSSL)
│   └── decompiled/             ← all decompilation output
│       ├── AndroidManifest.xml, apktool.yml, apktool-extras/, resources/, smali/
│       ├── assets/             (flutter_assets: fonts, shaders, images)
│       ├── java-jadx/          (3086 .java files, jadx)
│       ├── dart-blutter/       (Dart AOT reconstruction, Blutter)
│       ├── native-libs/        (raw .so copies kept with decompilation)
│       ├── native-deep/        (Ghidra output + July-8 native analysis notes*)
│       │   ├── ghidra/libengine_decompiled.c   ← primary native source (~2241 fns)
│       │   ├── ghidra/function_inventory.tsv
│       │   ├── static-max/     (angr-based decompilation of Ghidra-failed functions; see docs/02, docs/09)
│       │   ├── strings/        (extracted string dumps, all 4 libraries; see docs/09)
│       │   ├── dynamic/, emulation/  (small — early dynamic/emulation setup notes)
│       │   ├── dynamic-live/    (July-8/11 Frida toolchain: agents/, build/, captures/, runners/, docs)
│       │   │   ⚠️ `captures/` and `runners/` here are byte-identical to files now also organized
│       │   │      under `evidence/network-diagnosis-logs/` and `scripts/network-diagnosis/`. Kept
│       │   │      intentionally in BOTH places (nothing deleted for being old/superseded — see
│       │   │      project policy). Only `agents/node_modules/` (77 MB of standard npm
│       │   │      dependencies, reproducible via `npm install` from the committed
│       │   │      `package.json`/`package-lock.json`) was removed, as it is a build artifact with
│       │   │      zero analytical content, not unique research output.
│       │   └── *.md            ← *July-8 notes; SOME conclusions DISPROVED (see docs/02)
│       ├── extracted/          (misc extracted strings/data)
│       └── REPORT.md           (original apktool/decompile report)
│
├── evidence/                ← RAW PROOF (organized by type, not by date)
│   ├── screenshots/            (17 app UI screenshots, incl. the "000503" activation test)
│   ├── beacon-crypto-traces/   (JSON: memcmp, stalker, capture, correlate runs)
│   ├── z-samples/              (captured z values + parsed fields)
│   ├── runtime-memory/         (maps, device evidence, path-proof JSON — see docs/09 for what each file is)
│   ├── scanner-logs/           (memory-scanner outputs — all NO MATCH; scanned dumps are NOT in-repo, see docs/09)
│   ├── network-pcaps/          (2026-07-11 startup packet captures — small/near-empty, network was blocked)
│   ├── network-pcaps-extra/    (⚠️ actually 2026-07-12 logs despite folder name — verified by internal timestamps)
│   ├── mitm-certs/             (mitmproxy CA/certs from July-11 attempts)
│   └── network-diagnosis-logs/ (July-11 DNS/crash/strings logs)
│
├── scripts/                 ← TOOLING (reproduction + capture)
│   ├── beacon-crypto/          (44 files, Python/JS: capture, reproduce, prove, decode, trace —
│   │                            most cited in docs/09; remainder are exploratory/one-off, see docs/09)
│   ├── memory-scanners/        (scanner.c … scanner9.c, 8 files — AEAD/CTR/MAC/KDF scans)
│   ├── network-diagnosis/      (July-11/12 capture/bypass/diagnosis, ~90 files)
│   ├── network-diagnosis-extra/(additional scripts, ~65 files, incl. `kiro_sandbox/` subfolder:
│   │                            ~24 unique files + a handful byte-identical to sibling files in the
│   │                            same tree — kept in both places, nothing deleted)
│   └── frida-agents/           (agent_*.ts + compiled_*.js — July-11 Frida agents)
│
└── archive/                 ← HISTORY (superseded working notes; NOT current truth)
    ├── 2026-07-11_network-session/
    │   ├── *.md                (network + account diagnosis, live validation, timeline)
    │   ├── frida-binaries/     (frida-gadget + config .so)
    │   └── env-configs/        (dot-android/dot-config tarballs)
    └── 2026-07-12_working-notes/
        └── *.md                (20 chronological working docs; superseded by docs/)
```

## Why each top-level area exists

| Area | Purpose | Authority |
|------|---------|-----------|
| `docs/` + root `*.md` | The curated, status-labelled study | **Authoritative** |
| `artifacts/` | Immutable inputs (APK, libs, decompilation) | Reference |
| `evidence/` | Raw proof for every ✅ claim | Reference |
| `scripts/` | Reproduce/verify the evidence | Reference |
| `archive/` | Chronological working notes (some ❌ disproved) | **History only** |

## Notes on the archive (important)

The `archive/` folders are the original day-by-day working notes. They contain the real research
trail — including hypotheses that were **later disproved** (e.g. "z is AES-GCM", "key is
unextractable", "rest.snakeseller.com is the backend"). They are preserved for transparency and
history. **When archive notes disagree with `docs/`, `docs/` is correct.** See
[EVIDENCE_MATRIX.md](EVIDENCE_MATRIX.md) (❌ section) for the specific corrections.

Likewise, the `.md` files under `artifacts/decompiled/native-deep/` are July-8 static-analysis
notes kept next to the decompiled code; their crypto conclusions are superseded by `docs/04` and
`docs/02`.

## Branch note

All historical branches (`main`, `decompiled-source`, `dynamic-capture-guide`,
`live-dynamic-analysis`, `session-2026-07-11-network-diagnosis`, `static-max-crypto-re`) are
**ancestors** of the working branch and contain **no unique commits** — everything is consolidated
here. See [ROADMAP.md](ROADMAP.md) and the branch-cleanup note in the refactor commit.
