# Compiler frame test

Purpose: check whether a candidate compiler lays out stack frames the way the game's compiler does.
The game's prologues are 46.5% 8 mod 16 (11,395 of 24,489). Default GCC gives 0% at every level (the control run).

Files:
- frame_test.c: the original six-function test.
- frame_test_large.c: 36 functions with different frame sizes, calls, saved registers and floating point.
- run_frame_test.sh: builds the large test at -O1, -O2, -O3, -Os and prints the frame statistics.

Run in MSYS2 from the repo root (the devkitPPC compiler is installed by `pacman -S wiiu-dev`):

    sh tests/compiler/run_frame_test.sh /opt/devkitpro/devkitPPC/bin/powerpc-eabi-gcc

Paste the whole output into the chat.

## Matching RailPoint::LinkNext with the platform compiler

The game's constants are at fixed addresses, so the test links the object at the function's real address and defines
the two constants there:

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x021090a8 --size 96 `
      --source tests\compiler\linknext_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Omaxdebug" --incdir include `
      --define kRailZero=0x100137c0 --define kRailOne=0x100137c4

The linker must be on PATH or set with POWERPC_LD (for example devkitPro's powerpc-eabi-ld.exe).
A MATCH means this compiler reproduces the game's bytes for this function. A DIFFERENT line names the first differing
instruction.

## Matching the ItemCoin float getter (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02133298 --size 12 `
      --source tests\compiler\itemcoin_vfn_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh" --incdir include `
      --define kItemCoinValue=0x10184fb8

A MATCH means the platform compiler produces the game's three instructions for this function. A DIFFERENT line names the
first differing word.

## ItemCoin tail call (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02132ae4 --size 12 `
      --source tests\compiler\itemcoin_tail_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include `
      --define FUN_023f8f88=0x023f8f88

Change -Ogeneral to -Ospeed or -Ospace to test the other levels.
