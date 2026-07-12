# 10 — Open Questions

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Full detail (with "what is needed to resolve") is in [`../UNKNOWNS.md`](../UNKNOWNS.md). This is
the prioritized summary.

---

| # | Question | Status | Blocker |
|---|----------|--------|---------|
| Q1 | Exact Entry-Key key-derivation + comparison algorithm | ❓ Unknown | OLLVM flattening + `.text` anti-tamper prevent clean isolation |
| Q2 | Can a valid Entry Key be forged offline? | ❓ Unknown (⬜ not achieved) | depends on Q1 + Q3; symmetric ⇒ not asymmetric-hard, but inputs unknown |
| Q3 | How is the stable device token `751fb123…` derived? | ❓ Unknown | high entropy; not on disk; not a simple hash of known IDs |
| Q4 | Does the beacon have deferred/backend validation of `z`? | ❓ Unknown | server-side, not observable from client |
| Q5 | Meaning of the response's fixed markers / server-varying fields | ❓ Unknown | need field-level correlation over many samples |
| Q6 | Full seller REST API schema + login flow | 🟨 Partially | no seller credentials |
| Q7 | What does the in-game cheat actually do? | ⬜ Not Started | target games not installed in the emulator |
| Q8 | Is `FUN_0017e148` the actual Entry-Key validator (vs beacon path)? | 🟨 Partially | Stalker did not isolate the validator during Activate |
| Q9 | Is `DAT_009280f8` byte-exactly the decrypted beacon response? | 🟨 Partially | contents observed unstable |

## Honesty markers

- The most important open item (Q1/Q2) is **explicitly not solved**. Understanding the beacon does
  not imply the ability to forge an Entry Key.
- Every "Partially" item above states exactly what is missing to reach "Confirmed".
