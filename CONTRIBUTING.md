# Contributing

Thanks for looking at this. The project is a reverse-engineering of a commercial game, so the rules below keep it
honest and legal.

## What to contribute

- Notes, symbol tables, verification tools and corrections to existing notes.
- Function bodies that are matched: written by hand, with the bytes proven by `tools/asmmatch.py`, and recorded in
  `symbols/matches.csv`.
- Hand-written C++ is welcome, but it is marked `HAND-WRITTEN, NOT YET MATCHED` until its bytes match.

## What not to contribute

- Game binaries, assets, extracted data, or the dumps themselves. `.gitignore` blocks the common formats, and
  `orig/` and `private/` stay on your machine.
- Decompiler output pasted as source. Ghidra's output is a starting point for reading, not code to commit.
- Claims of a match that the verifier does not reproduce.

## Before you open a change

1. `python tools/progress.py` to regenerate the progress outputs.
2. `python tools/verify_matches.py --orig orig/Turbo.rpx` if you have a dump.
3. `python tools/audit.py` and fix any FAIL.
4. Check `git status` and stage only the files you meant to change.

## Style

- C++ files follow `docs/conventions.md`: PascalCase names, `#pragma once`, one class per file, and a banner on
  any file whose names or offsets are not verified.
- Say whether a claim is verified or inferred, and what evidence supports it.
