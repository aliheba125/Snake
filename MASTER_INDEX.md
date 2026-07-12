# MASTER INDEX — Snake Engine Reverse-Engineering Study

> **Start here.** This repository is the single source of truth for the analysis of
> **Snake Engine** (`com.snake` v2.2.6). Read the numbered docs in order; every claim carries an
> explicit confidence status and links to raw evidence.

**Status legend (used everywhere):**
✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

---

## Reading order (front to back)

| # | Document | What you learn | Status of the area |
|---|----------|----------------|--------------------|
| 00 | [docs/00_Project_Overview.md](docs/00_Project_Overview.md) | What the app is, headline results, what was NOT achieved | — |
| 01 | [docs/01_Architecture.md](docs/01_Architecture.md) | Components, two-tier trust model, data-flow | ✅ |
| 02 | [docs/02_Static_Analysis.md](docs/02_Static_Analysis.md) | Decompilation, key functions/globals, crypto census | ✅ |
| 03 | [docs/03_Dynamic_Analysis.md](docs/03_Dynamic_Analysis.md) | Live environment, capture techniques, what survives anti-tamper | ✅ |
| 04 | [docs/04_Crypto.md](docs/04_Crypto.md) | The z cipher, master-key derivation, response cipher | ✅ |
| 05 | [docs/05_Beacon_Protocol.md](docs/05_Beacon_Protocol.md) | Request/response, server processing proof, validation behaviour | ✅ |
| 06 | [docs/06_Activation.md](docs/06_Activation.md) | Entry-Key model, what's confirmed, what failed | 🟨 / ❓ |
| 07 | [docs/07_Runtime.md](docs/07_Runtime.md) | UI flow, network, storage, FFI, anti-tamper | ✅ |
| 08 | [docs/08_Findings.md](docs/08_Findings.md) | Master list of all conclusions with status | mixed |
| 09 | [docs/09_Evidence.md](docs/09_Evidence.md) | Index of raw evidence + reproduction scripts | — |
| 10 | [docs/10_Open_Questions.md](docs/10_Open_Questions.md) | Prioritized open questions | ❓ |
| 11 | [docs/11_Next_Steps.md](docs/11_Next_Steps.md) | Ordered plan forward | ⬜ |

## Cross-cutting reference documents

| Document | Purpose |
|----------|---------|
| [KNOWLEDGE_MAP.md](KNOWLEDGE_MAP.md) | How every component relates (app, libengine, libapp, beacon, crypto, activation, runtime, server, Flutter, REST, Firebase) |
| [EVIDENCE_MATRIX.md](EVIDENCE_MATRIX.md) | Every conclusion → its supporting evidence + status |
| [UNKNOWNS.md](UNKNOWNS.md) | Everything not known + what would prove/disprove it |
| [ROADMAP.md](ROADMAP.md) | Completed vs remaining, realistic % per axis |
| [REPOSITORY_TREE.md](REPOSITORY_TREE.md) | Every folder/file explained; why it exists |

## The three-sentence summary

1. The `z` beacon is `0x0c ‖ AES‑256‑ECB(key, plaintext)` where the key is **derived from
   wall-clock time** and was **reproduced offline byte-for-byte**; the server decrypts `z` and
   keys its reply to the nonce+time inside it (challenge/response, both directions reproduced). ✅
2. On-device **activation** (6-digit Entry Key) is validated **locally** with **symmetric** crypto
   (libengine has zero asymmetric primitives), but its exact algorithm is **not** reverse-engineered
   and **no valid key was forged**. ❓ / ⬜
3. The beacon endpoint has **no meaningful transport/authenticity protection**; the real business
   boundary is the separate seller REST API (not accessed). ✅ / 🟨

## Repository layout at a glance

```
├── docs/               ← the authoritative study (00–11) — READ THIS
├── MASTER_INDEX.md     ← you are here
├── KNOWLEDGE_MAP.md · EVIDENCE_MATRIX.md · UNKNOWNS.md · ROADMAP.md · REPOSITORY_TREE.md
├── artifacts/          ← inputs: apk/, native-libs/, decompiled/
├── evidence/           ← raw proof: screenshots, traces, pcaps, logs, samples
├── scripts/            ← tooling: beacon-crypto, memory-scanners, network, frida-agents
└── archive/            ← historical session working-notes (superseded; see docs/ for truth)
```

## How to trust this repo

- Anything marked ✅ has a reproduction script and/or raw evidence file linked in
  [EVIDENCE_MATRIX.md](EVIDENCE_MATRIX.md).
- Anything marked 🟨/❓/⬜ is explicitly incomplete — do not read it as fact.
- The `archive/` folder contains earlier working notes whose conclusions were sometimes
  **disproved**; they are kept for history only. The `docs/` folder overrides them.
