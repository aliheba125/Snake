# 00 — Project Overview

> **Status legend (used across ALL docs):**
> ✅ Confirmed (proven by reproducible evidence) · 🟨 Partially Confirmed · 🟦 In Progress · ⬜ Not Started · ❓ Unknown · ❌ Disproved

---

## What this project is

A **defensive reverse-engineering study** of the Android application **Snake Engine**
(`com.snake`, version `2.2.6`) — a Flutter-based commercial "game-cheat / enhancement"
platform sold to resellers. The goal of the study was to understand, with **evidence**, how the
app communicates with its backend, how its cryptography works, and how its device-activation
system operates.

This repository is the **single source of truth** for that study. Everything here is labelled
with an explicit confidence status. Nothing is asserted as fact without linked evidence.

## The application in one paragraph

Snake Engine is a subscription-based tool that claims to enhance popular mobile games
(8 Ball Pool, Carrom Pool, Soccer Stars). It ships three native libraries: a Flutter/Dart
front-end (`libapp.so`), the Flutter engine (`libflutter.so`), and a heavily obfuscated native
"engine" (`libengine.so`). At cold launch it sends a single encrypted **beacon** (the `z`
parameter) to a Google Cloud Run endpoint. Users activate the app on their device with a
6‑digit **Entry Key** bought from a reseller; sellers manage subscriptions through a separate
authenticated REST API.

## Headline results (with status)

| # | Result | Status |
|---|--------|--------|
| 1 | The `z` beacon is `0x0c` (pad-length byte) ‖ **AES‑256‑ECB**(master_key, plaintext) | ✅ Confirmed |
| 2 | The AES key is **derived from wall-clock time** (`floor(unix/16)` bucket) and was **reproduced offline, byte-for-byte** | ✅ Confirmed |
| 3 | The server **decrypts `z`** and keys its reply to the nonce+time embedded in `z` (challenge/response) | ✅ Confirmed |
| 4 | The `z` endpoint has **no authenticity check, no cert pinning, no attestation, no IP filter** | ✅ Confirmed |
| 5 | `libengine.so` contains **zero asymmetric cryptography** — activation crypto is symmetric | ✅ Confirmed |
| 6 | Entry-Key validation is **fully local** (no network) and uses libengine's AES | ✅ Confirmed |
| 7 | The exact **Entry-Key algorithm** and whether a valid key can be **forged** | ❓ Unknown / ⬜ Not achieved |
| 8 | Any **activation bypass** or **seller-account access** | ❌ Not achieved (not demonstrated) |

## What was explicitly NOT achieved (honesty first)

- No valid Entry Key was generated. Activation was **not** bypassed.
- The seller REST API (`rest.snakeseller.com`) was **not** accessed (requires credentials).
- The exact activation KDF/comparison remains undetermined (blocked by OLLVM obfuscation +
  `.text` anti-tamper).

## How to read this repository

Follow the numbered docs in order (see [`../MASTER_INDEX.md`](../MASTER_INDEX.md)). Every claim
links back to evidence in [`../EVIDENCE_MATRIX.md`](../EVIDENCE_MATRIX.md). Open questions live in
[`../UNKNOWNS.md`](../UNKNOWNS.md); the plan is in [`../ROADMAP.md`](../ROADMAP.md).

## Environment used

- Host: AWS EC2 (Graviton, ARM64). Live device: **Redroid 14** (Android 14, `arm64-v8a`) in Docker.
- Dynamic instrumentation: **Frida Gadget** (listen mode) injected via `LD_PRELOAD`
  (`wrap.com.snake`), plus `/proc/<pid>/mem` reads as root.
- Static tools: Ghidra (native), jadx (Java), Blutter (Dart AOT), apktool (resources).

> Note on ethics/scope: this is analysis of an app that itself facilitates game cheating. The
> study is documentary/defensive — it maps how the system works and where its security actually
> lies. No key generator, cracked key, or server attack was produced.
