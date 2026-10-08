# Compiler identification (in progress)

Evidence that the binary links the Green Hills runtime: coreinit imports `__ghsLock`, `__ghsUnlock`, `__ghs_flock_file`,
`__ghs_flock_ptr`, `__ghs_funlock_file`, `__ghs_mtx_dst`, `__ghs_mtx_init`, `__ghs_mtx_lock`, `__ghs_mtx_unlock`.
Vtables use 8-byte entries (see ItemCoin vtable at 0x10015fd8), which is consistent with a non-Itanium ABI.

NOT established: exact compiler version, optimization flags, or whether the game code (not just the runtime) used it.
No version string was found. Next: look for compiler-specific idioms in code, and library source paths.

Third-party code present (source paths embedded in .rodata, from 0x1011b994): Quazal OnlineCore / NetZ, plus Nintendo
"CAFE/dbg_BreakImpl.cpp" and "../ut/os/./platform/ut_Print_Cafe.cpp".

## Evidence checked 2026-10-08

- The RPX has no `.comment` section and no `.note` or `.ident` section. Its 42 section headers are listed by `tools/rpx_info.py`.
- No section contains a compiler name (GCC, clang, Metrowerks, CodeWarrior, Green Hills, `ghs`) or a compiler version string.
- Ghidra's string table has no compiler or runtime version text.
- The only hit for "Multi" in the binary is `Multi2P`, a game mode string. It is not a compiler.
- The `__ghs_*` runtime imports are the only compiler-related signal. They are imported by coreinit, which does not prove the game code was built with the same toolchain.
- Vtables use 8-byte entries, which fits the layout observed for the ItemCoin vtable.

Status: still not identified. Next steps are to compare calling-convention and prologue idioms against the `__ghs` runtime, and to look at how the import stubs are generated.

## Stack-frame alignment test (2026-10-08)

- Turbo.rpx `.text`: 24,489 `stwu r1,-N(r1)` prologues. 13,094 frames are multiples of 16. 11,395 are 8 mod 16, for example 24, 40, 56 and 8 bytes.
- Control: GCC 13.3 for powerpc-linux-gnu at `-O2` keeps every frame at 16 bytes (`stwu r1,-16(r1)`), as the PowerPC EABI requires.
- Conclusion: the game's compiler does not keep 16-byte frame alignment, so it is not GCC with the EABI default. That argues against a GCC-based toolchain such as devkitPPC/WUT.
- This does not confirm Green Hills. The Green Hills frame rule is not checked here; it needs a Green Hills sample to compare against.

## Pending: devkitPPC frame-alignment test (2026-10-08)

The toolchain the user installed is devkitPro (devkitPPC, GCC-based), via `pacman -S wiiu-dev` in MSYS2.
The uploaded packages (wut headers, wiiu-cmake, wiiu-pkg-config) do not include the compiler. To run the test:

    powerpc-eabi-gcc -O2 -c tests/compiler/frame_test.c -o frame_test.o
    powerpc-eabi-objdump -d frame_test.o | findstr stwu

Record the N values. If every N is a multiple of 16, this compiler is ruled out the same way default GCC was.
If some N are 8 mod 16, it is a candidate and needs a further check.

## devkitPPC result (2026-10-08, maintainer's PC)

Compiler: powerpc-eabi-gcc 16.1.0 from devkitPro, `-O2 -c tests/compiler/frame_test.c`.
Frame sizes from `powerpc-eabi-objdump -d`:

    stwu r1,-40(r1)   8 mod 16
    stwu r1,-40(r1)   8 mod 16
    stwu r1,-48(r1)   0 mod 16
    stwu r1,-24(r1)   8 mod 16
    stwu r1,-56(r1)   8 mod 16
    stwu r1,-56(r1)   8 mod 16

Five of six frames are 8 mod 16, which default GCC/EABI never produced. So this compiler is not ruled out. It is a candidate.

Caveats:
- Six functions is too few to compare with the game's 46% ratio.
- The test does not yet compare prologue shape (mflr/stwu order, register saves) with the game's prologues.
- The result does not identify the game's compiler. Other compilers may also give 8-mod-16 frames.

Next test: a larger set of functions (leaves, calls, and functions that save registers), then compare the ratio and the
prologue pattern with the game's prologues. The game's ObjTire helper at 0x022ee1e4 is a useful reference: mflr r0; stwu
r1,-0x10(r1); stw r31,0xc(r1); ... stw r0,0x14(r1).
