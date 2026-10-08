# Coin assets to send (found in the binary, 2026-10-08)

Names are taken from Turbo.rpx strings. Files are not in the repo.

## Sound events (in the sound banks)
- SE_OBJ_COIN_GET_PL_1 to SE_OBJ_COIN_GET_PL_10, and SE_OBJ_COIN_GET_PL_10_KEEP: pickup sounds.
- SE_ITM_Coin: item coin sound.
- SE_KT_DASH_COIN: dash sound from coins.
- SE_OBJ_COIN_BARA_1 and SE_OBJ_COIN_BOSSHU: coin burst sounds.
- pSE_OBJ_N64RTRAIN_COIN_THROWN and pSE_OBJ_BDSANDSHIP_COIN_THROWN: thrown-coin sounds for two courses.

## UI (race HUD)
- L_LapCoin_00: the coin counter pane. It is built by FUN_02525904 and FUN_0251046c.
- T_Coin_00: the coin count text.
- Race HUD layouts that may contain the coin pane: rc_L_RaceInfo_00.bflyt (loaded by FUN_02529b50),
  rc_RaceView_Cmn_00.bflyt, rc_RaceView_1P_00.bflyt, rc_RaceView_2P_Ml.bflyt.

## Animations (in .bflan files, named <layout>_<animation>.bflan)
- Get_Coin: the coin pickup animation on the counter.
- Color_Coin: the colour animation for the counter.
- In, Out, Change_Lap, ColorPtn: other counter animations (shared with the lap counter).

## Already sent
- Coin.bfres, ItemCoin.bfres, tc_CI_It_Coin.tga, Wait.anim and the coin textures (CoinStuff.zip).

## Find them on your PC
Run these in the MKiosk content folder:

    findstr /s /m "L_LapCoin_00" content\ui\*.bflyt
    findstr /s /m "L_LapCoin_00" content\*.bflyt
    dir /s /b *Coin*.bflan
    dir /s /b *Get_Coin*.bflan
    dir /s /b *Coin*.bars
    dir /s /b *COIN*

The first two list the layout files that contain the coin pane. The third to fifth list animation and sound files
whose names contain Coin. The last lists anything else with COIN in its name.
