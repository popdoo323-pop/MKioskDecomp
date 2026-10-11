// PLACEHOLDER: class, member and function names here are proposals from decompiler analysis.
// Offsets are observed, not verified against a matching build. Do not treat as final.
#pragma once
// RaceKartChecker - FUN_0239993c (0x0239993c). Offsets re-verified against decompiler output. Not matching.

class RaceKartChecker {
public:
    RaceKartChecker(int owner);      // allocs 0x70 bytes
private:
    // +0x00 vtable 0x10089a40       +0x24 owner (ctor arg)      +0x28 pointer to a 4-byte zeroed cell
    // +0x2c mRank (initial value 1, reflected as "mRank")
    // +0x30 unnamed reflected field (initial value 0)
    // +0x34 u16 = 9    +0x36 u8 = 0x3b    +0x38 u16 = 999   (9:59.999 maximum-time sentinel: minutes, seconds, milliseconds.
    //   Set by the constructor and by FUN_0239a810 when a time overflows. Not a coin cap. Checked 2026-10-10.)
    // +0x3c pointer to DAT_10089094
    // +0x40 mCoinNum (initial value 0, reflected as "mCoinNum"). Writers, verified 2026-10-10:
    //   setter FUN_0239a140(kart, n): clamps n to 0..10, plays a gain or loss sound, stores +0x40, updates the HUD (FUN_023aeb30).
    //   add    FUN_0239a22c(kart, delta): setter(current + delta). +2: FUN_02131d6c, FUN_02132798. +1: FUN_0221e204, FUN_0221e2fc.
    //   loss   FUN_02220678: spawns up to DAT_10189b24 coins from the kart, then FUN_0239a22c(kart, -spawned).
    //   reset  FUN_0239ac5c: setter(table[place]) with table at 0x100899b4 = 0,0,1,1,2,2,3,3,4,4,5,5; setter(0) in race states 1, 3, 6.
    //   not yet classified: FUN_020f5384 and FUN_02220678's register-supplied deltas (both call the add function with a register value), FUN_021cd208 (direct setter calls).
    // +0x44 array: 3 elements x 0xc bytes (element ctor FUN_0239c2b4)
    // +0x6c property container, named "RaceKartChecker"
    // sizeof == 0x70
};
