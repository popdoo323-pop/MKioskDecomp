# Coin assets checked against the code (2026-10-08)

Source: the maintainer's MoreCoinStuff export. Only names, counts and sizes are recorded here. The files are not in the repo.

## UI layout: rc_L_LapCoin_00.bflyt (verified)
- Panes: T_Coin_00, T_Molec_00, T_Denomi_00, P_Coin_00, P_Lap_00, G_Coin_Text_00, W_CoinBase_00 and variants. The code
  binds T_Coin_00, T_Molec_00 and T_Denomi_00 in FUN_0251046c, so these match.
- Animations (rc_L_LapCoin_00_<name>.bflan): In, Out, Get_Coin, Color_Coin, Change_Lap, ColorPtn. The code sets up the same
  six groups in FUN_02510330, so these match.
- Textures: ym_Coin_00 and tc_Item_Coin (bflim, with PNG previews). These are the HUD textures. The compeIcon tga we
  already have is a different, menu-sized icon.

## Other race layouts
- rc_L_RaceInfo_00.bflyt has In, Out and Loop animations. It does not contain the coin pane. It is the race info layout
  loaded by FUN_02529b50.

## Sounds (verified against the code's event names)
- Found: SE_OBJ_COIN_GET_PL_1 to SE_OBJ_COIN_GET_PL_10, SE_ITM_Coin, SE_KT_DASH_COIN, SE_OBJ_COIN_BARA_1, SE_OBJ_COIN_BOSSHU,
  and the three SE_OBJ_BDSANDSHIP_COIN_THROWN_RND files.
- Missing: SE_OBJ_COIN_GET_PL_10_KEEP. The code has this event, the export does not.
- Question: the code has pSE_OBJ_N64RTRAIN_COIN_THROWN, but the export has SE_OBJCOIN_THROWN in SNDG_N64RTrain.bars. The
  two names differ. Either the bank uses a different event name, or the code refers to a different sound.

## Next: the coin-add logic
- The pickup animation Get_Coin is group index 1 on the counter (FUN_02510330 sets it up), and the counter text is
  T_Coin_00. The code that plays group 1 when a coin is collected, and the code that writes the count into T_Coin_00,
  are the two leads to trace. Both should read the kart's coin count (mCoinNum, RaceKartChecker +0x40).
