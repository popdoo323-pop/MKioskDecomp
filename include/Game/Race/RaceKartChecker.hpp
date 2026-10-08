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
    // +0x34 u16 = 9    +0x36 u8 = 0x3b    +0x38 u16 = 999   (meanings unknown; do not assume 999 is a coin cap)
    // +0x3c pointer to DAT_10089094
    // +0x40 mCoinNum (initial value 0, reflected as "mCoinNum")
    // +0x44 array: 3 elements x 0xc bytes (element ctor FUN_0239c2b4)
    // +0x6c property container, named "RaceKartChecker"
    // sizeof == 0x70
};
