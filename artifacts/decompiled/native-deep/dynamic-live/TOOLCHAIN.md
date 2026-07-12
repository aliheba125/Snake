# Toolchain & Reproduction

Every tool, command, and technique used in the live phase, in order. Two hosts are involved:
- **Analyst host** (open internet): downloads, `frida-compile`, `apkeep`.
- **adb host** (has `adb` to the redroid device; here the EC2 box): runs the Frida orchestration.

Device facts that make this work: `adb root`, `ro.debuggable=1` (userdebug), **SELinux Disabled**,
arm64-v8a / SDK 30. Frida server `fs01` listens on `127.0.0.1:47771`; Gadget on `127.0.0.1:27052`.

---

## 1. Environment prerequisites

```sh
# Frida (device already had frida-server 17.15.4 running as fs01 on 47771)
pip install frida-tools            # 17.x, matches the gadget version below

# Node for bundling the Frida-17 Java bridge
npm install frida-compile frida-java-bridge

# apkeep for pulling APKs (x86_64 prebuilt from EFForg/apkeep releases)
curl -sL https://github.com/EFForg/apkeep/releases/latest/download/apkeep-x86_64-unknown-linux-gnu -o apkeep
chmod +x apkeep
```

## 2. Frida Gadget (LD_PRELOAD injection — bypasses ptrace anti-tamper)

```sh
# match the gadget version to frida-server (17.15.4 here)
curl -L https://github.com/frida/frida/releases/download/17.15.4/frida-gadget-17.15.4-android-arm64.so.xz -o gadget.so.xz
python3 -c "import lzma;open('libgadget.so','wb').write(lzma.open('gadget.so.xz').read())"

# rename to a benign path (avoids naive maps path scans); push to device
adb push libgadget.so             /data/local/tmp/libskia_helper.so
adb push gadget.listen.config.json /data/local/tmp/libskia_helper.config.so   # config file = <lib>.config.so
adb shell chmod 644 /data/local/tmp/libskia_helper*
adb shell chmod 777 /data/local/tmp        # so the app uid (u0_aNNN) can write capture logs here

# inject at next launch via wrap.<pkg> (linker LD_PRELOAD, NO ptrace)
adb shell "setprop wrap.com.snake 'LD_PRELOAD=/data/local/tmp/libskia_helper.so'"
adb shell am start -n com.snake/com.Entry
# to disable instrumentation again:  adb shell setprop wrap.com.snake ""
```

Gadget config choices (both provided in this folder):
- `gadget.listen.config.json` → `type:listen, on_load:resume` — app runs normally; connect a
  Frida client to `127.0.0.1:27052` (via `adb forward tcp:27052 tcp:27052`). **Use this for Java hooks.**
- `gadget.script.config.json` → `type:script, path:<agent.js>` — loads a raw JS agent at gadget
  load (very early, before app code); no client, so agents write results to a file. Installed
  `Interceptor` hooks fire on app threads and persist even though the script-mode JS timer loop
  does not.
- **Do NOT use `on_load:wait`** — it blocks the main thread and the Android ActivityManager kills
  the process with a start-timeout (looks like anti-tamper but is not).

## 3. Frida-17 agent (Java bridge must be bundled)

Frida 17 removed the built-in `Java` bridge. Agents `import Java from 'frida-java-bridge'` and are
compiled to a single file:

```sh
frida-compile agents/agent_conn.js -o compiled_conn.js
adb push compiled_conn.js /data/local/tmp/compiled_conn.js   # or load via runner
```

## 4. Connect + install hooks + active string extraction

```sh
adb forward tcp:27052 tcp:27052
python3 runners/run_conn.py       # attaches to gadget, calls rpc.init(), active-dumps ilil strings
python3 runners/run_sweep2.py     # resilient sweep of structured index groups (0xFA_BB_CC)
```
`agent_conn.js` rpc surface:
- `init()` → installs native (FUN_00160208/FUN_00161788/FUN_0017e148/FUN_00189774) + SSL + Java
  `Native.ilil/djp/chl` + PackageManager hooks.
- `dump(start,end,callDjp)` / `dumpList(indices,callDjp)` → **actively call** the decryptors and
  return plaintext (this is how the string table was recovered).
- `kdf/aes/kdfOnApp` → direct-call validation attempts (see §7).

## 5. Install the target game (clears the install gate)

```sh
./apkeep -a com.miniclip.eightballpool -d apk-pure ./dl     # pulls latest XAPK
python3 -c "import zipfile;z=zipfile.ZipFile('dl/com.miniclip.eightballpool.xapk');\
z.extract('com.miniclip.eightballpool.apk','.');z.extract('config.arm64_v8a.apk','.')"
adb install-multiple -r com.miniclip.eightballpool.apk config.arm64_v8a.apk
# v56.26.2 (versionCode 3990), min_sdk 23, target 35 — arm64-v8a. Install check now passes.
```

## 6. Capture engine crypto on game load (once a subscription exists)

```sh
adb shell setprop wrap.com.snake 'LD_PRELOAD=/data/local/tmp/libskia_helper.so'   # listen config
python3 runners/run_game.py       # connects, installs hooks, taps the game tile,
                                   # logs aes_in/aes_out/kdf/FUN_0017e148/FUN_00189774
```
Without a subscription the dialog is *"no active subscription for this game"* and the engine never
loads the game, so these hooks stay quiet (see `captures/game_capture.json`). With a subscription
the same run captures `seed1/seed2 + ciphertext + plaintext` automatically.

## 7. Direct-call crypto validation (blocked — documented)

`runners/validate_crypto.py` and `validate2.py` invoke the live `FUN_00161788`/`FUN_00160208`
through `NativeFunction` with test vectors to empirically validate `../static-max/crypto_scheme.py`.
Both crash with a consistent access violation inside the engine's obfuscated custom allocator
(`FUN_00900270`) — even when run on a genuine app thread via a `clock_gettime` interceptor. These
routines depend on engine-internal singleton/allocator state only valid within the app's own call
chain, so they are not safely callable out of context. `crypto_scheme.py` therefore remains
algorithmically derived, not live-binary-verified.
