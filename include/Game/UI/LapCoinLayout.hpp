#pragma once
// Coin/lap HUD object ("L_LapCoin_00"). Class name (invented). Built in FUN_02525904; panes bound in FUN_0251046c.

class LapCoinLayout {
public:
    void SetupAnimGroups();          // 0x02510330: In, Out, Get_Coin, Color_Coin, Change_Lap, ColorPtn
    void BindPanes();                // 0x0251046c: T_Coin_00, T_Molec_00, T_Denomi_00
private:
    // sizeof == 0x6c
    // +0x54 vtable-like pointer (0x100b3588)   +0x5c T_Coin_00 pane   +0x60 T_Molec_00 pane
    // +0x65 u8 = 1   +0x66 u8 = 3 (shown in T_Denomi_00; probably total laps - unconfirmed)
    // +0x67 u8 player/screen index
};
