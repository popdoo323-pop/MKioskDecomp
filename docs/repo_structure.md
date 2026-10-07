# Repository structure

Modeled on SMGCommunity/Petari, adapted for a Wii U RPX.

| Path | Purpose |
|---|---|
| `include/Game/<System>/` | headers, one class per file, grouped by system (Item, Race, UI, ...) |
| `src/Game/<System>/` | implementations, mirroring `include/` |
| `config/symbols.txt`, `config/splits.txt` | address to name map, and which source file owns which address range |
| `symbols/`, `docs/` | our analysis notes (already in repo) |
| `tools/` | RPX verify/inspect scripts (already in repo) |
| `orig/` | your own dump, git-ignored |

Open items before this can be a real matching project:
1. Identify the compiler and flags used for the original build.
2. Pick a build + compare toolchain that supports PowerPC Cafe OS RPX (Petari's tooling targets GameCube/Wii DOL; check support).
3. Replace TODO bodies by hand and compare with objdiff or equivalent.
