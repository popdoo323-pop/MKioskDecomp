# Reference projects

## shibbo/3DWDecomp (Super Mario 3D World + Bowser's Fury, Switch)
https://github.com/shibbo/3DWDecomp

What it does:
- Rebuilds each translation unit from C/C++ and compares it with the original using objdiff.
- Uses the game's own compiler (Clang for NX 1.8.14), which is kept in `tools/nnsdk/` and not published.
- Keeps `config/1.0.0/` split files, `configure.py` to generate `build.ninja` and `objdiff.json`, and `report.json` for decomp.dev.
- Reports progress per library: matched bytes, matched functions and units done.
- Uses a local progress hook that updates the README table on each commit.

What we can adopt:
- A per-library progress table with matched bytes and functions. Our `tools/progress.py` already produces a similar table.
- A `config/<version>/` folder for split and symbol files.
- A `report.json` snapshot for later decomp.dev upload, once the project has matches.

What we cannot adopt yet:
- The compiler. Their build needs the NintendoSDK compiler, which we don't have. Without the original toolchain, no function can match.
- Their AI-driven workflow with human review. Q6 and Q20 in `docs/decisions.md` need to be settled before we decide how to handle AI-assisted work.

## decomp.dev progress page (Super Mario 3D World + Bowser's Fury, uploaded 2026-10-08)
The page shows two measures: "decompiled" percent and "fully linked" percent, split into Code and Data.
Our tracker has one measure. We could add a decompiled measure (named and documented) next to a matched measure (byte-identical).
