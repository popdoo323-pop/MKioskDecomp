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
