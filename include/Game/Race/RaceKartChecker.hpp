#pragma once
// RaceKartChecker - layout notes from FUN_0239993c (0x0239993c). Observed, unverified.
// The constructor registers reflected fields by name: "mRank", one unnamed field, "mCoinNum".

class RaceKartChecker {
public:
    RaceKartChecker(int owner);      // 0x0239993c (allocs 0x70 bytes)
private:
    // +0x00 vtable (0x10089a40)   +0x24 owner (ctor arg)
    // +0x2c mRank                 +0x30 unnamed reflected field
    // +0x34 u16 = 9   +0x36 u8 = 0x3b   +0x38 u16 = 999   (meanings unknown; do not assume 999 is a cap)
    // +0x40 mCoinNum (starts 0)
    // +0x6c property container ("RaceKartChecker")
    // sizeof == 0x70
};
