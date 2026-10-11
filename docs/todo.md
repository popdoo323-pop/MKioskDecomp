# Open items

Last updated 2026-10-10. Each item says what remains and what would close it.

## Resolved in this round
- `tc_CI_` icon prefix: found at 0x100a6fcc. `FUN_024a54b4` builds `ui/cmn/compeIcon/tc_CI_` + table name + `.tga`. Closes the question in `docs/verification.md`.
- `.bfgrp` strings: string and byte searches find no "bfgrp" or "grp" text in the binary. The two group files exist on disk, so the loader is still unidentified (see below).
- `FUN_023839d4` (kart part names, tire model loading): matched in assembly, 8716 bytes. Removed from the open list.
- Progress tracker: counts only `status=matched` rows. Trivial pipeline tests are reported separately.
- coreinit prototypes: argument counts match devkitPro WUT headers for 71 of 76. The five not compared are listed below.
- Matching: 88 functions matched and verified from source (see `symbols/matches.csv`). 23 of 201 units done (see `symbols/units.csv`).

## Next up (in order)
- [x] Push the local work to GitHub. Checked 2026-10-10: GitHub's `symbols/matches.csv` lists 88 matched functions, which includes the kart batch 4.
- [x] Remove the 1-byte placeholders (OSThread, OSMutex, OSEvent, OSAlarm, OSMessageQueue, OSFastMutex, FSClient, FSCmdBlock, OSCond) in the Data Type Manager, then re-apply the WUT prototypes so the decompile reads properly.
      Checked 2026-10-10: no 1-byte placeholders remain under these names. The eight types are the full WUT types (OSThread 1696 bytes, FSClient 5888, FSCmdBlock 2688, and so on). OSCond is not in the program. Prototypes spot-checked: OSLockMutex(OSMutex *) and FSInitCmdBlock(FSCmdBlock *). The other coreinit prototypes have not been re-checked one by one.
- [x] Run the frame test on the maintainer's PC (tests/compiler/frame_test.c) and paste the `findstr stwu` output so it can be recorded in docs/compiler_notes.md.
      Recorded 2026-10-10 in docs/compiler_notes.md: large test at 8 mod 16 gives Green Hills 38.9%, devkitPPC GCC 66.7%, game 46.5%. Green Hills is favoured. The prologue-shape check is still open (see Blocked).

## Repo and notes
- [ ] `include/Effect/TireMark.hpp`: the one literal TODO in code. Needs the tire mark update and render functions.
- [x] `symbols/coreinit_signatures.json`: all 91 entries compared against WUT at commit b98f8fc (docs/coreinit_prototype_check.md). Done 2026-10-10. `MEMAllocFromExpHeapEx` and `MEMAllocFromFrmHeapEx` match. `memcpy`, `memmove`, `memset` and `exit` are C library functions, not in WUT, so they cannot be checked against it. The nine real differences were fixed in Ghidra and in the record.
- [ ] `symbols/ground_state_fields.csv`: field offsets for 11 of 12 fields are unknown. Reflection registers names only.
- [ ] `include/Game/Item/ItemCoin.hpp`: the base class `ItemBase_` is unnamed.
- [ ] `include/Game/Race/RaceKartChecker.hpp`: the meaning of the value 999 at +0x38 is unknown.
- [ ] `include/Game/UI/LapCoinLayout.hpp`: offsets +0x54 and +0x65, the size 0x6c and the constant 3 are unverified.
- [ ] `include/Obj/ObjTire.hpp`: class name unconfirmed.
- [ ] `docs/terrain_types_crossref.md`: Glider Activator and Invisible Wall have no binary name. Materials Tec Road, Ocean Floor and Rainbow Road are unmapped. "Rainbow Road (Glass Sound)" is a lead to SNDG_GND_GLASS, not confirmed.
- [ ] `docs/terrain_types_crossref.md`: the "Bouncy?" special has no binary counterpart.

## Ghidra work (no compiler needed)
- [ ] Tire mark generator. `RecorderKartTireMark` has no references. Search for the code that calls the TireMark.bfres loader and its slot.
- [ ] Tire map object bounce response. Start from the vtable slots of `ObjTire`, around 0x100722a0. Checked 2026-10-10: that address is not in the game file. ObjTire function pointers are at 0x100722fc to 0x10072344, in a mixed registration list. No "bounce" strings in the binary. Still open (docs/ghidra_work.md).
- [ ] Writer of the terrain type read by `FUN_02072608`. Start from `mpCollidedGround` and the ground-hit code. See `docs/kcl_attribute_trace.md`.
- [ ] Writers of `mCoinNum` (RaceKartChecker +0x40): coin add, cap and loss.
- [x] Decompile the coin audio functions `FUN_022980cc`, `FUN_022d0ab8` and `FUN_02066730`. Done 2026-10-10 (docs/ghidra_work.md): the only coin sounds are the two COIN_THROWN effects on the N64 train and Bodysand ship; the coin pickup sound is not in these functions.
- [ ] Callers of the ItemCoin message handler at 0x02132ff4.
- [ ] `.bfgrp` loader: find the code that loads `content/audio/ground/*.bfgrp` and `mapobj/*/GROUP_*.bfgrp`.
- [ ] Imports: 662 of 668 still have no alias. Covering them needs GHIDRA_MCP_ALLOW_SCRIPTS=1 (your decision).

## Blocked
- [x] Byte matches for game functions: 88 matched in assembly (see `symbols/matches.csv`). C++ matching is still limited, because the original compiler is not identified. Stack-frame evidence rules out default GCC/EABI (see docs/compiler_notes.md).
- [ ] Progress against decomp.dev: matched functions now exist in the repo. Not yet submitted or compared there.

## Needs your input
- [ ] Enable Ghidra scripting for the alias pass (yes or no).
- [ ] Source of a Green Hills sample, if you have one, to test frame layout.
