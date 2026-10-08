// PLACEHOLDER: class, member and function names here are proposals from decompiler analysis.
// Offsets are observed, not verified against a matching build. Do not treat as final.
#pragma once
// Coin/lap HUD object ("L_LapCoin_00"). Class name (invented).
// VERIFIED (FUN_0251046c): +0x58 +0x5c +0x60 +0x66 +0x67.  NOT RE-VERIFIED: +0x54, +0x65, size 0x6c, constant 3 (all from FUN_02525904).

class LapCoinLayout {
public:
    void SetupAnimGroups();          // 0x02510330: In, Out, Get_Coin, Color_Coin, Change_Lap, ColorPtn
    void BindPanes();                // 0x0251046c
private:
    // +0x1c / +0x20 count and array used for animation entries
    // +0x54 vtable-like pointer (0x100b3588)   [not re-verified]
    // +0x58 pointer fetched from a per-player table (index = +0x67)
    // +0x5c T_Coin_00 pane   +0x60 T_Molec_00 pane
    // +0x65 u8 = 1 [not re-verified]
    // +0x66 u8 value formatted into T_Denomi_00 (initial value 3 per the HUD builder, not re-verified)
    // +0x67 u8 player/screen index
    // sizeof == 0x6c [not re-verified]
};
