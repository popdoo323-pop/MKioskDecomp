# Session handoff

Read this first if you are a new session with no context. Everything here was checked on disk; re-run the tools
rather than trusting a number from prose.

## What this project is

A partial reverse-engineering of `Turbo.rpx` (Turbo's Kiosk Demo, Wii U, PowerPC Espresso). It holds notes, symbol
tables, verification tools, and a few functions rebuilt from their original bytes. Nothing here is a full rebuild.

## Current numbers (regenerate, do not copy)

- `python tools/progress.py` regenerates `docs/progress.md`, `symbols/function_status.csv`, the treemap and badges,
  and the README progress block.
- `python tools/verify_matches.py --orig orig/Turbo.rpx` re-checks every matched function from its source.
- `python tools/audit.py` checks the claims on disk.

Matched functions are the only progress that counts. Hand-written C++ is marked HAND-WRITTEN, NOT YET MATCHED
and is counted separately.

## Environment

- Ghidra with the GhidraMCP bridge on port 8089 (project "MK8 Turbo.rpx Decomp").
- The WUT datatype archive (`wut-1.3.2-b98f8fc.gdt`) has been pasted into the program. Its types live under `/wut/...`.
  The 1-byte placeholders we created earlier (`OSThread`, `OSMutex`, and others) still sit at the root and need removing
  by hand in the Data Type Manager before prototypes are re-applied.
- Assembly is assembled with `powerpc-linux-gnu-as` and linked with `powerpc-linux-gnu-ld` (binutils 2.42).
- The compiler the game used is not identified. Frame-alignment evidence rules out default GCC/EABI.

## Method that works

1. Pick a small function from the vtable or a call chain.
2. Read its original bytes with Ghidra's disassembly.
3. Write the assembly by hand, with `.globl`, and link calls with `--define FUN_x=0xaddr`.
4. Prove it with `tools/asmmatch.py`, record it in `symbols/matches.csv` with status `matched`, and re-run
   `verify_matches.py`.

## Traps we have already fallen into

- A count going down after a change is not a fix. Re-verify before trusting a number.
- The course name lists are not aligned with the ID lists. Use `content/data/objflow.byaml` for ID-to-name.
- `ObjId 6003` is `Start` in objflow, not a bird. The bird is `1039`.
- Ghidra's `FUN_` names are placeholders. Do not treat a Ghidra name as verified.
- Ghidra's decompiler output is reading material, not source. It stays out of `src/`.
- Paste WUT types with copy and paste in the Data Type Manager. Do not drag them, which can create a second copy.
- Do not write files through a shell redirect. Verify bytes after any bulk edit.
- `git add -A` after running tools can stage files the tools wrote. Check `git status` first.

## Next steps, in order

1. Push the local work to GitHub.
2. Remove the 1-byte placeholders in the Data Type Manager. Re-apply the coreinit prototypes with the WUT names
   (`OSCondition` replaces the misnamed `OSCond`).
3. Run the devkitPPC frame-alignment test on the maintainer's PC (`tests/compiler/frame_test.c`) and record the
   result in `docs/compiler_notes.md`.
4. Find the rail movement consumer that reads a rail point's segment parameter (`+0x68`), starting from the rail
   holder's vtable at `0x10012dd0`.
5. Match more small functions, one at a time, with the method above.
