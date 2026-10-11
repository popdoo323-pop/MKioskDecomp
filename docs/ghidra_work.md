# Ghidra work (todo section "Ghidra work"), status 2026-10-10

## Coin audio functions: done
- `FUN_022980cc` (372 bytes): setup for the N64 train object. Registers four sound effects, among them
  `pSE_OBJ_N64RTRAIN_COIN_THROWN`, builds 12 sound handles, looks up the `ElbowR` bone, then finishes through a virtual call.
- `FUN_022d0ab8` (628 bytes): setup for the Bodysand ship object. Looks up the Toad bones (`CmnToad_Left/Right`, `Rear`,
  `Top`), registers `pSE_OBJ_BDSANDSHIP_COIN_THROWN`, and looks up `ElbowR`.
- `FUN_02066730` (2864 bytes, `SoundEffectNames_Init`): builds the ground and wall sound effect names from the ground
  bank names (`SNDG_GND_`, `SNDG_WALL_`, `pSE_GND_LAND_%s`, `pSE_WALL_%s`). Not coin-related.
- Result: the only coin sounds are the two "coin thrown" effects on vehicles. The coin pickup sound is not in these functions.

## Callers of the ItemCoin message handler (0x02132ff4): open
- The handler is slot 0 of ItemCoin's 14-method vtable at `0x10016034` (entries 8 bytes apart, zero pad).
- Ghidra lists no direct callers, because the handler is reached through the vtable.
- Next: find the dispatcher that calls vtable slot 0 with a message struct (type at +8, argument at +0xc, handler at +0x10).

## Tire mark generator: partly done (see docs/tire_mark_generator.md)

## Not yet started
- Tire map object bounce response (ObjTire vtable near 0x100722a0).
- Writer of the terrain type read by FUN_02072608 (mpCollidedGround).
- Writers of mCoinNum (RaceKartChecker +0x40).
- The .bfgrp loader.
- Import aliases: needs your decision on GHIDRA_MCP_ALLOW_SCRIPTS=1.
