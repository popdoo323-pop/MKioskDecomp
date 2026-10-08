# Coin decompilation, round 5 (2026-10-08)

Source assets: the maintainer's CoinStuff export. Only names, counts and sizes are recorded here. The files are not in the repo.

## Asset checks against the code

- `ItemCoin/Wait.anim`: a Maya animation for the ItemCoin node. It runs 120 frames (0 to 120) and has rotation and scale
  channels (rotateX/Y/Z, scaleX/Y/Z). The code looks up an animation named "Wait" (FUN_02131994 via FUN_02741100), and the
  bfres contains "Wait", so the name matches.
- `tc_CI_It_Coin.tga`: 128 by 128, 32 bits per pixel, uncompressed (image type 2). This is the `ui/cmn/compeIcon/tc_CI_`
  prefix plus the name `It_Coin`, built by FUN_024a54b4.
- `Coin_Alb.png` and `ItemCoin/ItemCoin_Alb.png` are byte-identical (same albedo texture for both coins).
- `Coin_Nrm.png` and `ItemCoin/ItemCoin_Nrm.png` are byte-identical. The specular maps differ, so the two coins have
  different specular.
- `Turbo_UBER.bfsha` appears twice with different sizes (39424 and 39168 bytes). Two shader builds exist, or one is an export
  artefact. This needs checking before either is treated as the game's shader.
- `Coin.fbx` (35392 bytes) and `ItemCoin/ItemCoin.fbx` (35536 bytes) are different models.

## Decompiled this round

- FUN_02119264: the shared reset routine called by the ItemCoin reset (FUN_0211b830). It sets about 60 fields on the item
  object to zero, one, or a fixed constant from the data table at 0x101c6890 to 0x101c68b0. Many stores are quantised
  through the paired-single control register (GQR), using ldexpf for the scale. It also calls FUN_020db0b4 when the object at
  +0x1fc is set, and clears a flag at +0x1a9.

## Assessment

FUN_02119264 is not a good first match. It has many branches on the GQR type, so matching it by hand would mean reproducing
the compiler's layout for each case. The item reset (FUN_0211b830) calls it, so the reset matches depend on this routine.

## Next

- Match a smaller coin function first. Candidates from the inventory: the ItemCoin wrappers already matched, and the 16-byte
  dispatch and helpers listed in docs/decompiled_round4.md.
- Find the code that adds a collected coin to the kart's coin count (writers of RaceKartChecker +0x40). This is the coin
  logic we have not found yet.
- Check the two Turbo_UBER.bfsha files before using either as reference.
