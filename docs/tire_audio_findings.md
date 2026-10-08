# Tires, terrain and ground audio (verified findings, 2026-10-07)

Binary SHA-256 `4dd6b2122cbb2faeb45c98e161835f36d509e9924347ccf0c1d816c421409c8d`. Names are proposals; the binary is stripped.
Notes only: no decompiled code is stored in this repo.

## Terrain type enum (32 entries, string list at 0x1014ab4c, read directly)
ROAD ROAD2 ROAD3 ROAD4 SAND LDIRT DIRT DIRT2 HDIRT ICE DASH GRAVITY GLIDE PULL BELT ITROAD RESQ WALL WALL2 WALL3 LWALL
ITWALL BWALL OUTF DUMMY0 CANNON TRIGGER SOUND VALLEY DUMMY2 DUMMY3 ZONE

## Ground and wall sound bank lookup
- `FUN_02080d0c` (0x02080d0c): arguments (uint *terrainType, int variant). Looks the terrain name up in the 32-name list, then scans a table
  of 29 rows x 9 pointers at 0x1014ac48 for a row whose first entry matches that name. It returns table entry (variant + 1) of that row.
- Full resolved table: local `private/terrain_sound_table.csv` (not in the repo). Row key, then variants 0-7 as bank file names, ".bars" omitted.
- Wall banks live under the WALL, WALL2, WALL3, LWALL, ITROAD, ITWALL and BWALL rows. BWALL variants: CREAM, BUSH, PLASTIC, LEAF, MORAY, TIRE, then GND_CLOTH and GND_CLOUD.
- `FUN_02392930` loads every bank: 32 terrain types x 8 variants, path built as "%s/%s" from an audio/ground path string.
- `FUN_02072608` is the per-frame tracker: it reads current terrain type (+0x210) and variant (+0x214), strips ".bars" and "SNDG_GND_" to get a
  material name, stores it at +0x218, and sets a flag byte at +0x1f1 to -1 for WBOARD, HBOARD or BONE, otherwise -2.
- Other audio files referenced: audio/turbo_sound_trial.bfsar, audio/bin/slink.bin, audio/bin/turbo_random_id.bsis,
  audio/driver/SNDG_%s.bars, audio/driver_menu/SNDG_M_%s.bars, /audio/driver_open/SNDG_N_%s.bars, audio/body/SNDG_*.
- Two `.bfgrp` group files exist in the dump: `content/audio/ground/SNDG_Road_Asphalt.bfgrp` and `content/mapobj/BarrelFlower/GROUP_Barrel.bfgrp`. String and byte searches find no "bfgrp" or "grp" text in the binary. The loader for these files is not identified; they may be loaded by another component or not used by the executable.

## Strings from the request that do not exist as written
- `SNDG_Road_Asphalt` is not a `.bars` bank. It exists as the group file `content/audio/ground/SNDG_Road_Asphalt.bfgrp`. The `.bars` asphalt bank is `SNDG_GND_ASPHALT.bars` (ROAD variant 0, ROAD3 variant 1).
- Strings found as `.bars` names: GND_GRASS, GND_STONE, GND_ASPHALT, GND_CARPET, WALL_BUSH, WALL_PLASTIC, WALL_SNOW, WALL_WOOD.

## Tire map object (class name unconfirmed; "ObjTirePiece" string at 0x10071a90, no references found)
- Vtable region around 0x100722a0 (8-byte entries). Overridden slots: 0x022ee1e4, 0x022ee224 (at 0x1007231c), 0x022ee384, 0x022ee4bc.
- Sound params bound: pSE_OBJ_TIRE_SLIDE, pSE_OBJ_TIRE_HIT, pSE_OBJ_TIRE_COL.
- Bounce / collision-response logic not yet located.

## Tire marks and kart tires
- Tire mark resource: /race_common/trail/TireMark.bfres (loaded in FUN_0238fbd4 and FUN_021814a4). The code that generates marks is not found yet.
- Strings: RecorderKartTire, RecorderKartTireMark (no references found), KartTireAntiG, Tire_RB/RF/LB/LF, "Tire%c_%s", "kart/tire/", ETireID,
  WheelSpinSmoke/Tire/Water/Wind, SE_KT_LAND_SKID_1..4, pSE_GND_SLIP.
- Per-player resource pools (FUN_023a3800): Driver, Emblem, Tire, Body, Arm, Wing models plus DriverSE and BodySE resources.

## Open items
- Find the tire mark generator. Not located; the `RecorderKartTireMark` string has no references.
- Find the bounce / collision response of the tire map object. Not located.
- Find the code that writes the terrain type read by `FUN_02072608`. See `docs/kcl_attribute_trace.md`.
- Identify the loader for the `.bfgrp` group files. See the note above.
