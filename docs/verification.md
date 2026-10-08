# Verification log (2026-10-07)

| Claim | Method | Result |
|---|---|---|
| Ghidra copy equals uploaded file | SHA-256 of both | identical `4dd6b212...409c8d` |
| Item type id of ItemCoin is 7 | read name table bytes at 0x1014c278 | 36 entries (= 0x24 bound), 388 bytes (= memcpy size 0x184), ItemCoin at index 7 when None = -1 |
| `/item/ItemCoin/ItemCoin.bfres` is a real asset | game files | `content\race_common\item\ItemCoin\ItemCoin.bfres` exists |
| `Coin/Coin.bfres` is a real asset | game files | `content\race_common\Coin\Coin.bfres` exists |
| "It_Coin" is a UI icon name | game files | `content\ui\cmn\compeIcon\tc_CI_It_Coin.tga` (128x128, 32 bpp, uncompressed); "tc_CI_" prefix found at 0x100a6fcc; built by FUN_024a54b4 as `ui/cmn/compeIcon/tc_CI_` + table name + `.tga` |
| Loader looks up an animation named "Wait" | read 0x1014cd8c = "Wait\0"; scan BFRES | ItemCoin.bfres has 1 FSKA block and the string "Wait"; Coin.bfres has no animation |
| Both models use the Turbo shader archive | strings in BFRES | `Turbo_UBER.bfsha` in both |
| RaceKartChecker offsets | re-decompiled FUN_0239993c | all header offsets match; added +0x28, +0x3c, +0x44 |
| ItemCoinManager offsets | re-decompiled FUN_02133314 | match |
| ItemCoin load offsets | re-decompiled FUN_02131994 | match; +0x304 is the "Wait" animation handle |
| LapCoinLayout offsets | re-decompiled FUN_0251046c | +0x58 +0x5c +0x60 +0x66 +0x67 match; others unverified |
| Import calls resolve by name | alias at stub-0xBC000000 | verified for memcpy; OSCreateThread, OSSetThreadName, OSSetThreadAffinity, OSResumeThread, OSBlockMove also aliased |

Limits: decompiler output is an interpretation of machine code. Nothing here is matched against a rebuilt binary.

## Corrections made
- "4ItemCoin" / "4CoinGet" are `ItemCoin` / `CoinGet` (leading `4` belongs to a preceding pointer).
- Earlier guess that type id 7 might be offset from the name list is resolved: name index = type id + 1.

## Checks against the full file listing (2026-10-08)

The listing covers 3,370 files under `content/`, plus `code/` and `meta/`. It is kept locally, not in the repo.

| Claim | Result |
|---|---|
| All 66 terrain bank names in the sound table are files on disk | confirmed (66 of 66) |
| `content/race_common/item/ItemCoin/ItemCoin.bfres` exists | confirmed |
| `content/race_common/Coin/Coin.bfres` exists | confirmed |
| `content/ui/cmn/compeIcon/tc_CI_It_Coin.tga` exists | confirmed |
| `content/race_common/trail/TireMark.bfres` exists | confirmed |
| `code/` binaries match the reference hashes | confirmed |
| "No `.bfgrp` string in the binary" | corrected: two .bfgrp files exist, but string and byte searches find no "bfgrp" or "grp" text in the binary; the loader is unidentified |
| "`SNDG_Road_Asphalt` is not present" | corrected: it exists as a .bfgrp group file |
