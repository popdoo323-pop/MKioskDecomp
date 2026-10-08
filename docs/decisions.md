# Project decisions

Recorded 2026-10-08 from the questionnaire. Answers are letter choices (A-D). "Not decided" items stay open.

| Q | Question | Answer | Note |
|---|---|---|---|
| 1 | Main goal | D. Learning how the game works | Not a rebuild goal yet |
| 2 | Completeness | A. All of Turbo.rpx | |
| 3 | Done for one function | B and C. Readable C, and byte-identical | Both, so a function is done only when both hold |
| 4 | Function bodies in repo | D. Undecided | |
| 5 | Public repo | A. Public | |
| 6 | Game-derived strings and tables in repo | A. Yes | Conflicts with the earlier move of these tables to private/ (see below) |
| 7 | License | A. CC0 is fine | |
| 8 | Original compiler | No compiler; devkitPro and an archive.org Wii U dev-setup link found | See the warning below |
| 9 | Focus without compiler | All: naming, structs and vtables, compiler identification, tooling | |
| 10 | Compilers that count | D. Not decided | |
| 11 | First match | B. A function that makes a call | |
| 12 | First system | B. Tires and tire marks | |
| 13 | Coin focus | D. Not sure | |
| 14 | Finish trail and tire marks first | A. Yes | |
| 15 | Companion files in scope | D. Not sure | |
| 16 | Driver sound banks now | B. Later | |
| 17 | Ghidra scripting | A. Enable it | Set in the environment for the session, then turn it off |
| 18 | Alias pass for 668 imports | B. After the next target | |
| 19 | Unverified function names | A. Keep FUN_ names until verified | |
| 20 | Labeled inferences in docs | B. Only verified facts | Existing docs contain labeled inferences; they need review |
| 21 | Progress reporting | A. Table in docs/progress.md | |
| 22 | Detail per update | B. Full detail with addresses | |
| 23 | Status doc updates | C. No | |
| 24 | Second check of major claims | B. Major claims only | |
| 25 | Other game versions | Yes, but later | |
| 26 | PowerPC level | A. Beginner, explain everything | |
| 27 | Deliverable format | A. Zip with PowerShell commands | |
| 28 | Session length | C. Long, ongoing | |
| 29 | When stuck | A. Ask a question like the questionnaire | |
| 30 | Analysis before first match | D. Not sure | |

## Conflicts to resolve

- Q6 (A) says game-derived strings and tables can be in the public repo. Earlier we moved `terrain_sound_table.csv`, `coin_strings.csv` and `kart_part_names.md` to a local `private/` folder. Decide whether to restore them.
- Q20 (B) says only verified facts go in docs. Several notes contain labeled inferences, for example the editor-to-binary mapping and the `T_Denomi_00` reading. They should move to a clearly separate section or be removed.
- Q3 (B and C) means a function is not done until it is byte-identical as well as readable. Without the original compiler, no function can meet the second condition.

## Compiler warning

The archive.org item linked in Q8 appears to contain Nintendo development tools. Nintendo's SDK is not publicly licensed, so this project does not use it. devkitPro (github.com/devkitPro) is open source and legitimate. Its GCC-based toolchain is not the game's compiler, and our frame-alignment test rules out a GCC default build for Turbo.rpx (see docs/compiler_notes.md).
