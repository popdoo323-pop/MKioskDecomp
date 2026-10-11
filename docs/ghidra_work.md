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

## Tire map object bounce response: open (2026-10-10)

Corrections to the lead in the todo:
- The todo's ObjTire vtable address `0x100722a0` is not in any section of the game file. The matching ObjTire function
  pointers are at `.rodata` 0x100722fc to 0x10072344: `ObjTire_CreateHelper` at 0x100722fc, `ObjTire_SoundSetup` at
  0x1007231c, `ObjTire_Helper_b` at 0x10072324 and `ObjTire_FrameUpdate` at 0x10072344.
- Those pointers sit in a mixed list. Bird methods (0x021f9bb8, 0x021f9c50, 0x021f9d20, ...) are interleaved with them,
  so it is a registration list, not the ObjTire class vtable on its own.

Findings:
- No pointer in the data points to the ObjTire class table on its own, so the class vtable is not found yet.
- The binary has no strings containing "bounce" (searched in .rodata and .data). The bounce logic is probably keyed to a
  terrain attribute value, not a name.

Next: find the ObjTire class vtable from the constructor, or find the bounce method from the terrain attribute
values read by the collision code (see docs/kcl_attribute_trace.md).
