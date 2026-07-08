# Extracted Intelligence

Consolidated data pulled from the APK, its binaries, and decompiled output.

| File | Content |
|------|---------|
| `dependencies-NOTICES.txt` | Full decompressed Flutter NOTICES — every bundled open-source library + license (34,415 lines, 2317 sections) |
| `permissions.txt` | All 163 permissions requested in the manifest |
| `manifest-components.txt` | All activities / services / receivers / providers |
| `urls-endpoints.txt` | 116 URLs / domains extracted from all binaries |
| `firebase-and-keys.txt` | Firebase config + Google API key + OAuth client ID |
| `ui-strings-functional.txt` | 424 functional UI strings (EN / ES / Filipino / Malay) |

## Key discovered values

### Backend
- `https://rest.snakeseller.com/api/request/` — primary API (encrypted payload: `encryptedData`, `deviceId`, `timestamp`)
- `https://www.snakeengine.com/topup/` — top-up page

### Firebase (project `fennec-6d906`)
- google_api_key: `AIzaSyDitW-Y6M8-R2ejqmAL7yd2jqL9Gj_5ANs`
- google_app_id: `1:918010152455:android:84aea0e9d3230800664ca2`
- gcm_defaultSenderId: `918010152455`
- storage bucket: `fennec-6d906.firebasestorage.app`
- OAuth web client: `918010152455-ev1pjrrdjvp44r4bjme4ti3khom570eo.apps.googleusercontent.com`

### Databases / storage
- Firebase (cloud) + Analytics measurement SQLite DB
- Isar (Flutter embedded NoSQL, SQLite-backed) — local

### Feature set (from UI strings)
Seller panel (Global Seller, Code Sale, Account Manager, Accounts List, Create/Details Key),
device-locked activation (Enter code, Add Device, Device removed, ban system, Balance, Convert, Get Subscription),
Game Selection, update checker, Facebook login, feeds, notifications.
