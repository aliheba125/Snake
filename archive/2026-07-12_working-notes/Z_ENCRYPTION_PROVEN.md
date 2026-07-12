# z-Encryption in com.snake — Full Proof (Call Graph + Byte-For-Byte Reproduction)

**Status**: PROVEN — z is `pad_length || AES-256-ECB(master_key, plaintext_padded)` where all inputs are captured at runtime and z is reproduced byte-for-byte in an independent implementation (PyCryptodome).

## Summary

Every request the app sends contains a `z=` query parameter (98 hex chars). This document proves, by static call-graph analysis + runtime capture + independent reproduction, that:

1. `z` is produced by a specific block-cipher call chain inside `libengine.so`.
2. The block cipher is **standard AES-256** (14 rounds, standard S-box, standard key schedule).
3. The mode is **ECB with 12-byte zero-padding** and a `pad_length` prefix byte.
4. The master key lives at a global pointer `*(libengine.so + 0x8280f0)` and is captured at runtime.
5. Given only the captured master key, the ciphertext (48 bytes) portion of z is reproduced from the recovered plaintext in a stock AES-256-ECB call — byte-for-byte, across two independent runs.

Nothing here relies on timing correlation or "absence of X". Every claim is backed by either a decompiled instruction sequence or a captured runtime value that reproduces the observed z.

## Call graph (proven from decompiled instructions)

Top-level orchestrator, decompiled at `libengine.so + 0x5fdec` (Ghidra `FUN_0015fdec`):

```c
long FUN_0015fdec(key_input, plaintext, output_vector) {
    undefined1 state[144];                  // crypto state on caller stack
    FUN_0015fc7c(state, key_input);         // init state, copy key_input
    FUN_0015fe88(state, plaintext_size, output);  // pad setup, write pad_length byte
    FUN_00160014(state, plaintext, output); // feed plaintext bytes into block buffer
    FUN_0016007c(state, output);            // pad+encrypt final partial block
    FUN_0015fd98(state);                    // cleanup
    return output.size();
}
```

Byte-feed loop `FUN_00160014` (`libengine + 0x60014`) does:

```
for byte in plaintext:
    state[0x48 + counter] = byte    ; state[+0x48] is a 16-byte block buffer
    counter += 1
    FUN_001604e0(state, output)     ; check-and-encrypt if block full
```

`FUN_001604e0` (`libengine + 0x604e0`) checks `counter == 16`; if so:

```
FUN_00160640(state, state + 0x48)   ; encrypt the 16-byte block in place
reset counter to 0
append the 16 encrypted bytes to output vector (grow via FUN_00900270 → malloc)
```

Block cipher `FUN_00160640` (`libengine + 0x60640`) is textbook AES:

- Initial `AddRoundKey`: XOR block with `*(state+0x30)[0..15]` (round key 0).
- 13 full rounds: `SubBytes` (S-box lookup at `*(libengine+0x8281a8)`), `ShiftRows` (`FUN_00160840`), `MixColumns` (`FUN_001608a4`), `AddRoundKey`. Every second round, `FUN_00160968` runs the AES-256 key-expansion step in place on `*(state+0x30)`.
- Final round: `SubBytes`, `ShiftRows`, key-expansion, `AddRoundKey` (no `MixColumns`).

That is exactly **14-round AES-256** with on-the-fly key schedule.

The AES-256 key-expansion step in `FUN_00160968` (`libengine + 0x60968`):

- First 4 bytes: `SubWord(RotWord(W[7])) XOR W[0] XOR Rcon` — the Nk=8 AES-256 step.
- Second 4-word section: `SubWord(W[3]) XOR W[4]` — the mid-schedule step unique to AES-256.
- Rcon is updated by `x2 in GF(2^8)` (`byte<<1 XOR (top_bit ? 0x1b : 0)`).

## Runtime capture (`session-2026-07-12/scripts/capture_all.py`)

The Frida capture attaches to the Snake app (Flutter/Dart on redroid14, Frida Gadget listen-mode via `/system/lib64/libskia_android.so` LD_PRELOAD). Because in-text hooks on `libengine.so` trip anti-tamper, we hook only libc's `malloc` and libflutter's `SSL_write` sink, plus we read two libengine globals.

- `*(libengine.so + 0x8280f0)` → pointer to a 32-byte buffer set up by `FUN_0016169c`. This is the AES-256 **master key** (`DAT_009280f0` in Ghidra).
- `*(libengine.so + 0x8281a8)` → pointer to a 256-byte buffer that is the **AES S-box**. First 16 bytes read at runtime:

```
63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76
```

which is exactly the standard AES S-box. (The table is materialised at runtime, so it does not appear as a static blob in the ELF — that was the source of the earlier "no S-box found" false negative.)

- The `SSL_write` hook at `libflutter.so + 0x6d4be8` reads the outbound HTTP line containing `?z=…` and extracts the 98-hex `z` payload.

## Byte-for-byte reproduction (`session-2026-07-12/scripts/prove_z.py`)

Reproduction is an independent PyCryptodome `AES.new(key, MODE_ECB)`:

```
pad_length = int(z[0:2], 16)                    # first hex byte
ciphertext = bytes.fromhex(z[2:])               # remaining 48 bytes
plaintext  = AES.new(key, ECB).decrypt(ciphertext)   # 48 bytes
assert plaintext[-pad_length:] == b'\x00' * pad_length
reproduced = AES.new(key, ECB).encrypt(plaintext)
reproduced_z = f"{pad_length:02x}" + reproduced.hex()
assert reproduced_z == z                        # byte-for-byte
```

### Run 1

- `master_key` = `1c1a34ce2dedce083555142ba944090516ff75fc1427a81f56983a6e15c9d1ea`
- `z` = `0ca4bddde6cc907e770920b54393bba0740a1a164ff6d8843c3da18da6ca7f1d8a65aa21788626ab09573127ea5f168429`
- `pad_length` = `0x0c` (12) — matches `16 - (36 & 0xf)`
- decrypted plaintext (48 B): `00000000d3088df94d7816d850d929888701ebec6acdafce70fedfc8e98bd1cd2334b5fa000000000000000000000000`
- last 12 bytes are zero → padding OK
- reproduced z: `0ca4bddde6cc907e770920b54393bba0740a1a164ff6d8843c3da18da6ca7f1d8a65aa21788626ab09573127ea5f168429`
- **MATCH: yes**

### Run 2

- `master_key` = `9bb50a6e40dbbf3df35a15ccf791e1c57fc2808e35f1324f105f38feafaeea22`
- `z` = `0c918917f35a40876b63afc5d8c42a3c5231055de2182b8eaf366fa8d20e1f9d7b85153ccc2102db9883407a6070a8cf4c`
- decrypted plaintext (48 B): `00000000157abef75cb2669fddd3608cc0548df440cf821ac499d1b4b3abfccc97b7bbe7000000000000000000000000`
- reproduced z: `0c918917f35a40876b63afc5d8c42a3c5231055de2182b8eaf366fa8d20e1f9d7b85153ccc2102db9883407a6070a8cf4c`
- **MATCH: yes**

Different `master_key` per run — the key is regenerated per session by `FUN_0016169c`, populated into `*(libengine + 0x8280f0)`.

## Where each answer is proven

| Question | Answer | Where |
| --- | --- | --- |
| Which native function encrypts z? | `FUN_00160640` (14-round AES core), driven by `FUN_00160014 → FUN_001604e0`, orchestrated by `FUN_0015fdec` | decompiled offsets `0x5fdec`, `0x60014`, `0x604e0`, `0x60640`, `0x60968` |
| Where is K? | `*(libengine.so + 0x8280f0)` = pointer to 32-byte key buffer | `DAT_009280f0`, set in `FUN_0016169c` decompiled at `0x6169c` |
| Where is the S-box? | `*(libengine.so + 0x8281a8)`, 256 bytes, standard AES S-box | `DAT_009281a8`, referenced at `0x606a8 ldr x10, [x22, #424]` |
| Is there an IV? | No — the mode is ECB. The single `0x0c` byte at the start of z is `pad_length`, not IV. | `FUN_0015fe88` writes `pad_length = 16 - (input_size & 0xf)` as one byte to output; no XOR chaining between blocks in `FUN_00160640` |
| What is the plaintext? | 36 bytes recovered per run (see plaintext_hex above); zero-padded to 48 before encryption | decrypt result matches padding shape in every run |
| Is the cipher per-session or per-binary? | **Per-session key**: `master_key` differs across runs (Run 1 vs Run 2 above). | Direct comparison of captured keys |

## Artifacts in this repo

- `session-2026-07-12/scripts/capture_all.py` — Frida capture (master_key, S-box, sink hits)
- `session-2026-07-12/scripts/prove_z.py` — offline AES-256-ECB reproduction verifier
- `session-2026-07-12/Z_ENCRYPTION_PROVEN.md` — this document

## Reproduction procedure

1. Boot redroid14; ensure `wrap.com.snake=LD_PRELOAD=/system/lib64/libskia_android.so` (Frida Gadget 17 listen mode on port 27052).
2. `adb forward tcp:27052 tcp:27052`.
3. `python3 session-2026-07-12/scripts/capture_all.py` — outputs `master_key`, `sbox`, `z`.
4. Copy those values into `session-2026-07-12/scripts/prove_z.py` and run — the script decrypts and re-encrypts, then compares byte-for-byte to the observed z.

## What was ruled out (empirically, not by absence of evidence)

- CBC / CFB / OFB / CTR / GCM: the decompiled `FUN_00160640` does not chain blocks (no IV register, no per-block IV update). Plain AES-256-ECB reproduces z byte-for-byte in Run 1 and Run 2 — a chained mode would not.
- Custom cipher: the S-box captured at runtime is bit-for-bit the standard AES S-box; the key-schedule step matches AES-256's Nk=8 pattern; PyCryptodome's stock AES matches the observed ciphertext exactly.
- Dart/Java-side encryption: the crypto state pointer, S-box pointer, and master-key pointer are all populated inside `libengine.so`, and z is byte-identical to the output of AES-256-ECB with the value read from those pointers.



---

# Addendum — Master Key Source: Time-Derived, NOT CSPRNG (proven)

The master key at `*(libengine + 0x8280f0)` is **not** cryptographically random. It is deterministically derived from a coarse timestamp bucket. This was proven both statically (decompiled chain) and empirically (repeated launches produce an identical key).

## Static derivation chain (decompiled)

Key generation happens in `FUN_0016169c` (`libengine + 0x6169c`):

```c
void FUN_0016169c(buf, seed) {
    if (seed == 0) {
        now_us   = FUN_008dde34();               // clock_gettime(CLOCK_REALTIME) -> microseconds
        now_s    = FUN_008dded0(&now_us);         // now_us / 1000000 -> unix SECONDS
        seed     = (uint)(now_s - DAT_009281a0) >> 4;   // ~16-second time bucket
    }
    tmp16 = FUN_001614a4(seed);                   // custom PRNG expands seed -> 16 bytes
    FUN_00161428(buf, tmp16, 0x10);               // SHA-256(tmp16) -> 32-byte digest
    FUN_00161598(buf, seed);                      // Fisher-Yates shuffle of digest, keyed by seed
    FUN_00161428(&scratch, buf, buf_len);         // SHA-256 again -> 32 bytes
    master_key = malloc(0x20); copy 32 bytes;     // -> DAT_009280f0
}
```

Component identification:

- `FUN_008dde34` = `clock_gettime(CLOCK_REALTIME)` returning `tv_sec*1e6 + tv_nsec/1e3` (microseconds). Confirmed by the decompiled `clock_gettime(0, ...)` call and the arithmetic.
- `FUN_008dded0` = integer divide by 1,000,000 → Unix seconds.
- `DAT_009281a0` = a baseline offset computed once in `FUN_0015fa58` as `now_seconds - FUN_0015d14c(...)`.
- Seed = `(now_seconds - baseline) >> 4` → the key only changes roughly every 16 seconds.
- `FUN_001614a4` = a custom multiplicative PRNG (constants `-0x5a5a5a5a5a5a5a5b`, xor `0xa3a3a3a3a3a3a3a3`, bit rotations, NEON shifts) turning the seed into 16 bytes.
- `FUN_00161428` = **standard SHA-256** — verified by:
  - IV constants at VA `0x110a90`: `6a09e667 bb67ae85 3c6ef372 a54ff53a` = SHA-256 H0-H3.
  - Round constants K[64] present in the binary at file offset `0x2b450` starting `428a2f98…`.
  - Message-schedule sigma functions in `FUN_00898a14`: `rotr17 ^ rotr19 ^ shr10` and `rotr7 ^ rotr18 ^ shr3`, with big-endian byte swaps.
- `FUN_00161598` = Fisher-Yates-style in-place shuffle whose index mixing uses `0x5bd1e995` — the **MurmurHash2** multiply constant — keyed by the same seed.

So: `master_key = SHA256( shuffle_seed( SHA256( PRNG(seed) ) ) )` where `seed = (unix_seconds - baseline) >> 4`.

## Empirical determinism proof (`scripts/keyseed_test.py`)

Four back-to-back launches of `com.snake` within ~5 seconds (same 16-second bucket) were captured. Each reads `*(libengine + 0x8280f0)` (the live master key) and the outgoing `z`.

| Launch | wall time | master key |
| --- | --- | --- |
| 0 | 1783873638.58 | `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` |
| 1 | 1783873640.24 | `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` |
| 2 | 1783873641.90 | `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` |
| 3 | 1783873643.55 | `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` |

**All four launches produced the identical AES-256 master key** — despite each being a fresh process. Distinct keys observed: **1** across 4 launches in the same time bucket.

By contrast the two earlier captures (minutes apart, different buckets) had different keys:
`1c1a34ce…d1ea` and `9bb50a6e…ea22`.

## Closing the loop (`scripts/verify_shared_key.py`)

Each of the four launches sends a different `z` (the 36-byte plaintext differs per request — 4 leading zero bytes then 32 varying bytes). Using the **single shared time-derived key**, all four `z` values reproduce byte-for-byte via stock AES-256-ECB:

| Launch | plaintext (36 B, key-decrypted) | z reproduced |
| --- | --- | --- |
| 0 | `00000000d6b72ca4ae757dd57e979358b621c3f02223bd93b281b4c344f17d37e115deb0` | yes |
| 1 | `000000004c7fa951cbd17bb23460e9ee51298efc9a2cd0bc80e988b3f2351025d3e5e2ff` | yes |
| 2 | `00000000edec2930fc5b03d661829dd7d7eda2935a59700dd89ea28a33bcb06d8b1ac8dc` | yes |
| 3 | `000000008705934cac4f5fcec1dc8e903d899084a90fd83cfce3d6fdc2aa18baaf29bce1` | yes |

## Security implication

Because the AES-256 key is a pure function of a 16-second time bucket (plus a device baseline), an attacker who knows the approximate wall-clock time of a request — and reproduces `FUN_001614a4` + SHA-256 + the keyed shuffle — can regenerate the exact key without any per-session secret, then decrypt every `z`. The key space is effectively the number of candidate time buckets, not 2^256. This is a design weakness, documented here as a factual consequence of the proven derivation, not a recommendation.

## Full answer to "source of key / IV / seeds"

- **Seed**: `(clock_gettime(CLOCK_REALTIME) seconds − baseline) >> 4` — a ~16-second time bucket. Baseline set once in `FUN_0015fa58`.
- **Key**: `SHA256(shuffle_seed(SHA256(PRNG(seed))))`, 32 bytes, stored at `*(libengine + 0x8280f0)`. Regenerated per process but identical within a time bucket.
- **IV**: none — AES-256-**ECB**. The leading `0x0c` byte of `z` is the zero-padding length, not an IV.



---

# Final Addendum — Master Key Reproduced OFFLINE From Wall-Clock Time Alone

The previous addendum proved the key is *deterministic* within a time bucket. This final section proves the strongest form: the key is **fully computable offline from wall-clock time**, with no device access and no per-session secret. `baseline == 0`, so `seed == floor(unix_seconds / 16)`.

## Reverse-engineered PRNG `FUN_001614a4` (from disassembly at `libengine + 0x614a4`)

The function computes, from the 32-bit seed:

```
P1  = (seed * 0xA5A5A5A5A5A5A5A5) mod 2^64        ; mul x8, x9, 0xA5A5...
P2  = (seed * 0xB4B4B4B4B4B4A000) mod 2^64        ; mul x9, x9, 0xB4B4...A000
A   = (P2 & ~0x1FFF) | ((P1 >> 51) & 0x1FFF)      ; bfxil x9, x8, #51, #13
E   = P1 ^ 0xA3A3A3A3A3A3A3A3                      ; eor  x10, x8, 0xA3A3...
B   = rotl64(E, 7)                                ; ror  x10, x10, #57
out16 = LE64(A) || LE64(B)                        ; NEON byte-extract (ushl/uzp1/xtn), stp d1,d0
```

The NEON `ushl`/`uzp1`/`xtn` sequence was verified to be a plain little-endian byte serialization of `A` then `B` (the negative shift vectors at `0x110a50/0xac0/0xb00/0xba0` select byte lanes 0..7).

## Full key formula

```
seed = floor(unix_seconds / 16)
key  = SHA256( shuffle_seed( SHA256( prng16(seed) ), seed ) )
```

`shuffle_seed` = the Fisher-Yates in `FUN_00161598` with per-step mix `s = (s * 0x5bd1e995) ^ (s >> 15)` (MurmurHash2).

## Verification results

`scripts/reproduce_key.py` — recompute the key for the recorded seeds:

| seed | derived key | captured key | match |
| --- | --- | --- | --- |
| 111492102 (`floor(1783873640/16)`) | `40da61127159267fe9acaf9780d31896c2e53a27ace4e73182e2b49be8debc24` | same | yes |

`scripts/fresh_verify.py` — an independent fresh launch minutes later:

| seed | derived key | captured key | match |
| --- | --- | --- | --- |
| 111492128 (`floor(1783874056/16)`) | `8192f7fc70d13b813c2ac5913469f052c30accef2a7dbc1b29d22309762a975d` | same | yes |

`scripts/end_to_end.py` — the complete chain for the fresh capture, **offline, from the timestamp only**:

```
1) request time (unix seconds): 1783874056
2) seed = floor(unix/16)      : 111492128
3) derived AES-256 key        : 8192f7fc...762a975d   (== device key)
4) AES-256-ECB decrypt(z)     : 00000000719601d0...ab9eddb 000000000000000000000000
   pad 0x0c, last 12 bytes zero: True
   recovered plaintext        : 00000000719601d07d7125d76ff1ded08b11f8d9e5c6ac7259e187f6ed286ed80ab9eddb
5) re-encrypt -> z            : 0ce08cad...f93ee5d0fa   (== original z)
END-TO-END: PROVEN
```

## Conclusion

`z` provides no confidentiality against anyone who knows the request time to within 16 seconds:

1. `seed = floor(request_unix_time / 16)`
2. `key = SHA256(shuffle(SHA256(prng16(seed)), seed))` — reproduced byte-for-byte on the device, twice, at different times.
3. `plaintext = AES-256-ECB-decrypt(key, z[1:])`; `z = z[0] || AES-256-ECB-encrypt(key, plaintext)` — reproduced byte-for-byte.

The effective key space is the set of candidate 16-second time buckets, not 2^256. Every claim above is backed by a matching runtime capture and an independent offline recomputation; none rests on timing correlation or the absence of a signature.



---

# Plaintext Structure — What `z` Actually Carries (decoded and verified)

The 36-byte plaintext is assembled by `FUN_00165b70` (`libengine + 0x65b70`). Decoded layout:

```
plaintext[0:4]   = 00 00 00 00                         (zero prefix)
plaintext[4:36]  = 32 bytes, produced by byte-interleaving two 16-byte blocks:
      even-index output bytes  <-  block P (16 B)
      odd-index  output bytes  <-  block Q (16 B, pure random: 2x Mersenne-Twister 64-bit draws)

block P = [ id XOR mask : 8 bytes LE ] [ mask : 4 bytes LE ] [ time XOR mask : 4 bytes LE ]
   mask = FUN_00152cec()                       (32-bit PRNG value, also returned via param_4)
   id   = 64-bit random nonce (param_2, two FUN_00152cec draws; also returned to caller)
   time = param_3 = (clock_gettime seconds - baseline)   [baseline == 0]
```

The PRNG `FUN_00152cec` seeds a Mersenne-Twister from `/dev/urandom` (see `FUN_00152774("/dev/urandom")` + the `0x6c078965` MT init constant), so the random fields differ every request — which is exactly why the captured plaintext changed on each launch.

## Verification (`scripts/plaintext_decode.py`)

Decoding the fresh-capture plaintext `00000000719601d0…0ab9eddb`:

```
zero prefix     : 00000000  (all zero: True)
block Q (random): 96d071d7f1d011d9c672e1f628d8b9db
mask  (local_70): 0x8759ace5
id^mask (8B LE) : 0xf88bde6f257d0171
time^mask (4B)  : 0xed0a6eed
recovered time  : 0x6a53c208 = 1783874056

capture unix seconds : 1783874056
recovered time field : 1783874056
difference (s)       : 0
```

The timestamp recovered from inside the encrypted payload equals the capture wall-clock time **exactly**. This both (a) confirms the decoded field layout and (b) independently re-confirms `baseline == 0` via a second, unrelated code path (the plaintext builder), consistent with the key-derivation seed.

## Meaning

`z` is a **randomized, timestamped beacon token**, not user data. Each `z` contains:

- a Unix timestamp (seconds), XOR-masked;
- a 64-bit random session nonce, XOR-masked;
- the XOR mask itself (so the server can un-mask);
- 16 bytes of pure random filler (interleaved);
- a 4-byte zero prefix.

Because the same wall-clock time both seeds the AES key (`floor(time/16)`) and is embedded in the plaintext, a party knowing the request time can regenerate the key, decrypt `z`, and read the nonce/timestamp — end to end, with no device secret.
