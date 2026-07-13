# BRANCH INVENTORY — Read This First If You See Multiple Branches

> Last verified: 2026-07-13 (repo-wide audit across all 9 branches).

This repository has **9 branches** created across multiple analysis sessions. They are **not** all
equal. To avoid confusion (and avoid re-doing finished work), use this map.

---

## ⭐ Authoritative branch: `main`

**`main` is the single source of truth.** Start here every time:
`README.md` → `MASTER_INDEX.md` → `docs/00…11`.

Everything below is either (a) already merged into `main`, or (b) a historical/experimental branch
kept for raw artifacts only. **If a claim in another branch conflicts with `main`, `main` wins.**

---

## Full branch map

| Branch | Files | Role | Trust |
|--------|------:|------|-------|
| **`main`** | ~11,679 | ✅ **Authoritative.** Consolidated study: docs/00–11, ROADMAP, UNKNOWNS, EVIDENCE_MATRIX, KNOWLEDGE_MAP, SESSION_STATUS, archive/. | **Use this** |
| `redroid14-live-validation` | ~10,930 | Live dynamic validation session (U-01…U-09). Content folded into `main` docs. | Historical |
| `session-2026-07-11-network-diagnosis` | ~11,426 | Network/account diagnosis + captured artifacts (frida gadget, mitm certs). | Historical |
| `live-dynamic-analysis` | ~10,486 | Dynamic captures + ready-to-run agent. Folded into `main`. | Historical |
| `static-max-crypto-re` | ~10,456 | Static pass: AES-256 beacon scheme reverse-engineered. Folded into `main` docs/04. | Historical |
| `dynamic-capture-guide` | ~10,457 | Dynamic-capture guide + hardened Frida script. Folded into `main`. | Historical |
| `decompiled-source` | ~10,442 | Raw decompiled source (jadx/blutter/native). Inputs live in `main` `artifacts/`. | Historical |
| `clean-terminology` | ~11,654 | Terminology + ownership/authorization notes pass. Folded into `main`. | Historical |
| `phase2-full-analysis` | ~167 | ⚠️ **Isolated branch — pending decision.** Separate git root (no shared history). Its **analysis** part (reports + Frida agents) is now merged into `main` at `archive/2026-07-13_phase2-session/`. What remains ONLY on this branch is **phase-2 planning docs + tool scaffolds oriented toward key-generation / validation-bypass / license-patching**, which were intentionally kept out of `main`. | Isolated — see below |

---

## Note on `phase2-full-analysis`

That branch was created as a fresh git root, so it does **not** share history with `main` and shows
only ~167 files. Its genuinely useful, reusable results are:

- **JNI RegisterNatives table** recovered from live BSS (`0x828ee8`) — 10 methods with engine offsets.
- **Zero-network proof** that the invalid-code rejection (`135790`) happens locally.
- **Worker/key-engine call chain** (`0xa58c0 → 0x81cb8 → 0x7e148`).

These are **consistent with `main`** and, where `main` already documents the same path (case-7
dispatch, vtable `blr x8` → `0x7d7780` `ret` stub, "Code is Not valid" not present in libengine),
`main`'s version is more complete. The analysis reports and Frida agents from this branch are now
preserved in `main` at **`archive/2026-07-13_phase2-session/`** (see its `ARCHIVE_NOTE.md`).

### Status of this branch: ISOLATED — pending decision ⬜

What still lives **only** on `phase2-full-analysis` (not in `main`) is the phase-2 material oriented
toward **key-generation / validation-bypass / license-patching** (planning docs + empty tool
scaffolds). This was intentionally excluded from `main`. The branch is **left intact** so that a
future decision can be made about it — options include: keep as-is, edit/repurpose, or delete.
Nothing there is a working tool; it is not required by `main` and `main` does not depend on it.

---

## Static vs Dynamic completion (from `ROADMAP.md`, evidence-backed)

| | Axis | Progress |
|---|------|----------|
| **Static** | APK / resources | ~100% ✅ |
| | `libengine.so` RE | ~90% (OLLVM giants unread) |
| | `libapp.so` Dart | ~60% (obfuscated symbols) |
| | Beacon crypto (AES-256) | ~100% ✅ (reproduced offline) |
| **Dynamic** | Runtime / anti-tamper | ~90% ✅ |
| | Beacon uplink `z` (live) | ~100% ✅ |
| | Beacon downlink | ~90% |
| | Activation validator isolation | ~15% ❓ |
| | Entry-Key generation | 0% ⬜ (not achieved, not demonstrated) |

**Static is ≈85–90% overall — not 100%.** **Dynamic is ≈90% for general behaviour**, but only
**≈15%** for isolating the Entry-Key validator (the hardest remaining piece). See `ROADMAP.md` and
`UNKNOWNS.md` for the full breakdown and how to resolve each gap.
