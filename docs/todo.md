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

## Speed-up plan (goal: readable C++ in src/, every function byte-verified)
Ordered by how much each step speeds up the work. Items 1 to 4 need no decision and remove most of the manual steps.

- [x] 1. Export every function boundary from Ghidra to `symbols/functions_ghidra.csv` (address, name, size, call count),
      in one paged pass over search_functions. Then sizes and boundaries come from the file, not one Ghidra call each.
      Finishes when the file has about 32,800 rows.
- [x] 2. Write `tools/batch_match.py`: take addresses from functions_ghidra.csv, convert each with disasm_to_asm.py, check
      with asmmatch.py, record every MATCH in symbols/matches.csv and list the failures. Replaces the hand-run scripts.
      Finishes when one command matches a batch of 100 functions and writes the record.
- [ ] 3. Add one command, `tools/make_verify.py`, that runs verify_matches, verify_units, build_units and progress and
      prints a one-line summary. Finishes when one command gives the same numbers as the separate scripts.
- [ ] 4. Export Ghidra decompiler output for matched functions to `src/decompiled/<area>/<name>.c` as drafts, using
      batch_decompile in groups of 20. Gives every matched function a readable starting point.
- [ ] 5. Add a "decompiled" status to symbols/matches.csv and the progress tool, counted separately from matched bytes
      (already in section 1). Finishes when progress.md shows both counts.
- [ ] 6. Create `symbols/names.csv` (address, name). disasm_to_asm.py and the export use it, so generated labels and C++
      calls read as names instead of addresses. Finishes when the converter uses the file.
- [ ] 7. Write `tools/scan_vtables.py`: find class vtables and their method lists automatically, writing
      `symbols/classes.csv`. Replaces the manual vtable reads (bird, tire, ground state). Finishes when the bird and ObjTire
      tables are found without manual steps.
- [ ] 8. Group by class: one unit and one source file per class (`src/Game/<area>/<Class>.cpp` and `.hpp`) holding its
      matched functions, with the header generated from symbols/classes.csv. Finishes when the first class file builds.
- [x] 9. Decision made 2026-10-10: Ghidra scripting is enabled and stays on (export and alias pass need it). Previously: enable Ghidra scripting (GHIDRA_MCP_ALLOW_SCRIPTS=1). It lets renames, type changes and the
      import alias pass run in one call instead of one call per item. Turn it off afterwards.
- [ ] 10. BLOCKER for C++ byte matches: identify the game's compiler settings. Write `tools/flag_search.py` to compile the
       C++ sources of matched functions over a flag matrix (-O levels, -signedptr/-unsignedptr, register options) with
       cxppc, and rank the settings by matches. Run it on the maintainer's PC. Finishes when one setting byte-matches a
       function that has register choices, which the assembly route cannot show.
- [ ] 11. C++ for each function: clean the decompiled draft, compile with the confirmed setting, and verify. Starts only
       after item 10. Until then, matching stays in assembly, which is verified now.

## Bugs found 2026-10-10
- [ ] symbols/functions_ghidra.csv was cut off at 0x024b2636 (from a section size field). The code section ends at 0x029a9a48, so the file had 13,699 functions instead of 31,507. The batch matcher only drew from the first part. The file is now corrected and batch_match.py uses the right end. Re-run the batch over the rest, and check the 3 call sites that still have no enclosing function.

## Repo and notes
- [ ] `include/Effect/TireMark.hpp`: the one literal TODO in code. Caller search 2026-10-10: all 100 virtual calls through offset +0x28 checked. None refers to the trail code directly. FUNC_021825cc has no direct references. 32 call sites are in loops, and the one examined (FUN_0216bbc4) calls slot +0xfc on its children, so the loop filter gives false positives. Caller not confirmed. Still open.
- [x] `symbols/coreinit_signatures.json`: all 91 entries compared against WUT at commit b98f8fc (docs/coreinit_prototype_check.md). Done 2026-10-10. `MEMAllocFromExpHeapEx` and `MEMAllocFromFrmHeapEx` match. `memcpy`, `memmove`, `memset` and `exit` are C library functions, not in WUT, so they cannot be checked against it. The nine real differences were fixed in Ghidra and in the record.
- [x] `symbols/ground_state_fields.csv`: verified 2026-10-10. Only mGndAttr (+0x5c) has a fixed offset. The other 11 are reflection list entries (FUN_023b70d0 appends them to the list at +0x84), so they have no fixed offset.
- [ ] `include/Game/Item/ItemCoin.hpp`: the base class `ItemBase_` is unnamed.
- [x] `include/Game/Race/RaceKartChecker.hpp`: the value 999 at +0x38 verified 2026-10-10. It is the milliseconds part of the 9:59.999 maximum-time sentinel (minutes 9 at +0x34, seconds 59 at +0x36). The constructor sets it, and FUN_0239a810 sets it when a time overflows. Not a coin cap.
- [x] `include/Game/UI/LapCoinLayout.hpp`: offsets +0x54 and +0x65, the size 0x6c and the constant 3 verified against FUN_02525904 (decompiled 2026-10-10).
- [ ] `include/Obj/ObjTire.hpp`: class name unconfirmed.
- [ ] `docs/terrain_types_crossref.md`: Glider Activator and Invisible Wall have no binary name. Materials Tec Road, Ocean Floor and Rainbow Road are unmapped. "Rainbow Road (Glass Sound)" is a lead to SNDG_GND_GLASS, not confirmed.
- [ ] `docs/terrain_types_crossref.md`: the "Bouncy?" special has no binary counterpart.

## Ghidra work (no compiler needed)
- [ ] Tire mark generator. `RecorderKartTireMark` has no references. Search for the code that calls the TireMark.bfres loader and its slot.
- [ ] Tire map object bounce response. Start from the vtable slots of `ObjTire`, around 0x100722a0. Checked 2026-10-10: the address is in the data (an earlier note wrongly said otherwise). The table at 0x100722a0 mixes bird and ObjTire methods. Candidates: 0x022f2404 sets flag bit 0x2 at +118 (defined in Ghidra as ObjTire_SetFlag2_022f2404), and 0x022f23f4 forwards a virtual call. Their callers are not found yet. No "bounce" strings in the binary. Still open (docs/ghidra_work.md).
- [ ] Writer of the terrain type read by FUN_02072608. Checked 2026-10-10: the value at +0x210 comes from FUN_0218624c, which reads word +0x1e0 of the sub-object at +0x24 of the object at +0xd0. Constraint: FUN_02080d0c uses it as an index into a 32-entry name table, so terrain is 0 to 31. Ruled out: FUN_020722b0, FUN_02070a88, FUN_020725cc, FUN_02078de4, FUN_02071720, FUN_023c0e30, FUN_023c020c (values up to 0x48a8), FUN_023a5328. Also ruled out: the kart byte at +0xcbe, which FUN_023a5328 reads. Its three stores are all in the kart part builder FUN_023839d4, which writes a bitfield from table data once, not a surface index. FUN_023c01c0 has 12 callers, mostly in the ground and kart code. Still open: no 0 to 31 writer of that field found.
- [x] Writers of `mCoinNum` (RaceKartChecker +0x40): coin add, cap and loss, verified 2026-10-10. Cap: setter FUN_0239a140 clamps to 0..10. Add: FUN_0239a22c, with +2 and +1 pickups. Loss: FUN_02220678 drops coins and subtracts the spawned count. Reset: FUN_0239ac5c from a table. Not yet classified: FUN_020f5384 and FUN_021cd208, plus the direct stores in the constructor and FUN_02399bd4.
- [x] Decompile the coin audio functions `FUN_022980cc`, `FUN_022d0ab8` and `FUN_02066730`. Done 2026-10-10 (docs/ghidra_work.md): the only coin sounds are the two COIN_THROWN effects on the N64 train and Bodysand ship; the coin pickup sound is not in these functions.
- [ ] Callers of the ItemCoin message handler at 0x02132ff4. Checked 2026-10-10: no direct references. It is slot 0 of the ItemCoin vtable at 0x10016034. The coin per-frame update FUN_02132798 is also not called directly. It is stored in a second table at 0x10016304 (table start not found, so its slot is unknown). It awards the +2 pickup when the coin's timer runs out. The generic dispatcher that calls slot 0 or the update slot is not found yet. Still open.
- [ ] `.bfgrp` loader: find the code that loads content/audio/ground/*.bfgrp and mapobj/*/GROUP_*.bfgrp. Checked 2026-10-10: the binary has no .bfgrp literal. The startup groups GROUP_STARTUP_SE and GROUP_STATIC go FUN_020424f8, FUN_02039948, FUN_02633bcc, FUN_025965e8, FUN_02596374. FUN_02596374 dispatches on the top byte of the resource ID. Type 2 goes to FUN_02596240, which is the group loader: it resolves a group name to a range of resource IDs (FUN_02592980), then loads each one (type 1 via FUN_02595820, type 3 via FUN_0259592c). Still open: the file path is built in FUN_02592980 or the archive data, not yet read. The ground directory string is at 0x100886c5 with no direct loader.
- [x] Imports alias pass, verified 2026-10-10: 621 import stubs in the export. 619 now have an alias (21 existed, 598 created by CreateImportAliases.java, verified by CheckImportAliases.java). The 2 left out, Finalize__Q2_2nn3ndmFv (0xc00100a8) and ResumeDaemons__Q2_2nn3ndmFUi (0xc0010128), map to 0x040100a8 and 0x04010128, which are outside the .import_alias block (0x04000000 to 0x0400ffff). Adding those would change the memory map, so they stay out unless you decide to extend the block.

## Blocked
- [x] Byte matches for game functions: 88 matched in assembly (see `symbols/matches.csv`). C++ matching is still limited, because the original compiler is not identified. Stack-frame evidence rules out default GCC/EABI (see docs/compiler_notes.md).
- [ ] Progress against decomp.dev: matched functions now exist in the repo. Not yet submitted or compared there.

## Needs your input
- [x] Enable Ghidra scripting for the alias pass: yes, enabled 2026-10-10 and kept on.
