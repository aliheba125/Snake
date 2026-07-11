# Network & AWS Account Diagnosis — Snake Engine Dynamic Analysis

**Date:** 2026-07-11
**Environment:** EC2 `i-00a54de0bc7b92121` (t4g.medium, arm64), us-east-1d, AWS account `401644593786` accessed via role `KiroAccessRole`.

This document rigorously separates **PROVEN FACTS** (direct, reproducible evidence) from
**HYPOTHESES** (plausible but not independently proven). This separation was explicitly
required throughout the investigation.

---

## 1. The core symptom

The Snake Engine app (`com.snake`) cannot complete its startup TLS handshake to its backend
(`push-918010152455.europe-west1.run.app`, Google Cloud Run). Dynamic analysis that requires the
app to reach its backend is therefore blocked.

Investigation of *why* network traffic fails led to the findings below.

---

## 2. PROVEN FACTS (direct evidence, reproducible)

### 2.1 The AWS account is under a creation block
Attempting to launch a new EC2 instance returns, directly from the AWS EC2 API:

```
An error occurred (Blocked) when calling the RunInstances operation:
This account is currently blocked and not recognized as a valid account.
Please contact https://support.console.aws.amazon.com/support/home?region=us-east-1#/case/create
?issueType=customer-service&serviceCode=account-management&categoryCode=account-verification
```

Raw HTTP evidence (botocore debug):
- `Server: AmazonEC2`
- `x-amzn-RequestId: 7d0ca1a7-d580-4a32-a7c2-2dff69e8e7b8`
- Response body: `<Code>Blocked</Code><Message>This account is currently blocked and not recognized as a valid account...</Message>`

**Scope of the block (also proven):** it affects *resource creation*, NOT the whole account:
- `aws ec2 run-instances` -> **Blocked** (fails)
- `aws sts get-caller-identity` -> succeeds
- `aws iam get-role --role-name KiroAccessRole` -> succeeds (role created 2026-07-08)
- `aws ec2 describe-instances` -> succeeds (existing instance still `running`)
- `aws ec2 create-tags` -> succeeds (silent)
- SSH into the existing instance -> works

### 2.2 Outbound TCP and UDP to the internet do not complete
Tested from the EC2 instance to multiple external destinations:

| Protocol | Destination(s) | Result |
|----------|----------------|--------|
| ICMP | 8.8.8.8, 1.1.1.1 | **WORKS** (0% loss, ~1.6 ms) |
| UDP/53 | 8.8.8.8, 1.1.1.1 | FAILS (timeout) |
| TCP/443, TCP/80, TCP/53 | 8.8.8.8, 1.1.1.1, 93.184.216.34, 142.250.190.78, github.com | FAILS (timeout) |

- `tcpdump` confirms the TCP **SYN leaves interface `ens5`** (5 SYNs out), and **zero** inbound
  SYN-ACK / any inbound packets return.
- The drop happens **at or just past the first AWS hop** (`240.64.131.x`):
  - `mtr` ICMP mode completes all 6 hops to the real 8.8.8.8.
  - `mtr` TCP mode and UDP mode produce **no response at all — not even hop 1** returns an
    ICMP "TTL exceeded" for TCP/UDP, while it does for ICMP.

### 2.3 ICMP genuinely reaches the real 8.8.8.8 (routing works)
- Reply TTL = 117 (consistent with ~11 hops from an initial TTL of 128) — a **real** distant
  host, NOT a local middlebox (which would show TTL 64/255).
- Manual TTL walk reveals a genuine path:
  `240.64.131.x` (AWS internal) -> `100.100.36.x` (AWS internal) ->
  `99.83.115.171` (AWS edge) -> `142.251.245.175` / `142.251.70.85` (Google) -> `8.8.8.8`.

### 2.4 Every customer-visible VPC control is correct
- **Security Group** `sg-0335e4603a95f1efe`: outbound allow-all.
- **Network ACL**: allow-all both directions.
- **Route table** `rtb-0f8b2ca886172a045`: `0.0.0.0/0 -> igw-00265a0289a79adca` (real IGW, not hijacked); `172.31.0.0/16 -> local`.
- **No** AWS Network Firewall in the account/region (`list-firewalls` -> empty).
- **No** Transit Gateway attachments.
- **No** VPC endpoints.
- AWS Reachability Analyzer (ENI -> IGW): "Reachable".

### 2.5 Internal connectivity works
- SSH inbound to the instance works.
- DNS via the internal VPC resolver `172.31.0.2` works (this is INTERNAL, not proof of external UDP).
- Instance metadata service works.

---

## 3. Retracted / corrected claims (were previously stated, later disproven)

- ~~"UDP works"~~ -> **WRONG.** Only the *internal* VPC resolver worked. External UDP (8.8.8.8:53, 1.1.1.1:53) fails.
- ~~"The block is TCP-specific"~~ -> **WRONG.** Both TCP *and* UDP egress fail; ICMP is what passes.
- ~~"Kiro sandbox blocks TCP"~~ -> **Not supported as stated.** The proven constraint is an AWS account-level *creation* block; the egress drop is at AWS infra we don't control. Attributing it to a specific actor ("Kiro") is not proven.
- ~~"A middlebox fakes the ICMP reply"~~ -> **Disproven** by TTL=117 (genuine distant reply).
- ~~"syscall 53 = bind on aarch64"~~ -> **WRONG.** Incorrect syscall mapping for aarch64.

---

## 4. HYPOTHESES (plausible, NOT independently proven)

1. **The account block is the *cause* of the egress drop.** They are correlated and it is a known
   AWS pattern to restrict flagged/unverified accounts, but the internal policy linking them is not
   visible from inside, so this remains correlation, not proven causation.
2. **The egress drop is enforced at the AWS infrastructure layer (first hop 240.64.131.x).** The
   evidence (SYN leaves host; no return; not SG/NACL/route/firewall) points here, but the exact
   enforcement point/mechanism is not directly observable.

---

## 5. STILL UNPROVEN

- **Link between the network failure and the app's SIGSEGV crash.** The app dies with SIGSEGV
  ~8 s after start, on the main thread, **before `libengine.so`/`libflutter.so` are loaded**
  (process maps are empty of those libs at crash time). This strongly suggests the crash is
  **independent** of the network failure. No backtrace/tombstone has yet tied the crash to the
  network path. Treat "network failure causes the crash" as **unproven**.

---

## 6. Consequence for the project

- **Static analysis:** complete (AES-256 scheme + SHA-256/golden-ratio KDF proven deterministic).
- **Dynamic analysis requiring the backend:** blocked by an **external constraint** (AWS account
  block + no external TCP/UDP egress) that cannot be fixed from inside the instance. Resolving it
  requires AWS to lift the account block, or a different (unblocked) environment with working
  egress.
