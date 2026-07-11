# Snake Engine — Live Validation on Redroid 14 / EC2 Graviton (session 2026-07-11)

Independent reproduction and validation of the prior Snake Engine analysis on a **fresh
environment** (Redroid Android 14, ARM64, AWS Graviton `m9g.2xlarge`). This document records
only what was **directly observed** this session, separating proven facts from hypotheses.

> Scope note: this is a runtime-behavior validation. It confirms/extends the existing
> `native-deep/dynamic-live/` analysis. No new secret material was extracted; the terminal
> blocker (a server-issued subscription) is unchanged.

---

## 1. Environment (all PASS)

| Component | Value |
|-----------|-------|
| Host | EC2 `i-03132b9c284ac092c`, `m9g.2xlarge`, ARM Neoverse-V3 8 vCPU / 30 GB |
| OS | Ubuntu 24.04.4 LTS, kernel `6.17.0-1017-aws` aarch64 |
| Container | `redroid/redroid:14.0.0_64only-latest` (Android 14, `arm64-v8a`) |
| Binder | `binder_linux.ko` (from `linux-modules-extra`) + binderfs devices via `BINDER_CTL_ADD` ioctl, `chmod 666` |
| Tooling | Docker 29.6.1, ADB 34.0.4, Frida 17.15.4 (server as root), friTap 2.2.5, radare2 5.5.0 |
| App | `com.snake` v2.2.6, SHA-256 `f847608605ea1da9a7452f2072ee59e4dc26a900ca2aad0315c967c9c896d561` |

**Why `_64only`:** the regular `14.0.0` image fails on Graviton because the kernel lacks 32-bit
ARM `binfmt` support (`boringssl_self_test32` → `Exec format error`). The APK is `arm64-v8a`-only,
so 64-only is the correct match.

---

## 2. Process & module facts (Frida attach — stable)

- Two processes: `com.snake` (UI/Flutter/network) and `com.snake:engine` (DaemonService,
  `SystemCallProvider` IPC). 61 threads in main (Flutter `1.ui`/`1.raster`×8/`1.io`, Dart
  `Thread<00..07>`, Firebase, OkHttp, plus an unusual `TAG` thread).
- Native libs (main process base addrs vary per launch; ASLR): `libengine.so` (8.23 MB, only
  `JNI_OnLoad` exported + 16 C++ vtables), `libflutter.so` (10.45 MB), `libapp.so` (5.38 MB,
  Dart snapshot symbols only).
- `libengine.so` `JNI_OnLoad` at file offset `0x F3FA0`.

## 3. Backend channel (live, measured)

- Endpoint `https://rest.snakeseller.com/api/request/` → resolves `92.205.103.45`.
- Server cert (captured live from the TLS handshake bytes): subject `cpanel.snakeseller.com`,
  issuer **Let's Encrypt → ISRG Root YR**, validity 2026-05-30 … 2026-08-28. This is ordinary
  **cPanel hosting** (not the Cloud Run endpoint named in older docs).
- Startup pattern (close-tracked, false-positives from fd-reuse eliminated):
  **4 parallel TLS connections** opened at ≈ +100 ms, all closed by ≈ +940 ms; reconnects at
  ≈ +5 s and ≈ +10 s. Totals: **≈ 3 KB uploaded / ≈ 2.26 MB downloaded**.
- **The app is network-silent after startup:** 0 new connections across 45 s of full UI
  interaction. All backend traffic is one-shot at launch.

## 4. Split TLS stacks (proven)

| Channel | TLS stack | Observability |
|---------|-----------|---------------|
| Firebase / `app-measurement.com` | **system `libssl.so`** (BoringSSL) | friTap decrypts cleanly (keylog + plaintext pcap) |
| Backend `rest.snakeseller.com` | **BoringSSL statically linked & stripped inside `libflutter.so`** | not captured via system libssl; friTap's libflutter pattern did not match this build |

`libflutter.so` is stripped (only `.dynsym`, 44 syms, 0 SSL exports) but BoringSSL source paths
are present in `.rodata` (`s3_pkt.cc`, `ssl_aead_ctx.cc`, `handshake_client.cc`, …), confirming
the bundled stack.

## 5. Anti-instrumentation (reproduced)

- **Frida `spawn` → process dies at ≈ 0.4 s**, before `libengine.so` even loads. Benign control
  apps (`com.android.settings`, `deskclock`) survive `spawn` → the behavior is **app-specific**.
- **Frida `attach` after boot is stable** (35 s+ with 6 simultaneous libc/SSL hooks, no kill).
  Interpretation consistent with a **startup-time ptrace/self-check** that is not re-run once the
  process is past init.
- **Frida Gadget via `wrap.com.snake` LD_PRELOAD**: the wrapper loads (`WrapperInit`,
  "Wrapped process"), but the app then **SIGSEGVs (signal 11) during init** — both from
  `/data/local/tmp` and from `/system/lib64/libskia_helper.so` (benign name). Frida 17 gadget's
  runtime is detected on this app/build. Removing the `wrap` property restores normal operation,
  confirming the gadget as the cause.

## 6. Two encryption layers — where the data actually is

```
Layer 1  TLS               → BoringSSL inside libflutter.so (stripped)
Layer 2  application crypto → Dart / pointycastle (network payload `encryptedData`)
                            → libengine.so AES-256 (FUN_00160208, key = SHA-256(xorshift PRNG),
                              KDF FUN_00161788) ONLY for in-container game-data, and ONLY when a
                              subscribed target game is loaded.
```

Confirmed against the prior `native-deep/dynamic-live/` analysis: the **network** payload is
encrypted in the **Dart layer (pointycastle)**, not in `libengine`. `libengine`'s KDF/AES fire
**only on real game load with an active subscription** — never in idle/browsing (0 calls
observed). Hooks install fine in attach mode (no integrity-kill there).

## 7. Bottom line

All technical protections are understood and (per prior work) bypassable. The **only remaining
gate for both layers is a server-issued active subscription**: without it the app performs its
one-shot startup exchange and goes idle, and the game-load crypto path never executes. This is a
business/account gate, not a technical one.

### New this session
Fresh-environment (Redroid 14) reproduction; live backend metrics + certificate chain; proven
Firebase-vs-backend TLS-stack split; reproduction of the spawn/gadget anti-tamper on Frida 17;
recovery procedure for a host wedged by Frida `spawn-gating` (EC2 power-cycle).

### Operational caution
Do **not** use Frida `enable_spawn_gating` against this device: it suspends all device process
spawns and saturated the host CPU, requiring an EC2 stop/start (which changes the public IP).
