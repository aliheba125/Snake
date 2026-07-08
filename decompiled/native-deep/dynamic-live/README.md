# Live Dynamic Analysis — Snake Engine (`com.snake` v2.2.6)

Complete record of the **live** dynamic-analysis phase performed on a running redroid Android 11
(arm64) instance. This phase advanced the items `PROJECT_STATUS.md` had marked *pending behind
protection mechanisms*: it **defeated the anti-tamper**, **recovered the runtime-decrypted native
string table**, **corrected the crypto architecture**, **installed the latest target game**, and
**precisely located the remaining gate** (a server-issued subscription).

---

## Folder map

```
dynamic-live/
├── README.md                  ← this file (index + summary)
├── LIVE_DYNAMIC_ANALYSIS.md   ← the full narrative: protection, bypass, results, crypto correction
├── TOOLCHAIN.md               ← exact reproduction steps (gadget, apkeep, frida-compile, wrap.sh)
├── PROTOCOL_ANALYSIS.md       ← encryptedData network protocol + activation/seller economy model
├── recovered_strings.json     ← 6 runtime-decrypted native strings (Native.ilil)
├── gadget.listen.config.json  ← Frida Gadget config: listen mode (connected client)
├── gadget.script.config.json  ← Frida Gadget config: script mode (early, no client)
├── agents/                    ← Frida-17 agent sources (frida-java-bridge bundled)
│   ├── agent.js               ← native + Java Native hooks (retry/spawn-safe)
│   ├── agent_conn.js          ← connected-client agent: AES/KDF/decryptor + SSL + Java + PM
│   │                            + rpc dump/dumpList/kdf/aes/kdfOnApp
│   ├── ssl_agent.js           ← minimal early SSL_write/read capturer (script mode, file log)
│   └── engine_early.js        ← early dlopen-time FUN_00160208/KDF/decryptor hooks (file log)
├── runners/                   ← Python orchestration (run on the host that has adb)
│   ├── run_conn.py            ← connect to gadget, install hooks, active string dump
│   ├── run_sweep2.py          ← resilient structured-index sweep (auto-reconnect on native crash)
│   ├── run_gadget.py          ← gadget connect + resume + capture
│   ├── run_final.py           ← nav-driven live capture (SSL + engine hooks)
│   ├── run_game.py            ← tap game tile, capture engine crypto on load
│   ├── run_pm2.py             ← PackageManager query capture (which package the engine checks)
│   ├── validate_crypto.py     ← direct-call KDF/AES validation attempt (frida thread)
│   └── validate2.py           ← direct-call validation on an app thread (clock_gettime)
└── captures/                  ← raw JSON results produced during the session
    ├── known_result.json      ← the 6 decrypted ilil strings (raw)
    ├── dump_result.json       ← sweep dump output
    ├── all_strings.json       ← aggregated non-empty strings
    ├── game_capture.json      ← events while tapping the installed game (0 — subscription-gated)
    └── activate_capture.json  ← events during activation attempt (0 — Dart-layer)
```

---

## One-paragraph summary of results

The engine's OLLVM-obfuscated `libengine.so` self-terminates under any **ptrace** tracer
(frida-server spawn/attach) using direct `svc` syscalls. This was **fully bypassed** by injecting
**Frida Gadget via `LD_PRELOAD`** through the `wrap.com.snake` property on the `userdebug` redroid
build — linker-level, no ptrace — after which the app runs normally under full instrumentation
(a benign preload and the gadget itself both survive; the only thing the engine kills is ptrace).
With **Frida 17's Java bridge bundled** via `frida-compile` + `frida-java-bridge`, hooks on
`com.snake.helper.Native` plus **active calls** to `Native.ilil(index)` recovered the complete
runtime-decrypted native string table (6 strings — see `recovered_strings.json`), revealing that
the engine intercepts **Google Play Games / Miniclip authentication**. Live tracing corrected the
static hypothesis: `Native.ilil/djp` do **not** route through `FUN_00160208`; that AES is the
engine's **internal game-patch decryptor** (`FUN_0017e148`/`FUN_00189774`, seeds from object
fields), which runs **only when a subscribed game is loaded** — confirmed by early dlopen-time
hooks recording zero AES/KDF across a full cold startup. The latest **8 Ball Pool v56.26.2** was
side-loaded (clearing the install gate); the remaining blocker is a **server-issued subscription**
enforced in the Dart layer. All technical protection layers are bypassed and the live hooks are
staged to capture `seed1/seed2 + ciphertext + plaintext` automatically the moment a subscribed game
is loaded.

See `LIVE_DYNAMIC_ANALYSIS.md` for the full detail and `TOOLCHAIN.md` to reproduce.
