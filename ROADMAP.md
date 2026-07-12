# ROADMAP — Progress by Axis

> Status: ✅ Confirmed · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

Realistic progress per axis. Percentages reflect **evidence-backed completion**, not effort.

---

## Progress table

| Axis | Progress | Status | Notes |
|------|----------|--------|-------|
| APK / resource analysis | ~100% | ✅ | jadx + apktool complete; manifest, assets, smali |
| `libengine.so` static RE | ~90% | ✅ | ~2241/2283 functions decompiled; crypto path fully mapped; OLLVM giants unread |
| `libapp.so` (Dart) analysis | ~60% | 🟨 | Blutter output present; symbol names obfuscated; UI logic inferred not fully read |
| Beacon protocol (uplink `z`) | ~100% | ✅ | structure + cipher + key + plaintext reproduced offline |
| Beacon protocol (downlink) | ~90% | ✅ | server processing proven; reply decrypted; field meanings ❓ |
| Crypto (beacon) | ~100% | ✅ | AES‑256‑ECB + time-bucket key, byte-for-byte reproduced |
| Server behaviour (beacon endpoint) | ~85% | ✅ | ingress fully characterized; backend/deferred validation ❓ |
| Runtime behaviour / anti-tamper | ~90% | ✅ | UI, network, storage, FFI, watchdog all characterized |
| Activation model (Entry Key) | ~60% | 🟨 | model + locality + symmetry confirmed; algorithm ❓ |
| Activation algorithm (KDF/compare) | ~15% | ❓ | patterns found; validator not isolated; no forge |
| Entry-Key forgery / activation bypass | 0% | ⬜ | not achieved; explicitly not demonstrated |
| Seller REST API | ~10% | 🟨 | endpoint + auth-required known; schema unknown (no creds) |
| In-game cheat / virtualization (live) | ~20% | 🟨 | static/emulation evidence; not run live (no target game) |

## Overall

- **Beacon + crypto reverse-engineering:** ✅ essentially complete and independently reproducible.
- **Application understanding:** 🟨 high, but Dart-layer logic and the in-game engine are partial.
- **Activation system:** 🟨 model understood; ❓ algorithm undetermined; ⬜ no forge/bypass.
- **Business/server control:** 🔴 not achieved and not attempted beyond confirming auth is required.

## Milestones — done vs remaining

### Done ✅
- [x] Full static decompilation (native/Java/Dart/resources)
- [x] Live instrumentation that survives anti-tamper (Gadget + libc/Stalker methods)
- [x] `z` structure, cipher, key derivation — reproduced offline
- [x] Server challenge/response proven (both directions)
- [x] Server ingress behaviour characterized; no transport protections
- [x] App UI flow + network + storage + FFI mapped (15 screenshots)
- [x] Activation is local + symmetric; device token identified
- [x] Repository consolidated into a single source of truth (this refactor)

### Remaining ⬜ / ❓ (ordered — see [docs/11_Next_Steps.md](docs/11_Next_Steps.md))
- [ ] Isolate the Entry-Key validator precisely (Stalker on UI thread)
- [ ] Recover the device-token derivation
- [ ] Determine Entry-Key KDF + comparison → decide forgeability
- [ ] Decode response record field semantics
- [ ] (Access-gated) seller REST API schema; in-game engine live

## Honest framing of "how far along"

Understanding **how the system works** is far advanced (beacon/crypto ✅). The ability to
**defeat activation or generate valid keys** is **not** achieved (⬜) and its feasibility is
**undetermined** (❓). These are different milestones; this roadmap keeps them separate on
purpose.
