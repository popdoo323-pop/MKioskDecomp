# Open items

Last updated 2026-10-08. Each item says what finishes it. A function is done only when the verifier passes for it.
Progress numbers come from `python tools/progress.py`, never from this file.

## 1. Decompile more of Turbo.rpx
Goal: every function in a target class is decompiled and recorded with its address, size, purpose and calls.

- [ ] ItemCoin: the remaining functions in the class inventory (`docs/class_inventory.md`). Start with `0x0211b830`
      (77 instructions, one call).
- [ ] ObjTire: `0x022ee4bc` (update, 111 instructions, no calls) and `0x022ee224` (sound parameters).
- [ ] TireMark / trail manager: the child constructor `0x021a82b4`, the wheel callbacks `0x021a7bb4` to `0x021a7dd8`,
      and the rail holder vtable at `0x10012dd0`.
- [ ] RaceKartChecker: constructor `0x0239993c` (166 instructions, 20 calls) after the call handling is proven on smaller functions.
- [ ] Bird and rails: the consumer of the rail segment parameter (`+0x68`), reached through the holder's virtual slots.
- [ ] Record every decompiled function in `docs/decompiled_roundN.md` and mark it `decompiled` in `symbols/matches.csv`
      (add the status to the progress tool so decompiled bytes are counted separately from matched bytes).

## 2. Byte matching
Goal: each function reproduced byte-for-byte, with `verify_matches.py` passing for every row.

- [ ] Write each candidate as assembly by hand from its original bytes, prove it with `asmmatch.py`, and record it in
      `symbols/matches.csv` with status `matched`.
- [ ] Re-run `python tools/verify_matches.py --orig orig/Turbo.rpx` and `python tools/audit.py` after every batch.
      Both must pass before a batch is committed.
- [x] First C++-linked match: RailPoint::LinkNext = 0x021090a8 (96 bytes, verified).
- [ ] Next matches, in order (see docs/src_status.md, "Matching map"): ItemCoin reset 0x0211b830, ObjTire update 0x022ee4bc, rotation 0x020fbe88, rail builder 0x02109198.
- [ ] Match in this order: leaf and tail-call functions first, then functions with one call, then larger ones.
- [ ] Windows: set `POWERPC_AS` and `POWERPC_LD` to the devkitPPC `powerpc-eabi-as.exe` and `powerpc-eabi-ld.exe`
      (see `tools/asmmatch.py`). Without them the verifier reports a missing toolchain, not a failure.
- [ ] After each batch: `python tools/progress.py` to update `docs/progress.md`, the treemap, the badges and the README.

## 3. Clear the NOT YET MATCHED files
Goal: no file in `include/` or `src/` carries the banner `HAND-WRITTEN, NOT YET MATCHED` unless it is truly unmatched.

The eight files are:
- `include/Common/StateMachine.hpp`, `src/Common/StateMachine.cpp`
- `include/Game/Item/ItemCoinStates.hpp`, `src/Game/Item/ItemCoinStates.cpp`
- `include/Game/MapObj/RailPath.hpp`, `src/Game/MapObj/RailPath.cpp`
- `include/Game/MapObj/RailPoint.hpp`, `src/Game/MapObj/RailPoint.cpp`

For each file, one of these must happen:
- [ ] Map each function to the game function it describes, match that game function in assembly (section 2), and change
      the banner to `MATCHED` only when every function in the file is matched.
- [ ] Or keep the banner and say why the function cannot be matched (for example it calls a library routine whose
      code we have not identified).
- [ ] Or remove the file if the function is not in the game.

Note: C++ bodies that call library code (such as `RailPoint::SetRotationFromEuler`, which uses cos and sin) cannot be
byte-matched in C++ without the game's compiler. They can only be matched in assembly against the original function.

The seven PLACEHOLDER headers (`include/Audio/GroundAudio.hpp`, `include/Effect/TireMark.hpp`, `include/Game/Item/ItemCoin.hpp`,
`include/Game/MapObj/Bird.hpp`, `include/Game/Race/RaceKartChecker.hpp`, `include/Game/UI/LapCoinLayout.hpp`,
`include/Obj/ObjTire.hpp`) stay as placeholders until their names and offsets are verified.

## 4. Coreinit imports (Ghidra)
- [ ] 61 coreinit functions are still unsigned. Type them from the WUT headers in batches, as done for the FS functions.
- [ ] `FSFlushQuota` has no WUT declaration. Leave it unsigned unless another source is found.
- [ ] Decide whether to enable Ghidra scripting (`GHIDRA_MCP_ALLOW_SCRIPTS=1`) for the alias pass over all 668 imports.
      Turn it off again afterwards.

## 5. Blocked
- [x] devkitPPC (GCC-based) ruled out as the game's compiler by the larger frame test (see `docs/compiler_notes.md`).
- [ ] Compiler still unidentified. Leading hypothesis: Green Hills. Needs a Green Hills sample to test against.
- [ ] Movement along rails needs the function that reads the rail segment parameter.

## 6. Needs your input
- [ ] Commit and push the pending work: `MKioskDecomp_toolfix.zip`, `MKioskDecomp_fs_round.zip`.
- [ ] Run the larger frame test on your PC and paste the `findstr stwu` output.
- [ ] Decide on Ghidra scripting (section 4).
