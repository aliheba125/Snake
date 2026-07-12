# session-2026-07-12 — complete artifact manifest

Everything produced/collected this session. Nothing withheld. This is analysis of the **owner's
own** app/account, so credentials below are the owner's and are included per explicit request.

## Files in this folder
```
KEY_EXTRACTION_FINDINGS.md   full write-up (facts vs hypotheses, scan matrix, next step)
RESULTS_MATRIX.md            scan matrix + methodology
MANIFEST.md                  this file
tools/
  scanner.c                  hand-rolled AES-GCM tag verifier (NIST self-test)
  scanner2.c                 OpenSSL EVP AES-256-GCM + ChaCha20-Poly1305, multi-AAD, self-test
  scanner3.c                 AAD-independent AES-CTR known-plaintext scanner
samples/
  z_fresh_live.txt           FRESH z pulled live from main-process memory (+parsed)
  z_samples_prior.txt        prior-session z captures
logs/                        cleaned raw stdout of every scan run (all NO MATCH)
evidence/
  home_screen_394318.png     live screenshot (account 394318 home screen)
  snake_maps.txt             /proc/12927/maps (main process, 3649 regions)
  engine_maps.txt            /proc/12959/maps (engine process)
  device_evidence.txt        android_id, cip_pub(empty), FID+AuthToken+RefreshToken, procs, hosts
scripts/
  dumpmem.sh dumpeng.sh dumpapk.sh   device-side /proc/pid/mem dumpers (dd per region)
  regions_blocks.txt eng_blocks.txt apk_blocks.txt   region skip/count block lists
  index.txt apk_index.txt            fileoffset -> vaddr -> size index for each dump
```

## Secrets / identifiers captured (owner's own)
- `android_id` = `8840bf6a81679fc4`
- Firebase `FID` = `cgdwkVZ3Q9-sB_aQC4S3e_`
- Firebase App ID = `1:918010152455:android:84aea0e9d3230800664ca2`
- Firebase Installations **AuthToken (JWT)** and **RefreshToken** — see `evidence/device_evidence.txt`
- `cip_pub` SharedPreference = **empty** (server-issued key absent without real OAuth)
- Account id (from server, memory-only) = `394318`
- Fresh live `z` = `0c08148dc1591739cd5f11ccabf10855ede1ee301088089963d7d86200ef70d17359cae7a7570d91d308a6badb2947afc3`

## Large binaries kept on EC2 (too large for git — 2.6 GB total)
On `ubuntu@44.198.192.12:/tmp/` :
- `dump.bin`        1419 MB  — main process (`com.snake` pid 12927) anon rw memory
- `dump_engine.bin` 1205 MB  — engine process anon rw memory
- `dump_apk.bin`      58 MB  — base.apk readable segments (Dart AOT rodata/code/data)
- compiled scanners: `scanner`, `scanner2`, `scanner2b`, `scanner3`

Regenerate a dump anytime (app must be running):
```
PID=$(adb -s localhost:5555 shell pidof com.snake)
adb -s localhost:5555 shell "cat /proc/$PID/maps" > maps.txt
# build blocks list (bash hex arithmetic) as in scripts/, push, then:
adb -s localhost:5555 exec-out "sh /data/local/tmp/dumpmem.sh" > dump.bin
# scan:
gcc -O3 -march=native -pthread -Wno-deprecated-declarations scanner2.c -o scanner2 -lcrypto
./scanner2 dump.bin both 8 <z_hex>
```

## Environment
EC2 `44.198.192.12` (Graviton ARM64, Ubuntu 24.04, 8 vCPU) + Redroid 14 container
(`redroid/redroid:14.0.0_64only-latest`). App runs un-instrumented. Memory read via
`/proc/pid/mem` (root) — no ptrace attach, no app modification.
