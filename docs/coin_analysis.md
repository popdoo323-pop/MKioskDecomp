# Coin-related code in Turbo.rpx

Reference binary SHA-256 `4dd6b2122cbb2faeb45c98e161835f36d509e9924347ccf0c1d816c421409c8d`.
Method: case-insensitive string search for "coin", xrefs to each string, decompile referencing functions.
No function names survive (stripped release build), so all names below are proposals.
This file records addresses, names and findings only. No decompiled code is stored here.

## Result summary
No function found so far implements coin collection, counting or the cap. The string-referenced functions are
construction, loading, HUD and effects code. See "Next targets".

## Item handler
- `0x02131904` ItemCoin constructor (alloc 0x320, base ctor type id 7, vtable `0x10015fd8`, member array at +0x304)
- `0x02133970` create wrapper
- `0x02133314` pool init: manager name "ItemCoin", pointer array at +0x28, count at +0x30, pool size at +0x94
- `0x02131994` loads `/item/ItemCoin/ItemCoin.bfres`

## Race state
- `0x0239993c` constructor of "RaceKartChecker": reflected fields `mRank` (+0x2c), one unnamed (+0x30), `mCoinNum` (+0x40, starts at 0)

## HUD
- `0x02510330` layout animation groups: In, Out, Get_Coin, Color_Coin, Change_Lap, ColorPtn
- `0x0251046c` panes T_Coin_00, T_Molec_00, T_Denomi_00
- `0x02525904` builds the whole race HUD; coin object is `L_LapCoin_00` (shares the object with the lap counter)

## Course objects and effects
- `0x02232a34` course object model loader: id 0x3fa = Coin, ids 0x3f5 / 0x232f = ItemBox
- `0x0216e7d0` kart emitter binding ("CoinGet" is a particle effect name)

## Audio and tables (not yet decompiled)
- `0x022980cc`, `0x022d0ab8` coin-thrown sounds for N64 Royal Raceway train and Bone-dry Dunes ship courses (names suggest this, unverified)
- `0x02066730` sound-effect name list incl. SE_OBJ_COIN_GET_PL_1..10
- `0x0211b4c4`, `0x023c6b98` use the item-name list (ItemCoin is the 9th entry)

## Inferences (unconfirmed)
- `T_Molec_00` / `T_Denomi_00` look like numerator / denominator; denominator is set from a byte that is 3 in the HUD builder (likely lap total).
- `SE_OBJ_COIN_GET_PL_n` may vary by player or coin count.

## Corrections
- "4ItemCoin" and "4CoinGet" from the raw string search are `ItemCoin` and `CoinGet`; the leading `4` is the last byte of a preceding pointer (0x0292e834).

## Next targets
1. ItemCoin vtable `0x10015fd8` methods: `0x0211b4c4`, `0x0211b830`, `0x0211c4dc`, `0x02132ff0`, `0x0212552c`, `0x02132ff4`
2. Writers of `mCoinNum` (RaceKartChecker +0x40): coin add, cap, loss on hit
3. Callers of the HUD coin update (`Get_Coin` animation trigger)
4. Constant search for course object id 0x3fa
