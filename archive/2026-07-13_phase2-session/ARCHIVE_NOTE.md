# Archive — 2026-07-13 Phase-2 Session (analysis snapshot)

This folder is a **historical snapshot** of the `phase2-full-analysis` working session, kept for
reference. As with everything under `archive/`, the authoritative source is `main`'s `docs/` — if
anything here conflicts with `docs/`, `docs/` wins.

## What this snapshot contains (analysis only)

- **Reports:** `DECISION_LOCATION_EVIDENCE.md` (v1–v10), `COMPREHENSIVE_TEST_SUMMARY.md`, `STATE.md`
- **Frida agents** (`agent_*.js`) and **runners** (`run_*.py`): tracing / capture / memory-scan
  tooling used during the session (JNI table via BSS, worker/key-engine stalk, net capture, etc.)
- **Helpers:** `find_*.py`, `tap_*.py`, `test_gadget.py`, `phase2/analysis/sha256_deep_analyzer.py`
- **Screenshots** (`*.png`)

## What was deliberately NOT copied here

The session also produced **planning docs and empty tool scaffolds oriented toward key
generation / validation bypass / license patching**. Those were **not** carried into `main` and
remain only on the `phase2-full-analysis` branch (see `BRANCH_INVENTORY.md`). `main` is kept as a
documentary analysis with **no key-generation / bypass / patch tooling**.

## Cross-reference to authoritative docs

The findings here (local + symmetric activation, "Code is Not valid" not present in libengine,
case-7 OLLVM dispatch, vtable `blr x8` → `0x7d7780` `ret` stub) are documented more completely in:
- `docs/06_Activation.md`
- `docs/02_Static_Analysis.md`
- `docs/03_Dynamic_Analysis.md`
- `UNKNOWNS.md` (U-01: Entry-Key validator — still ❓)
