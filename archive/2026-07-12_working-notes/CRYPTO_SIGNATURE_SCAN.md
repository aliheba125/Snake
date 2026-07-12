# Crypto primitive signature scan of the shipped native libraries

Byte-signature search for standard cipher tables in `raw/lib/arm64-v8a/*.so`.

| library | AES S-box (`63 7c 77 7b …`) | ChaCha `expand 32-byte k` | AES Te0 (`a56363c6`) |
|---|---|---|---|
| **libengine.so** (8.5 MB, native engine) | absent | absent | absent |
| **libapp.so** (5.6 MB, Dart AOT) | absent | absent | absent |
| **libflutter.so** (10.7 MB) | absent | **FOUND @0x1aa980** | absent |

## Interpretation
- **libapp.so (Dart) has no standard AES/ChaCha table.** This *disproves* the prior session's
  premise that the network payload is encrypted by table-based **pointycastle** in Dart — a
  table-AES would embed the S-box/Te0 in the AOT rodata (`pp.txt` also had none). The pointycastle
  OID strings seen earlier are pulled in by the `archive` (ZIP) package, not the z-cipher.
- **libengine.so has no *standard* AES S-box/ChaCha constant either**, yet the prior static work
  proved it *does* contain AES (confirmed MixColumns `x<<1 ^ 0x1b`, S-box referenced at runtime
  addr `DAT_009281a8`, SHA-256 K-table @ file `0x2b450`, golden-ratio KDF `FUN_00161788`). The
  standard-order S-box being absent from a raw byte scan means the table is **obfuscated / built or
  masked at runtime** — consistent with the library's heavy obfuscation.
- **libflutter.so**'s ChaCha constant is the bundled **BoringSSL** used for TLS, not evidence of
  the z-cipher.

## Net
The z-cipher is **not** standard table-based Dart AES/ChaCha. Combined with the exhaustive memory
scans (no static AEAD/CTR/MAC key even for a fresh in-memory sample), the evidence points to an
**obfuscated native cipher in libengine with a per-message-derived, post-use-wiped key** — which
no passive scan can recover. Cracking it requires either recovering the master secret + KDF from
`libengine.so` (Ghidra/radare2, safe/static) or intercepting the cipher `init` at runtime.
