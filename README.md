# Snake Engine — SE_2.2.6.apk — Full Reverse Engineering Documentation

Raw technical documentation of the decompilation and analysis of `SE_2.2.6.apk`.

---

## Package Metadata

| Field | Value |
|-------|-------|
| Package name | `com.snake` |
| App name | Snake Engine |
| versionName | 2.2.6 |
| APK SHA-256 | `f847608605ea1da9a7452f2072ee59e4dc26a900ca2aad0315c967c9c896d561` |
| minSdkVersion | 28 (Android 9) |
| targetSdkVersion / compileSdkVersion | 35 (Android 15) |
| ABI | `arm64-v8a` only |
| UI framework | Flutter |
| Dart version | 3.5.4 (≈ Flutter 3.24.x) |
| Dart snapshot hash | `80a49c7111088100a233b2ae788e1f48` |
| Build flags | product, arm64, android, compressed-pointers, dwarf_stack_traces, dedup_instructions |
| NDK (native) | r25b / clang 14.0.6 |

---

## APK Contents

```
classes.dex                         Android embedding + AndroidX/Google/Firebase libs
lib/arm64-v8a/libapp.so   (5.4 MB)  Dart AOT compiled app logic
lib/arm64-v8a/libengine.so(8.2 MB)  Native engine (obfuscated)
lib/arm64-v8a/libflutter.so(11 MB)  Flutter engine (Google)
assets/flutter_assets/              Fonts (FontAwesome, slick.ttf), SVG icons
resources.arsc, res/                643 XML, 229 PNG, 15 WEBP
```

Native library SHA-256:
| Library | Size | SHA-256 |
|---------|------|---------|
| libapp.so | 5.4 MB | `2d3577fbaaacc7cb63e5b04a5a21572eeee1e0d55b223941d6a5496a91a427c8` |
| libengine.so | 8.2 MB | `f5d751e6bde8f0595eda9836338e845b029a41d2362743a2a4619ba99f41e3be` |
| libflutter.so | 11 MB | `0baa710d6b7f7de2f8bcc05aa2950bab2989f3a4c95bc7f7bcc23ce84626ee52` |

---

## Architecture

```
com.snake (Snake Engine v2.2.6)
│
├── libapp.so   (Flutter / Dart)  — front-end / management UI
│     Seller panel: Global Seller, Code Sale, Account Manager, Accounts List,
│                   Create Key, Key Details
│     Subscription + device-locked activation: Enter code, Add Device,
│                   Device removed, Enter device id, ban system, Balance, Convert
│     Game Selection, update checker, Facebook login, feeds, notifications
│     Backend: https://rest.snakeseller.com/api/request/
│
└── libengine.so  (Native C/C++, obfuscated)  — engine
      App-virtualization container (loads target game in-process)
      Native inline-hook engine (Java method hooking)
      Runtime code generation into RWX memory
      UID/PID remapping
```

---

## Tools Used

| Purpose | Tool | Version |
|---------|------|---------|
| DEX → Java | jadx | 1.5.1 |
| Resources / manifest / smali | apktool | 2.10.0 |
| Dart AOT (libapp.so) | Blutter | built from source (Dart VM 3.5.4) |
| Native decompilation (libengine.so) | Ghidra | 12.1.2 |
| ELF / disassembly | pyelftools, capstone | — |
| Dynamic emulation | Qiling / Unicorn | 1.4.6 / 2.1.4 |

---

## Repository Layout

```
decompiled/
├── REPORT.md                       Overview report
├── AndroidManifest.xml             Decoded manifest
├── apktool.yml                     Build metadata
├── java-jadx/                      Decompiled Java (2418 classes)
│   ├── com/snake/                  App classes (container + JNI bridge)
│   ├── com/google/                 Firebase / GMS / Material
│   └── io/flutter/                 Flutter embedding
├── dart-blutter/                   Dart analysis
│   ├── asm/                        670 .dart files (pseudo-source + asm per function)
│   ├── pp.txt                      Object pool (all constants / strings)
│   ├── objs.txt                    Pre-initialized objects
│   └── blutter_frida.js            Frida trace script (Dart functions)
├── smali/                          Full Smali (Dalvik bytecode)
├── resources/res/                  Decoded resources
├── assets/flutter_assets/          Flutter assets
├── native-libs/
│   └── native-libs-analysis.txt    ELF symbols / hashes
└── native-deep/
    ├── FINAL_SUMMARY.md            Unified evidence matrix
    ├── NATIVE_DEEP_ANALYSIS.md     Ghidra + ELF findings
    ├── DYNAMIC_ANALYSIS.md         Emulation findings
    ├── runtime-behavior-java.md    Java runtime behavior extracts
    ├── ghidra/
    │   ├── libengine_decompiled.c  2242/2418 functions decompiled to C (5 MB)
    │   ├── JNI_OnLoad.c            Extracted native entry point
    │   └── function_inventory.tsv  All 2418 functions (addr/size/xrefs)
    ├── strings/
    │   ├── strings_libengine.txt   2061 strings
    │   ├── strings_libapp.txt      11727 strings
    │   ├── strings_libflutter.txt  33374 strings
    │   └── strings_classes_dex.txt 29198 strings
    └── emulation/
        ├── emulate_engine.py       Qiling emulation (v1)
        ├── emulate_engine2.py      Qiling emulation (real syscall layer)
        ├── emulation_trace.txt     Run trace v1
        ├── emulation_trace2.txt    Run trace v2
        ├── syscall_enum.py         Static syscall scan (unreliable)
        └── syscall_profile.txt     Static scan output (artifact)
```

---

## Obfuscation / Protection (libengine.so)

- Type: source-level obfuscation (OLLVM-style), compiled with Android NDK r25b/clang14. No commercial packer, no embedded DEX/payload.
- Function count: 2418. Decompiled to C: 2242 (~93%). Not decompiled: 17 constructor functions of ~175 KB each (~6 MB of `.text`).
- Control-flow flattening: giant flattened dispatcher functions, unrecoverable jumptables.
- String encryption: native method names not present as plaintext; decrypted at runtime.
- Inline syscalls: direct `svc #0` (bypasses libc).
- Runtime code generation / self-modifying: writes ARM64 branch opcodes (`| 0x14000000`) into RWX memory.
- Custom `.mytext` section (244 B), 1731 B overlay, 44 `.init_array` constructors, BIND_NOW / full RELRO.
- JNI_OnLoad: 12388 bytes; registers native methods with runtime-decrypted names.

Native methods (from `com/snake/helper/Native.java`): `ac`, `aior`, `awl`, `chl(byte[])→bool`, `djp(int)→byte[]`, `eio`, `i(int)`, `ic(Context)`, `ilil(int)→String`, `pjowqpxe(Object,Object,Object)`, `update(Object,Method)`, `gcuid(int)`.

---

## Runtime Behavior (evidence)

| Behavior | Evidence source |
|----------|-----------------|
| Loads libengine.so at startup | `App.java`: `System.loadLibrary("engine")` |
| Dynamic code loading | custom `PathClassLoader` (`lk1.java`, `fh.java`), `createPackageContext` ×11 |
| Reflection class faking | `fh.loadClass`: `Executable→cz.c`, `MethodHandle→cz.e`, `Class→cz.b` |
| Java method hooking | `Native.update(Object,Method)` + `MethodUtils` |
| UID/PID remapping | `Native.gcuid()` → `Binder.getCallingPid()` |
| Runtime RWX code generation | Ghidra JNI_OnLoad `mmap(prot=7,flags=0x22)`; Qiling observed 37–39× mmap prot=RWX |
| Timing checks | Qiling observed `clock_gettime` ×36 during init |
| Persistence | `DaemonService` re-schedules via AlarmManager |
| Container IPC | `SystemCallProvider.call("VM", …)` |
| Runtime string/data decrypt | `Native.ilil(int)→String`, `djp(int)→byte[]` |
| License/signature check | `Native.chl(byte[])→bool` |

---

## Network / Communication

- Endpoint: `https://rest.snakeseller.com/api/request/`
- Related: `https://www.snakeengine.com/topup/`
- Request fields (Dart layer): `encryptedData`, `deviceId`, `timestamp` — application-layer encrypted payload over HTTPS.
- No `networkSecurityConfig` / `usesCleartextTraffic` attribute in manifest.
- Crypto libraries present in Dart (pointycastle/asn1/crypto): RSA, ECDSA, SHA family, base64, PKCS, AES/GCM/CBC primitives.
- Other referenced hosts: play.google.com, apkpure.com, flagsapi.com, imgur.com, t.me, wa.me, discord.com, facebook.com.

---

## Firebase Configuration (res/values/strings.xml)

| Key | Value |
|-----|-------|
| project_id | `fennec-6d906` |
| gcm_defaultSenderId | `918010152455` |
| google_app_id | `1:918010152455:android:84aea0e9d3230800664ca2` |
| google_api_key | `AIzaSyDitW-Y6M8-R2ejqmAL7yd2jqL9Gj_5ANs` |
| google_storage_bucket | `fennec-6d906.firebasestorage.app` |
| default_web_client_id | `918010152455-ev1pjrrdjvp44r4bjme4ti3khom570eo.apps.googleusercontent.com` |

Firebase services: Messaging, Installations, Analytics/Measurement, Google Sign-In, DataTransport.

---

## Localization

UI strings present in: English, Spanish, Filipino (Tagalog), Malay.

---

## Dynamic Emulation Results (Qiling/Unicorn)

- Environment: no KVM / no hardware virtualization; ARM64-only library.
- Real syscall layer built (mmap allocates, mprotect/etc. succeed, paths logged).
- Constructors: fault at ~94 instructions with zero-filled allocations; enter infinite loops when allocations filled with RET.
- Observed syscalls: `mmap` (prot=RWX) ×39, `clock_gettime` ×36.
- No file/network/exec syscalls reached during the guarded init phase.
- Runtime-decrypted strings not recovered via CPU emulation.

## Static Syscall Scan (unreliable)

Linear disassembly of `.text` produced 25804 `svc` sites resolving to only 2 values — an artifact of self-modifying/obfuscated code and computed syscall numbers. Not a valid behavior profile. Retained in `emulation/syscall_profile.txt` for reference.

---

## Coverage Status

| Item | Status |
|------|--------|
| Java decompilation | Complete (obfuscated names) |
| Resources / manifest / smali | Complete |
| Dart pseudo-source | Complete (obfuscated names) |
| Native → C decompilation | 2242/2418 functions |
| ELF / protection analysis | Complete |
| Dynamic emulation | Partial (anti-emulation wall) |
| Live traffic interception | Not performed |
| Communication payload decryption | Not performed (confirmed encrypted, key/algorithm not extracted) |
| Server-side behavior | Not analyzed |
