# Repository conventions

This repository reconstructs `Turbo.rpx`. Every decision below is written so a new file can be added without asking.
Items marked TBD depend on the compiler identification, which is deferred.

## 1. Language

- Source files are C++. Headers are `.hpp`, implementations are `.cpp`.
- Assembly-first matches are `.s` files, kept under `src/asm/` with the same path as their C++ counterpart would have.
- No C source files are kept. The one earlier C file, `ItemCoin_Empty`, was renamed to `.cpp`.
- The C++ standard version, exception handling and RTTI settings are TBD until the compiler is identified.

## 2. Layout

| Path | Contents |
|---|---|
| `include/<System>/<Class>.hpp` | class declarations with observed offsets and placeholder banners |
| `src/<System>/<Class>.cpp` | implementations, one class per file |
| `src/asm/<System>/<Name>.s` | assembly-first matches, same path and name as the function's class file |
| `symbols/` | tables of addresses, names, imports and matches |
| `docs/` | notes, verification logs, and this file |
| `tools/` | verification and progress scripts |
| `config/` | hashes of the reference binaries |
| `orig/` | the maintainer's own dumps, git-ignored |
| `private/` | raw tables extracted from the game, git-ignored |

`<System>` is one of `Game`, `Item`, `Race`, `Obj`, `Effect`, `Audio`, `UI`, following the existing folders.
New systems are added only when a class needs one.

## 3. Naming

- Classes: PascalCase, matching the names the binary reflects where it has them (`RaceKartChecker`, `ItemCoin`).
- Methods: PascalCase (`LoadModel`, `UpdateTerrain`).
- Member fields: `m` followed by PascalCase (`mCoinNum`, `mRank`), following the reflected names in the binary.
- Free functions: PascalCase.
- Placeholder names for unidentified functions use the address: `<Class>_<Role>_<address>`, for example
  `ItemCoin_Vfn_02133298`. The address is the function's start in `.text`, lowercase, no `0x`.
- Enumerations: `enum class` with PascalCase names; values in UPPER_SNAKE_CASE, matching the binary's string lists.
- No namespaces until the game's namespace structure is known.

## 4. Headers

- Use `#pragma once` as the include guard.
- Each header starts with a placeholder banner if its names or offsets are not verified.
- Offsets are written as comments using hex, for example `// +0x304 animation handle`.
- Sizes are written as `static_assert` only once verified. Until then, state the size in a comment.
- Each member's comment says whether its offset is verified. Unverified offsets say so.

## 5. Implementations

- One class per `.cpp` file.
- A function body is written only by hand. Ghidra's decompiler output may be used as reading material, but it is not
  copied into `src/`. The assembly-first route in `docs/asm_matching.md` gives the matching evidence.
- A function is "matched" only when its assembled or compiled bytes equal the original. See section 7.
- Each `.cpp` file starts with a comment listing the function addresses it covers.

## 6. Evidence and wording

- Facts go in the notes with the address and the method that found them.
- Inferences are labelled as inferences. They do not appear as facts in headers or symbol tables.
- Names that have no evidence yet are proposals, marked as such.

## 7. What counts as matched

- A function counts as matched when `symbols/matches.csv` has `status=matched` for it.
- `status=trivial` entries are pipeline tests and are not counted.
- The method is recorded in the `compiler` and `flags` columns. Assembly-first matches record the assembler.
- Matches are counted per function. Partial matches do not count.

## 8. Progress reporting

- `tools/progress.py` regenerates `docs/progress.md`, `symbols/function_status.csv`, the treemap and the badges,
  and updates the README progress block.
- Units for the treemap come from `symbols/units.csv` when it exists, otherwise 64 KB blocks.
- Run it after each change to `symbols/matches.csv`.

## 9. Git

- Commit only notes, headers, sources, symbols, tools and the README.
- Never commit anything under `orig/` or `private/`, or any `.rpx`, `.rpl`, `.szs`, `.bfres` or `.tga`.
- Use one commit per logical change, with the message describing that change.
- Keep line endings normalised by `.gitattributes`.

## 10. Legal

- Repository text is CC0 1.0 (see `LICENSE`), except for what the game owns.
- Do not add game binaries, assets, or raw extracted data to the repository.
- See the legal section of the README.
