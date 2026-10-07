# MKioskDecomp

Reverse-engineering notes and tooling for `Turbo.rpx` (Wii U, PowerPC Espresso).

This repository contains **no** game binaries, assets or decompiled game code.
Bring your own dump, place it in `orig/`, and verify it against `config/hashes.txt`.

## Layout

- `tools/` – RPX inspection / verification scripts
- `symbols/imports.csv` – the 652 import symbols (name, library, address)
- `docs/` – binary notes and analysis log
- `config/hashes.txt` – reference hashes of the analysed files
- `orig/` – your local copy of the binaries (git-ignored)

## Quick start

    python tools/rpx_verify.py orig/Turbo.rpx --sha256 <hash from config/hashes.txt>
