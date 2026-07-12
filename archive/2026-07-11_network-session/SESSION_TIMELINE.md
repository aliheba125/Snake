# Snake Engine RE — Full Session Timeline & Findings

**Target:** `SE_2.2.6.apk` (`com.snake`), a Flutter/Dart game-mod tool with an obfuscated
`libengine.so`.
**Goal:** Analyze the crypto/network scheme; ideally capture `seed1`/`seed2`,
AES/KDF ciphertext/plaintext (`FUN_00160208` / `FUN_00161788`), and TLS plaintext.
**Ground rule (user-enforced):** every conclusion needs direct evidence; hypotheses are labeled
as such and never treated as fact.

---

## A. Environment / infrastructure facts

- **EC2 host:** `i-00a54de0bc7b92121`, t4g.medium, arm64 (aarch64), root available.
  - ENI `eni-06a27f15885858374`, SG `sg-0335e4603a95f1efe`, VPC `vpc-016cd2e34519bf5b6`,
    subnet `subnet-06ae3cd3896596ce0` (us-east-1d), IGW `igw-00265a0289a79adca`.
  - Public IP moved during the session: `54.166.161.235` -> `52.21.117.206` (Elastic IP `eipalloc-0d7bab91be94f9e55`).
  - Private IP `172.31.36.94`. Interface `ens5`.
- **AWS account:** `401644593786`, role `KiroAccessRole` (created 2026-07-08).
- **Android runtime:** `redroid/redroid:11.0.0-240527` Docker container (`redroid`), needs `qemu=1`,
  ADB on `localhost:5555`.
- **Project path on host:** `/home/ubuntu/Snake` (git repo).

---

## B. Static analysis (COMPLETE — proven)

- Tooling: jadx, apktool, Blutter (Dart), Ghidra.
- **Crypto scheme proven:** AES-256 with a KDF built on SHA-256, a K-table at `0x2b450`, and the
  golden-ratio constant `0x9e3779b1`. Verified deterministic in `crypto_scheme.py` /
  `validate_crypto.py`.
- **Key native functions:** `FUN_00160208` (AES), `FUN_00161788` (KDF).
- **libflutter.so layout:** `.text` VA `0x43d680` (file offset `0x42d680`, delta `+0x10000`).
  - `ssl_log_secret` @ VA `0x461614` (TLS 1.3 keylog labels present:
    `CLIENT_HANDSHAKE_TRAFFIC_SECRET` @ file `0x1de892`, etc.).
  - 4 certificate-verify candidates: `0x460e5c`, `0x460ec0`, `0x461264`, `0x461a6c`.
  - 3 essential TLS functions: `0x4609a8`, `0x460a9c`, `0x468f44`.

---

## C. Real backend (proven)

- The real backend is **`push-918010152455.europe-west1.run.app`** (Google Cloud Run), **not**
  `rest.snakeseller.com`.
- Startup traffic captured via libc hooks: a **247-byte request** and an **852-byte response** to
  Cloud Run, visible as TLS records.

---

## D. Dynamic-analysis findings (proven)

- **Interceptor.attach on `libengine.so` -> process dies in ~1.3 s** (25 heartbeats). This is
  reproducible.
- **Stalker.follow (no code modification) survives 120 s+** — used instead of Interceptor for
  monitoring libengine.
- **libc hooks (memcpy/malloc/clock_gettime) are safe** — 333 real events captured; process
  survived. Chosen over Interceptor-on-libengine because Interceptor triggers an integrity check.
- **Frida Gadget from `/data/local/tmp/` is detected** (maps scan). Placing the Gadget in
  `/system/lib64/libskia_android.so` avoids that detection.
- **Gadget script-mode timers** (`setTimeout`/`setInterval`) don't fire; listen-mode connect takes
  ~18 s (too late for startup TLS).
- classify: 4 periodic callers into libengine, zero relation to tap/subscription; KDF/AES not
  observed executing at runtime during the captured windows.

---

## E. The crash (SIGSEGV) — what is proven vs not

- **Proven:** `com.snake` dies with SIGSEGV (signal 11 -> handled by SIG_DFL) on the main thread
  (`tid == pid`), ~8.2 s after start. `libc: exiting due to SIG_DFL handler for signal 11`.
- **Proven:** at crash time, `libengine.so` / `libflutter.so` are **not yet in the process maps**
  -> the crash is **pre-native-load**.
- **NOT proven:** that the network failure causes the crash. Correlation only. No tombstone/backtrace
  has linked them.
- **Disproven:** "watchdog/anti-tamper kills it" as the crash cause (native libs not loaded yet).
- Note: `ro.build.fingerprint` was 100 chars (> 92 `PROP_VALUE_MAX`); shortening it did NOT fix the crash.

---

## F. Network / account diagnosis (this session)

See `NETWORK_AND_ACCOUNT_DIAGNOSIS.md` for the full rigorous write-up. Summary:
- **Proven:** external TCP + UDP egress do not complete (SYN leaves `ens5`, nothing returns);
  ICMP works to the real 8.8.8.8; all VPC controls (SG/NACL/route/no-firewall/no-TGW/no-endpoints)
  are correct; the AWS account returns `Blocked` on `RunInstances` (RequestId
  `7d0ca1a7-d580-4a32-a7c2-2dff69e8e7b8`).
- **Hypothesis (not proven):** the account block causes the egress drop.
- The A/B comparison instance could not be launched precisely because of the account block.

---

## G. Decisions & rationale

- Use **libc hooks** and **Stalker**, never Interceptor on libengine (proven to trigger the 1.3 s death).
- Gadget in `/system/lib64/`, never `/data/local/tmp/` (proven detection).
- **MITM rejected** as a solution: Flutter/Dart does not trust the system CA store; the TLS
  handshake fails with `UNEXPECTED_EOF`.
- Distinguish always: the TCP/UDP egress failure is **proven**; its *cause* and its *link to the
  SIGSEGV* remain **unproven**.

---

## H. Access notes (operational)

- SSH: `ssh -o StrictHostKeyChecking=no -i <key> ubuntu@52.21.117.206`, then `cd /home/ubuntu/Snake`.
- The private key must be written byte-for-byte and `chmod 600` — never reformatted.
- Local commits on the host were never pushed (host cannot reach github.com over TCP:443); the push
  was performed from an environment with working egress.
