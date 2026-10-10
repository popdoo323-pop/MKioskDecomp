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

## ItemCoin message handler (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02132ff4 --size 68 `
      --source tests\compiler\itemcoin_message_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include

Change -Ogeneral to -Ospeed or -Ospace to test the other levels.

## ItemCoin message handler, version 2 (switch form)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02132ff4 --size 68 `
      --source tests\compiler\itemcoin_message_v2_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include

## ItemCoin bind emitter (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02132ac4 --size 32 `
      --source tests\compiler\itemcoin_bindemitter_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include `
      --define FUN_020db0e4=0x020db0e4 --define kBindEmitterName=0x10015f70

Change -Ogeneral to -Ospeed or -Ospace to test the other levels.

## ItemCoin pool initialiser (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x02133314 --size 376 `
      --source tests\compiler\itemcoin_poolinit_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include `
      --define PoolSetup=0x02620314 --define ItemIdCount=0x0215d9dc --define CreateItem=0x02133970 `
      --define SysGetter=0x0261c858 --define g_sys_ptr=0x1015265c --define kPoolName=0x101063b0

Change -Ogeneral to -Ospeed or -Ospace to test the other levels.

## ItemCoin effects setup (C++ test)

    python tools\bytematch.py --orig orig\Turbo.rpx --address 0x021212c4 --size 448 `
      --source tests\compiler\itemcoin_effects_test.cpp --cc "C:\Nintendo\GHS\multi5327\cxppc.exe" `
      --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Ogeneral" --incdir include `
      --define SetupFx1=0x020dabc8 --define SetupFx2=0x020da780 --define AttachEffect=0x020db0e4 `
      --define AddSlot=0x0205e498 --define FxInit=0x026200ec --define MemCpyAlias=0x029abc88 `
      --define kEffName1=0x100149ec --define kEffName2=0x100149f8 --define kEffName3=0x10014a04 `
      --define kSoundTable=0x10172400 --define kStrA=0x101797d8 --define kStrB=0x1014c450 `
      --define kFlagB=0x101798cb --define kFlagA=0x10170f84 --define kFlagAnext=0x10170f88

Change -Ogeneral to -Ospeed or -Ospace to test the other levels.
