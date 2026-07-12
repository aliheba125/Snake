# Snake Engine — Reverse-Engineering Study

A defensive reverse-engineering study of the Android app **Snake Engine** (`com.snake` v2.2.6),
a Flutter-based commercial game-cheat / enhancement platform.

> **➡️ Start with [MASTER_INDEX.md](MASTER_INDEX.md).** It is the entry point and defines the
> reading order. This repository is organized as a **single source of truth**: every claim carries
> an explicit confidence status and links to raw evidence.

**Status legend:** ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started ·
❓ Unknown · ❌ Disproved

---

## TL;DR (with honest status)

- ✅ The cold-launch **beacon** `z` is `0x0c ‖ AES‑256‑ECB(key, plaintext)`, where the key is
  **derived from wall-clock time** and was **reproduced offline byte-for-byte**. The server
  decrypts `z` and keys its reply to the nonce+time inside it — a challenge/response reproduced in
  **both** directions.
- ✅ The beacon endpoint has **no cert pinning, attestation, IP filter, or authenticity check**.
- ✅ On-device **activation** (6-digit Entry Key) is validated **locally** with **symmetric**
  crypto (libengine has zero asymmetric primitives).
- ❓/⬜ The exact **Entry-Key algorithm** is **not** reverse-engineered and **no valid key was
  forged**. Activation was **not** bypassed. The seller REST API was **not** accessed.

## Navigation

| Doc | Purpose |
|-----|---------|
| [MASTER_INDEX.md](MASTER_INDEX.md) | Entry point + reading order |
| [docs/](docs/) | The study, 00→11 (overview, architecture, static, dynamic, crypto, beacon, activation, runtime, findings, evidence, open questions, next steps) |
| [KNOWLEDGE_MAP.md](KNOWLEDGE_MAP.md) | How all components relate |
| [EVIDENCE_MATRIX.md](EVIDENCE_MATRIX.md) | Conclusion → evidence mapping |
| [UNKNOWNS.md](UNKNOWNS.md) | What we don't know + how to resolve |
| [ROADMAP.md](ROADMAP.md) | Progress per axis |
| [REPOSITORY_TREE.md](REPOSITORY_TREE.md) | Every folder/file explained |

## Layout

```
docs/        authoritative study (READ THIS)
artifacts/   inputs: apk/, native-libs/, decompiled/
evidence/    raw proof: screenshots, traces, pcaps, logs, samples
scripts/     tooling: beacon-crypto, memory-scanners, network, frida-agents
archive/     historical working notes (superseded; docs/ overrides)
```

## Scope & ethics

This is a documentary/defensive analysis of an app that itself facilitates game cheating. It maps
how the system works and where its security actually lies. **No key generator, cracked key, or
server attack was produced.** Items that were attempted and failed are recorded as honest negative
results.
