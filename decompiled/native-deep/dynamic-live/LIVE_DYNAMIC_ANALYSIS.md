# Live Dynamic Analysis — Defeating the Anti-Tamper & Runtime String Recovery

Live instrumentation of `com.snake` (Snake Engine v2.2.6) running as a **redroid Android 11 (arm64)** container, performed to advance the items that `PROJECT_STATUS.md` marked as *pending behind protection mechanisms*.

Environment: AWS Graviton (aarch64) host, redroid privileged container, `adb root`, `ro.debuggable=1`, SELinux **Disabled**. Frida server `fs01` on `127.0.0.1:47771`; Frida Gadget on `127.0.0.1:27052`.

---

## 1. The protection (empirically characterized)

The OLLVM-obfuscated native engine (`libengine.so`) actively defends against dynamic instrumentation:

| Layer | Behavior | Evidence |
|-------|----------|----------|
| **ptrace detection** | Any ptrace-based tracer kills the app. `frida -f`/spawn and ptrace-attach → `process-terminated` within ~2 s. Even a **bare spawn with no script** dies. | `frida.spawn()` + resume → immediate `DETACHED: process-terminated`; matches `dobby`/inline `svc` ptrace self-checks. |
| **Direct `svc` syscalls** | The engine issues raw `svc #0` for its checks, bypassing libc — so hooking libc `ptrace`/`open`/`read` does **not** intercept them. | Documented in `NATIVE_DEEP_ANALYSIS.md`; confirmed: libc `ptrace` replacement had no effect on spawn death. |
| **Startup-only crypto** | `Native.ilil/djp/chl` and the internal AES run during `JNI_OnLoad` / early init, then cache. No calls during idle UI, navigation, or game-tile taps. | Attach at 6 s + 75 s heavy interaction → 0 calls; confirmed repeatedly. |

**What is NOT detected:** arbitrary injected libraries loaded by the **dynamic linker** (no ptrace). A benign system library (`libjnigraphics.so`) preloaded via `LD_PRELOAD` — and the **Frida Gadget** itself — run fine. The app only self-destructs under *ptrace*, not under linker-level injection.

---

## 2. The bypass that works: Frida Gadget via `wrap.<pkg>` (LD_PRELOAD, no ptrace)

Because the build is `userdebug` (`ro.debuggable=1`) with SELinux disabled, the `wrap.com.snake` property injects an `LD_PRELOAD` at process creation — linker-level, **no ptrace**, so the anti-debug never triggers.

```sh
# 1. Frida Gadget (arm64), renamed to a benign path (avoids naive maps path scans)
#    download: https://github.com/frida/frida/releases  frida-gadget-<ver>-android-arm64.so.xz
adb push libgadget.so   /data/local/tmp/libskia_helper.so
adb push gadget.config  /data/local/tmp/libskia_helper.config.so   # see config below
adb shell chmod 644 /data/local/tmp/libskia_helper*
adb shell chmod 777 /data/local/tmp          # so the app uid can write capture logs here

# 2. Inject at next launch (linker LD_PRELOAD, no ptrace)
adb shell "setprop wrap.com.snake 'LD_PRELOAD=/data/local/tmp/libskia_helper.so'"
adb shell am start -n com.snake/com.Entry
```

**Gadget config gotchas discovered:**
- `on_load: "wait"` **kills the app** — not via anti-tamper, but because the Android ActivityManager start-timeout fires while the gadget blocks the main thread (`start not valid, killing ... failed to attach`). Use `"resume"`.
- For a **connected client** (recommended for Java hooking): `interaction.type = "listen"`, `on_load = "resume"`; then `adb forward tcp:27052 tcp:27052` and connect Frida to `127.0.0.1:27052`.
- For **early native/SSL-only** capture with no client: `interaction.type = "script"` with a raw JS `path`. Installed `Interceptor` hooks fire on the app's own threads and keep working even though the gadget's JS timer loop does not persist in script mode — so write results to a file from inside the hook callbacks (`new File(path,'a')`). The app uid must be able to write the path.

`listen` config used:
```json
{ "interaction": { "type": "listen", "address": "127.0.0.1", "port": 27052, "on_load": "resume" } }
```

---

## 3. Frida 17 + Java bridge

Frida 17 removed the built-in `Java` bridge. It must be bundled:

```sh
npm install frida-compile frida-java-bridge
frida-compile agent_conn.js -o compiled_conn.js   # agent does `import Java from 'frida-java-bridge'`
```

The compiled agent hooks `com.snake.helper.Native` (searching every classloader, since the app uses custom `PathClassLoader`s) and, crucially, **actively calls** the native decryptors to extract the protected string table on demand — no need to race startup.

---

## 4. RESULTS — runtime-decrypted native string table (`Native.ilil`)

By calling `Native.ilil(index)` for the indices the app references (`0xF_AABB_CC` structured keys found in smali), the previously-encrypted native strings were recovered live:

| Index | Decrypted value |
|-------|-----------------|
| `0xf11301` | `id_token` |
| `0xf11501` | `com.miniclip.googleplaygames.Authentication` |
| `0xf11520` | `918010152455-tbk8ajicdmlqntolgea1vtlrc94nip3p.apps.googleusercontent.com` |
| `0xf11521` | `https://snakeengine.com/oauth/google` |
| `0xf21501` | `loginCallback` |
| `0xf31501` | `onLoginResult` |

**Interpretation:** the engine intercepts **Google Play Games / Miniclip authentication** — it hooks `com.miniclip.googleplaygames.Authentication`, drives a Google OAuth flow (client id `918010152455-...`, scope tokens via `id_token`) against `https://snakeengine.com/oauth/google`, and injects `loginCallback` / `onLoginResult` into the target game. This is the account/entitlement side of the cheat engine.

> Note: `ilil` indices outside the app's referenced set return empty; some arbitrary indices cause a **native SIGSEGV** (uncatchable in JS), so only enumerate the structured groups actually referenced in code. The sweeper auto-reconnects after such crashes.

---

## 5. Crypto architecture — correction to the static hypothesis

The static docs hypothesized the AES at `FUN_00160208` (KDF `FUN_00161788`) as *the* cipher. Live tracing shows:

- **`Native.ilil` / `Native.djp` string/byte decryption does NOT route through `FUN_00160208`/`FUN_00161788`.** Calling `ilil` returned correct plaintext while the AES/KDF hooks fired **zero** times.
- `FUN_00160208` (AES) is only invoked from `FUN_0017e148` and `FUN_00189774`. `FUN_00189774(obj, input)` reads its KDF seeds from **object fields** (`obj+0x3a0`, `obj+0x3a8`) and decrypts `input` into global `DAT_009280f8` — i.e. this is the engine's **internal game-data / patch decryptor**, exercised only when a **target game is actually loaded** into the virtualization container. With no target game installed (all three show ⚠️), this path never runs.
- The **network payload** (`encryptedData`) is encrypted in the **Dart layer (pointycastle)**, not in `libengine`. Live: `getaddrinfo("snakeseller.com")` fires at startup; the HTTPS connection is established in the first ~2 s and reused (no new requests from UI navigation).

**Net:** `seed1/seed2 + ciphertext` for `FUN_00160208` remain uncaptured **only because their trigger (a launched target game) is absent**, not because of the protection — the protection is fully bypassed.

---

## 6. Reproduce

```sh
# device already has fs01 (frida-server) on 47771 and the gadget staged as libskia_helper.so
python3 run_conn.py       # launch, connect to gadget @27052, install hooks, active-dump strings
python3 run_sweep2.py     # resilient sweep of structured index groups (auto-reconnect on native crash)
```
See `agent_conn.js` (connected-client agent: native AES/KDF + decryptor + SSL + Java `Native` hooks + `dump`/`dumpList` rpc), `ssl_agent.js` (early script-mode SSL capturer), and the `run_*.py` runners.

## 7. Remaining / to finish the AES-seed capture
1. Install one target game (e.g. 8 Ball Pool) **and** have an active subscription so the engine loads it into the container → `FUN_0017e148`/`FUN_00189774`→`FUN_00160208` fire → the live `aes_in/aes_out/kdf` hooks capture `seed1/seed2 + ciphertext + plaintext` automatically.
2. For the Dart network payload: hook the Dart AOT HTTP send (offsets via Blutter in `dart-blutter/`) rather than BoringSSL — Flutter's TLS write does not surface through the exported `SSL_write` here.
