# Kart part name building (FUN_023839d4, 0x023839d4)

The function builds resource names from a kart configuration struct (param_3) and name tables, then maps them to folders:
driver/, kart/body/, kart/wing/, kart/screw/, kart/tire/, kart/arm/, kart/emblem/, kart/body_tex/, kart/wing_tex/, driver_tex/.

Tire resource name format: `Tire%c_%s`. The `%c` comes from the letters K, B, T indexed by a class field (param_3[7]).
The `%s` is `table[tire id + 1]` from the 19-entry tire name list at 0x1014f508 (read from memory):

Invalid, Std, Big, Sml, Rng, Slk, Mtl, Btn, Ofr, Spg, Wod, Fun, Zst, Zbi, Zsm, Zrn, Zsl, Zof, Gld

(index 0 is "Invalid", so tire id -1 maps to it; abbreviation meanings are not confirmed.)

Other tables used (each indexed by id + 1, with "Invalid" first):
- driver names, 31 entries, string at 0x1014f350 (0xf6 bytes)
- body names, 27 entries, string at 0x1014f448 (0xbe bytes), names start K_Std, K_Skl, K_Ufo
- glider/wing names, 13 entries, string at 0x1014f56c (0x44 bytes), names start Std, Jgm, Wlo, Zng, Umb

Related: FUN_023a3800 builds the per-player resource pools (TireModelResource%d etc.).
