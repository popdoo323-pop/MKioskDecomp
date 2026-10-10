# Players (driver files)

`docs/driver_manifest.csv` lists the 35 driver `.szs` files from `content/driver` with their display names, sizes
and SHA-256 hashes. It was generated on the maintainer's PC. The files themselves are not in the repo.

Status:
- The `.szs` files are model and animation archives. They contain no code, so they are not matched.
- The character name list is a comma-separated string in .data at 0x10148c44 (about 245 bytes), starting `Invalid, Mario,
  Luigi, ...`. Nothing in the binary points into it directly.
- The reader has not been found. `0x02747d44` compares against the separator but loads other tables, so it is not the
  reader.

## Character IDs (from the Common.msbt message file)

`docs/driver_ids.csv` maps the character IDs 1001 to 1030 to their display names, taken from `Common.msbt` (the NLI1 index
maps each ID to a text entry). The file base names come from the name table that the driver registration code uses.
Rows marked `confirmed` have the same name in the code and in the text. Rows marked `check` need confirming: the pairing
between an ID and its name table entry is noisy for those, and the Baby, Toad, Rosalina, Waluigi, Mii and Roy rows are the
ones to check first.
