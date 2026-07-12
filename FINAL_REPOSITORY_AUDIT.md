# FINAL REPOSITORY AUDIT — 2026-07-12

> Status legend: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

**Scope of this audit:** a full, independent re-read of the repository *as if built by someone
else* — every branch/folder/file was inventoried, every markdown link resolved, every
"documented" claim traced back to a real file (and vice versa), every reported number
cross-checked against the actual evidence, and every apparent duplicate verified byte-for-byte
before deciding what to do with it.

**Policy honored throughout:** nothing was deleted for being old, superseded, or duplicated.
Superseded material stays in `archive/` (already the case from the prior refactor). The **only**
deletion in this audit is a 77 MB npm dependency tree with zero analytical content — explained
below, with a restore note left in place of the deleted files.

---

## 1. Completion by section (post-audit)

| Section | Before this audit | After this audit | Notes |
|---------|--------------------|-------------------|-------|
| Beacon protocol / crypto (`docs/04`, `05`) | ~100% | ~100% | No factual gaps found; added one cross-reference (angr independent re-derivation) |
| Static analysis (`docs/02`) | ~90% (silently missing static-max/strings) | ~98% | angr (`static-max/`) and `strings/` folders now documented; genuinely unrecoverable code (26 near-identical 175 KB OLLVM giants, 4 out-of-file functions) explained, not just left as a number |
| Dynamic analysis (`docs/03`) | ~90% | ~95% | Reproducibility caveat added (2.6 GB memory dumps are external, not in-repo); scanner methodology now linked to its archived detail |
| Runtime / UI (`docs/07`) | 90% (screenshot count wrong) | ~95% | Screenshot count corrected 15→17; the 2 previously-orphaned screenshots are now cited evidence |
| Activation (`docs/06`) | 🟨 unchanged in substance | 🟨 unchanged in substance, better sourced | The `000503` false-positive test now has its screenshots cited; android_id source cited; independent angr symmetric-crypto cross-check added. **No new crypto/activation finding — this audit is documentation hygiene, not new analysis.** |
| Evidence index (`docs/09`, `EVIDENCE_MATRIX.md`) | 🟨 (one wrong path, several unlinked files) | ✅ | Wrong path fixed; every previously-orphaned evidence file is now linked from somewhere; script directories now have accurate counts and explicit "some scripts are exploratory, not individually documented" language instead of implying full coverage |
| Repository navigation (`MASTER_INDEX.md`, `REPOSITORY_TREE.md`) | 🟨 (mislabeled dates, no duplicate-content disclosure) | ✅ | Date mislabel fixed; duplicate-content relationships explicitly documented; node_modules removal explained in-place |
| Branch hygiene | ✅ (established in the prior refactor) | ✅ | Unchanged — re-verified all 6 non-canonical branches remain pure ancestors with zero unique commits |

**Overall repository state:** from "well-organized but with several small, real inaccuracies" to
"every claim checked against a real file; every real file reachable from a doc." No finding in
this audit changed any technical conclusion about the app — it only corrected how those
conclusions are sourced and cross-linked.

---

## 2. Issues found (grouped) and what was fixed

### A — Wrong/broken references (factual path or date errors)

| ID | Issue | Fix |
|----|-------|-----|
| A1 | `EVIDENCE_MATRIX.md` said `snakeengine_frontend.js` lives in `archive/2026-07-11_.../`. It actually lives in `evidence/network-pcaps-extra/`. | Corrected the path in `EVIDENCE_MATRIX.md` (row P‑01). |
| A2 | The "2.6 GB memory, NO MATCH" finding (`docs/03`, `docs/04`, `EVIDENCE_MATRIX.md` D‑01) implicitly reads as in-repo evidence. The actual 2.6 GB of memory dumps (`dump.bin`, `dump_engine.bin`, `dump_apk.bin`) were too large for git and only ever existed on the remote host used for the session; only the scanner source and result logs are committed. | Added an explicit "⚠️ Reproducibility caveat" to `docs/03_Dynamic_Analysis.md` and a parenthetical note to `EVIDENCE_MATRIX.md` D‑01, pointing to the exact regeneration recipe in `archive/2026-07-12_working-notes/MANIFEST.md`. |
| A3 | `evidence/network-pcaps-extra/` was labeled "July‑11" in `docs/09_Evidence.md` and `REPOSITORY_TREE.md`. Internal timestamps inside the files (e.g. `api_capture_run1.log` starts `2026-07-12T01:59:08Z`) prove this folder is actually from **2026‑07‑12**. Only `evidence/network-pcaps/` (4 tiny `.pcap` files, 24–504 bytes each — consistent with the known-blocked network that day) and `evidence/mitm-certs/` are genuinely July‑11. | Relabeled both docs with the correct date and an explanation of how the mislabel was caught. |

### B — Orphaned evidence (real files, zero citation anywhere)

| ID | Issue | Fix |
|----|-------|-----|
| B1 | `evidence/screenshots/screen_code_entered.png` and `screen_after_valid_code.png` are the literal screenshots of the `000503` brute-force false-positive test described in prose in `docs/06_Activation.md` — but were never cited. Verified by direct image inspection: code `000503` entered → "Activate" → "Code is Not valid". | Cited both filenames directly in `docs/06_Activation.md`'s failed-attempts table and in `docs/09_Evidence.md`. |
| B2 | `evidence/runtime-memory/device_evidence.txt` contains the exact `android_id` value (`8840bf6a81679fc4`) that `UNKNOWNS.md` (U‑03) says was tested as a candidate hash input for the device token — but nothing pointed to this file as the source. | Added the citation to `UNKNOWNS.md` U‑03 and to `docs/09_Evidence.md`. |
| B3 | `evidence/runtime-memory/path_proof_trial1/2/3.json` are the raw capture logs behind the three trials described in `archive/2026-07-12_working-notes/PATH_PROOF.md` — confirmed by matching content (`boot → hook_ok → modules_loaded → Z_SINK_HIT` sequence). Neither document pointed to the other. | Added a cross-reference note inside `PATH_PROOF.md` itself, and described the files properly in `docs/09_Evidence.md`. |
| B4 | `docs/03_Dynamic_Analysis.md`'s memory-scanner paragraph never linked to `archive/2026-07-12_working-notes/RESULTS_MATRIX.md` / `KEY_EXTRACTION_FINDINGS.md`, which hold the actual NIST KAT self-test values and the per-scanner methodology. | Added both links directly in `docs/03_Dynamic_Analysis.md` and `docs/09_Evidence.md`. |
| B5 | `artifacts/decompiled/native-deep/static-max/` (an angr-based CFG-recovery pass that decompiled 2 of the 42 functions Ghidra couldn't, and *independently re-derived* the AES/SHA-256/KDF scheme before the live time-bucket seed was known) and `native-deep/strings/` (raw string dumps for all 4 libraries) were **not mentioned anywhere** in `docs/02_Static_Analysis.md` despite containing genuine, unique results. | Added both to the static-analysis tooling table in `docs/02_Static_Analysis.md`, to `docs/09_Evidence.md`'s artifacts table, and referenced the independent angr cross-check from `docs/04_Crypto.md` and `docs/06_Activation.md`. |

### C — Script directories without individual documentation

`scripts/beacon-crypto/` (71 files), `scripts/memory-scanners/` (8 files), and
`scripts/network-diagnosis*/` (146 files) each contain a number of scripts never named
individually in any doc. Most of the *load-bearing* scripts (the ones that produced a cited
finding) already were named in `docs/09_Evidence.md`; the rest are legitimate one-off,
exploratory, or dead-end steps from the investigation (URL-assembly tracing attempts, raw memory
dumping helpers, block-index files, etc.).

**Fix:** rather than writing 100+ new one-line descriptions of dead-end exploration scripts
(which would add noise, not clarity), `docs/09_Evidence.md` now says explicitly, for each
directory, how many files exist, which ones are the load-bearing/cited ones, and that the
remainder are exploratory/supporting material safe to read but not individually described. This
replaces an implicit (and false) impression of exhaustive coverage with an accurate one.

### D — Duplicate content (verified byte-for-byte via `md5sum`; **nothing deleted**, per steering)

| ID | Duplicate | Where kept |
|----|-----------|-----------|
| D1 | 5 JSON files in `artifacts/decompiled/native-deep/dynamic-live/captures/` are byte-identical to 5 files in `evidence/network-diagnosis-logs/` | Both locations, cross-referenced in `docs/09_Evidence.md` and `REPOSITORY_TREE.md` |
| D2 | 8 Python runner scripts in `dynamic-live/runners/` are byte-identical to 8 scripts in `scripts/network-diagnosis/` | Both locations, same cross-reference |
| D3 | 2 Frida agent `.js` files in `dynamic-live/agents/` are byte-identical to copies in `scripts/network-diagnosis/` | Both locations, same cross-reference |
| D4 | Inside `scripts/network-diagnosis-extra/kiro_sandbox/`, 5 Python scripts + 1 shell script duplicate siblings at the parent level, and 2 more duplicate `scripts/network-diagnosis-extra/sandbox/`. The other ~24 files in `kiro_sandbox/` are unique (not duplicated anywhere). | All kept; noted in `docs/09_Evidence.md` and `REPOSITORY_TREE.md` |
| D5 | `evidence/screenshots/screen9_entrykey.png` and `screen10_account.png` are byte-identical (a capture-timing duplicate from the original session) | Both kept — harmless, no action needed beyond noting it here |

None of these were deleted or merged. Each is now explicitly acknowledged in the navigation docs
so a reader understands *why* the same bytes appear twice, instead of wondering if it's a mistake.

### E — The one deletion (with required explanation, per steering)

| ID | What | Why it qualifies as "genuinely temporary/zero-value" | What was done |
|----|------|-------------------------------------------------------|----------------|
| E1 | `artifacts/decompiled/native-deep/dynamic-live/agents/node_modules/` — 804 files, 77 MB | Standard npm dependency tree (`frida-compile`, `frida-java-bridge`) for the TypeScript agents in that folder. Fully and exactly reproducible with `npm install` from the still-present `package.json`/`package-lock.json`. Contains zero unique analysis, findings, or evidence — it is third-party library source code, not research output. Was never referenced by any doc, script, or finding anywhere in the repository (verified by full-text search before deletion). | Deleted, with a note file (`REMOVED_NODE_MODULES.md`) left in its place explaining exactly what was removed, why, and the one-line restore command. Added `.gitignore` so this cannot silently reoccur. |

This is the **only** file removal in this audit. Every other historical script, capture, log,
screenshot, and archived report — including ones superseded by later findings — remains in the
repository, exactly as the steering required.

### F — Numeric/label inconsistencies

| ID | Issue | Fix |
|----|-------|-----|
| F1 | "15 screenshots" was stated in `docs/07_Runtime.md`, `ROADMAP.md`, and `EVIDENCE_MATRIX.md` (F‑13), but the folder actually has **17** files — the discrepancy was exactly the two orphaned files from B1. | Corrected to "17" in all three locations, with the two extra files now named. |

### G — Navigation reachability (`MASTER_INDEX.md` design check)

`MASTER_INDEX.md` links only to `docs/00–11` and the 6 root cross-cutting documents; it does not
link directly to `artifacts/`, `evidence/`, `scripts/`, or `archive/`. This was checked and found
to be an intentional, working design — those folders are reachable via `docs/09_Evidence.md` and
`REPOSITORY_TREE.md`, both of which are one click from `MASTER_INDEX.md`. **No dead ends were
found**: every real folder in the repository is reachable within two hops from
`MASTER_INDEX.md`. No structural change was made here.

---

## 3. What was fixed (file-by-file change list)

| File | Change |
|------|--------|
| `EVIDENCE_MATRIX.md` | Fixed P‑01 path; added external-dump caveat to D‑01; fixed F‑13 screenshot count |
| `docs/09_Evidence.md` | Screenshot count + citation; network-pcaps-extra date fix; linked path_proof trials, RESULTS_MATRIX, KEY_EXTRACTION_FINDINGS; added static-max/strings rows; added external-dump caveat; added duplicate-content note; corrected script-directory counts and coverage language |
| `docs/07_Runtime.md` | Screenshot count 15→17 |
| `docs/02_Static_Analysis.md` | Added angr/`static-max/` row and `strings/` row to the tooling table |
| `docs/03_Dynamic_Analysis.md` | Added scanner-methodology links + external-dump reproducibility caveat |
| `docs/04_Crypto.md` | Added independent angr cross-check note |
| `docs/06_Activation.md` | Cited the two `000503`-test screenshots; added angr cross-verification note |
| `UNKNOWNS.md` | Cited `device_evidence.txt` as the source of the tested android_id value |
| `ROADMAP.md` | Screenshot count 15→17 |
| `REPOSITORY_TREE.md` | Fixed network-pcaps-extra date label; documented `static-max/`, `strings/`, `dynamic-live/` duplication and node_modules removal; corrected script-directory counts |
| `archive/2026-07-12_working-notes/PATH_PROOF.md` | Added pointer to its own raw evidence JSON files |
| `.gitignore` *(new)* | Prevents `node_modules`/`__pycache__`/`.venv` from being committed again |
| `artifacts/decompiled/native-deep/dynamic-live/agents/REMOVED_NODE_MODULES.md` *(new)* | Explains the one deletion, with restore instructions |
| `artifacts/decompiled/native-deep/dynamic-live/agents/node_modules/` | **Deleted** (804 files, 77 MB) — see E1 above |
| `FINAL_REPOSITORY_AUDIT.md` *(this file)* | New |

**Verification performed after all fixes:** re-ran an automated markdown-link checker across the
**entire tree — all 63 tracked `.md` files** (`docs/`, root, `archive/`, `artifacts/`, `.kiro/`),
70 internal links — **0 broken links**. (An earlier pass only covered `docs/`+root+`archive/`;
the full-tree scan additionally caught and fixed two 6-level `../` links in
`artifacts/.../agents/REMOVED_NODE_MODULES.md`.) File-count claims were re-checked against the
working tree: `beacon-crypto/` = 71, `memory-scanners/` = 8, `network-diagnosis*/` = 146
(93 + 53), `java-jadx/` = 3086, screenshots = 17 — all now consistent across every doc.

---

## 4. What remains open (real unknowns — not audit debt)

These are **not** documentation problems; they are genuine open research questions, already
tracked in `UNKNOWNS.md` and `docs/10_Open_Questions.md`, and this audit did not attempt to
resolve them (that would be new analysis, out of scope for a repository audit):

- ❓ The exact Entry-Key key-derivation and comparison algorithm (U‑01)
- ❓ Whether a valid Entry Key can be forged (U‑02) — ⬜ not attempted successfully
- ❓ Derivation of the stable device token `751fb123…` (U‑03)
- ❓ Meaning of the beacon response's fixed markers and server-varying fields (U‑04)
- ❓ Whether the beacon has deferred/backend validation of `z` (U‑05)
- 🟨 Full seller REST API schema (U‑06) — no credentials
- ⬜ In-game cheat behaviour (U‑07) — no target game installed

No new evidence was generated in this audit that changes the status of any of these.

## 5. Is any part of the project undocumented?

**No area is now completely undocumented.** Before this audit, `artifacts/decompiled/native-deep/static-max/`
and `native-deep/strings/` had no coverage in `docs/`; both are now referenced from `docs/02` and
`docs/09`. Every other top-level folder (`artifacts/`, `evidence/`, `scripts/`, `archive/`) already
had at least directory-level documentation from the prior refactor, and this audit added
file-level detail where it was missing (see §2, item B and C above).

The one remaining honest gap is **not a documentation gap but a data-availability one**: the 2.6 GB
raw memory dumps referenced by the memory-scanner work are not in this repository (too large for
git) and exist only via a regeneration recipe. This is now explicitly flagged wherever that
evidence is cited (§2, A2) rather than silently assumed.

## 6. Are there files unreachable from MASTER_INDEX.md?

**No.** Verified: `MASTER_INDEX.md` → `docs/09_Evidence.md` and `REPOSITORY_TREE.md` → every
top-level folder (`artifacts/`, `evidence/`, `scripts/`, `archive/`) and every notable subfolder
within them, including the two previously-unmentioned ones (`static-max/`, `strings/`), which are
now listed. `archive/README.md` remains the entry point into archived material and is linked from
`REPOSITORY_TREE.md` and `MASTER_INDEX.md`.

## 7. Are there results in the repository that don't appear in the project map?

**No, after the fixes in §2.** Before this audit, two evidence items existed with no
representation anywhere in the documentation layer (B1's screenshots — direct visual proof of a
described-but-uncited experiment) and two static-analysis result sets existed with no
representation at all (B5's `static-max/` and `strings/`). All four are now represented. The
duplicate-content items (D1–D5) were never "missing" from the map — they were just present twice
without an explanation, which is now provided.

---

## Bottom line

This audit found and fixed **real, verifiable inaccuracies**: one wrong file path, one wrong date
label, two data-availability caveats that were previously implicit, five sets of duplicate files
that were unexplained (now explained, all kept), five pieces of orphaned evidence (now cited), two
undocumented result sets (now documented), and one genuinely valueless build artifact (now removed
with a paper trail). None of this changes any technical conclusion in `docs/00–11` — the beacon and
crypto findings stand as previously reported, and the Entry-Key/activation question remains
correctly marked as unresolved. What changed is that every claim in this repository can now be
traced to a real, correctly-labeled file, and every real file is reachable from
`MASTER_INDEX.md`.

[STEERING steer-47ef6ca9-77db-44ab-9faf-0aa3f54799e6: Applied throughout this audit. Nothing was deleted for being old or superseded — the 5 confirmed sets of duplicate/superseded-looking files (dynamic-live captures/runners/agents vs evidence/scripts, kiro_sandbox vs sibling scripts, duplicate screenshots) were all kept in place and instead cross-referenced/explained in docs/09_Evidence.md and REPOSITORY_TREE.md. The single deletion (node_modules/, a 77MB npm dependency tree with zero analytical content, fully reproducible via `npm install`, never referenced by any doc) was made only after confirming it holds no unique research value, and a REMOVED_NODE_MODULES.md note with restore instructions was left in its place so the removal is documented rather than silent.]
