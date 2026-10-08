# Open items

Last updated 2026-10-08. Each item says what remains and what would close it.

## Resolved in this round
- `tc_CI_` icon prefix: found at 0x100a6fcc. `FUN_024a54b4` builds `ui/cmn/compeIcon/tc_CI_` + table name + `.tga`. Closes the question in `docs/verification.md`.
- `.bfgrp` strings: string and byte searches find no "bfgrp" or "grp" text in the binary. The two group files exist on disk, so the loader is still unidentified (see below).
- `FUN_023839d4` (kart part names, tire model loading): already decompiled. Removed from the open list.
- Progress tracker: counts only `status=matched` rows. Trivial pipeline tests are reported separately.
- coreinit prototypes: argument counts match devkitPro WUT headers for 71 of 76. The five not compared are listed below.

## Next up (in order)
- [ ] Push the local work to GitHub (`git status`, `git add -A`, `git commit`, `git push`).
- [x] Remove the 1-byte placeholders (OSThread, OSMutex, OSEvent, OSAlarm, OSMessage, OSMessageQueue, OSFastMutex, FSClient, FSCmdBlock, OSCond); 41 coreinit prototypes re-applied with WUT names in the Data Type Manager, then re-apply the WUT prototypes so the decompile reads properly.
- [ ] Run the frame test on the maintainer's PC (tests/compiler/frame_test.c) and paste the `findstr stwu` output so it can be recorded in docs/compiler_notes.md.

## Done this round
- [x] FS imports typed from WUT: 14 functions at stub and alias addresses (FSInitCmdBlock alias added). FSFlushQuota has no WUT declaration.
- [ ] Remaining unsigned coreinit imports: about 60 (see symbols/imports.csv and symbols/function_status.csv).

## Repo and notes
- [ ] `include/Effect/TireMark.hpp`: the one literal TODO in code. Needs the tire mark update and render functions.
- [ ] `symbols/coreinit_signatures.json`: argument types for 71 are not fully compared. Five remain: `MEMAllocFromExpHeapEx` and `MEMAllocFromFrmHeapEx` exist in WUT but were not compared; `memcpy`, `memmove` and `exit` are standard C.
- [ ] `symbols/ground_state_fields.csv`: field offsets for 11 of 12 fields are unknown. Reflection registers names only.
- [ ] `include/Game/Item/ItemCoin.hpp`: the base class `ItemBase_` is unnamed.
- [ ] `include/Game/Race/RaceKartChecker.hpp`: the meaning of the value 999 at +0x38 is unknown.
- [ ] `include/Game/UI/LapCoinLayout.hpp`: offsets +0x54 and +0x65, the size 0x6c and the constant 3 are unverified.
- [ ] `include/Obj/ObjTire.hpp`: class name unconfirmed.
- [ ] `docs/terrain_types_crossref.md`: Glider Activator and Invisible Wall have no binary name. Materials Tec Road, Ocean Floor and Rainbow Road are unmapped. "Rainbow Road (Glass Sound)" is a lead to SNDG_GND_GLASS, not confirmed.
- [ ] `docs/terrain_types_crossref.md`: the "Bouncy?" special has no binary counterpart.

## Ghidra work (no compiler needed)
- [ ] Tire mark generator. `RecorderKartTireMark` has no references. Search for the code that calls the TireMark.bfres loader and its slot.
- [ ] Tire map object bounce response. Start from the vtable slots of `ObjTire`, around 0x100722a0.
- [ ] Writer of the terrain type read by `FUN_02072608`. Start from `mpCollidedGround` and the ground-hit code. See `docs/kcl_attribute_trace.md`.
- [ ] Writers of `mCoinNum` (RaceKartChecker +0x40): coin add, cap and loss.
- [ ] Decompile the coin audio functions `FUN_022980cc`, `FUN_022d0ab8` and `FUN_02066730`.
- [ ] Callers of the ItemCoin message handler at 0x02132ff4.
- [ ] `.bfgrp` loader: find the code that loads `content/audio/ground/*.bfgrp` and `mapobj/*/GROUP_*.bfgrp`.
- [ ] Imports: 662 of 668 still have no alias. Covering them needs GHIDRA_MCP_ALLOW_SCRIPTS=1 (your decision).

## Blocked
- [ ] Byte matches for any game function. The original compiler is not identified. Stack-frame evidence rules out default GCC/EABI (see docs/compiler_notes.md).
- [ ] Progress against decomp.dev: no matched functions yet.

## Needs your input
- [ ] Enable Ghidra scripting for the alias pass (yes or no).
- [ ] Source of a Green Hills sample, if you have one, to test frame layout.
