# Backend Protocol & Activation Model — `snakeseller.com`

Analyzed from the Dart object pool (`../../dart-blutter/pp.txt`), decompiled Java/smali,
and live behavior. This documents *how the tool talks to its backend* and *how its licensing
economy works*.

---

## Transport & request envelope

- **Single endpoint:** `POST https://rest.snakeseller.com/api/request/`
- **Envelope (JSON over HTTPS):**
  ```json
  { "encryptedData": "<base64 application-layer ciphertext>",
    "deviceId": "<device identifier>",
    "timestamp": <epoch> }
  ```
  - `timestamp` — replay protection.
  - `deviceId` — binds a request/activation to a device; drives the ban/link system
    (*"device is BANNED"*, *"This subscription is for a single device only"*,
    *"linked from other device"*, *"already has an active subscription, please use another device ID"*).
  - Multiple logical operations are multiplexed over the one endpoint via `action`/`type`/`route`/
    `method` fields inside the decrypted payload.
- **Application-layer encryption** lives in the **Dart layer (pointycastle)**, layered *over* TLS.
  This is why the payload never surfaces through the exported `SSL_write` and never touches the
  native `FUN_00160208` — those are unrelated subsystems.

## Crypto stack (Dart / pointycastle)

Primitives present in the object pool: **AES, RSA (PKCS1/OAEP/PSS), ECDSA, SHA-256, X25519, PKCS7/8**,
plus **CRC32** tables. Typical shape for this kind of envelope (inferred, not yet pinned to exact
Dart offsets): JSON body → symmetric encrypt (AES) → key/handshake protected by RSA or X25519 →
base64 → `encryptedData`, with a signature/CRC for integrity. Pinning the exact construction is a
follow-up via Blutter offsets in `../../dart-blutter/`.

## Related hosts

`rest.snakeseller.com/api/request/` (API) · `www.snakeengine.com/topup/` (purchase) ·
Firebase (`fennec-6d906`, messaging/installations/analytics) · Google OAuth
(`accounts` / `snakeengine.com/oauth/google`) · social/share links.

## Activation / subscription economy (server-authoritative)

Decrypted UI strings describe a **seller-based** licensing economy where **all validity lives on the
server**, not in any client-checkable algorithm:

| String (decrypted) | Meaning |
|---|---|
| "Congratulations, Key was activated successfully for" | activation is confirmed by the server |
| "You don't have enough balance to activate" | sellers hold a **server-side balance** |
| "The device you try to activate is BANNED" | server-side ban check |
| "You can't activate. Tier is not the same" | server-side tier check |
| "Create Key", "Key Details", "Activate For (*)" | keys are **records in the vendor DB**, minted by sellers |
| "You don't have any active subscription for this game." | per-game entitlement, checked in Dart against a server-fetched list |

**Consequence for analysis:** activation keys are **issued and validated server-side** (tied to
seller balance + ban/tier state) — a key is a database record rather than a value derived from a
client-side formula. The per-game **subscription** state in the Dart layer, and the game-patch
ciphertext that feeds `FUN_00160208`, are both delivered by the server for an entitled account.
(No local cached game-patch ciphertext exists — the app's `files/` directory holds only image
caches.)

## Native string interception (recovered live)

`Native.ilil(index)` decrypts a small set of sensitive native strings at runtime. Recovered values
(`recovered_strings.json`): `id_token`, `com.miniclip.googleplaygames.Authentication`, the Google
OAuth client id `918010152455-…`, `https://snakeengine.com/oauth/google`, `loginCallback`,
`onLoginResult` — i.e. the engine interacts with the target game's Google Play Games / Miniclip auth and
manages its own OAuth flow + callbacks. This is the account/entitlement component of the engine.
