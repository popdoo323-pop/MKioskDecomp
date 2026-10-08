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

## Larger frame test: how to judge a candidate (2026-10-08)

Two checks, both run by tests/compiler/run_frame_test.sh:

1. Frame share. The game's prologues are 46.5% 8 mod 16 (11,395 of 24,489). Default GCC gives 0% at -O1, -O2, -O3 and -Os
   (control run, 36 frames each). A candidate needs a share in the same range as the game.
2. Prologue order. In the game, the link-register save (`stw r0,N(r1)`) comes after the first callee-saved register save,
   not immediately after `stwu`. The matched bird helper (0x021f9bb8) and the ObjTire helper (0x022ee1e4) both show this.
   Default GCC saves the link register immediately after `stwu` (see saves_1 in the control output). A candidate that saves
   the link register late, as the game does, is a stronger match.

A candidate that passes both checks is worth a closer look. A candidate that fails check 2 is ruled out, whatever its share.

## devkitPPC result, larger test (2026-10-08, maintainer's PC)

Compiler: powerpc-eabi-gcc from devkitPro, run with tests/compiler/run_frame_test.sh.

| level | frames | 8 mod 16 | share |
|---|---|---|---|
| -O1 | 36 | 28 | 77.8% |
| -O2 | 36 | 24 | 66.7% |
| -O3 | 36 | 24 | 66.7% |
| -Os | 36 | 28 | 77.8% |

Game (Turbo.rpx): 46.5%. The devkitPPC share is well above the game's, so the share alone does not match.

Link-register placement, checked on the -O2 output of saves_1 (the other functions were not counted in that run):
the link register is saved right after mflr, before the register saves. This is the GCC pattern, not the game's. The full
placement count was added to the script afterwards; it has not been run on the devkitPPC output yet.

Status: unlikely to be the game's compiler, not yet ruled out. The full placement count over all 36 functions decides it.
Rerun the updated script on the devkitPPC compiler to get that count.

## devkitPPC result, final (2026-10-08)

Full placement count over all 36 functions at -O2: link register saved early in 32, late in 4 (89% early).
The game saves it late in 97.6% of its prologues (14,433 of 14,780), and early in 1.7%.
The frame share is 66.7% to 77.8%, against the game's 46.5%.

Status: devkitPPC (GCC-based) is ruled out as the game's compiler by both checks. The same result applies to default GCC.
The game's compiler is still unidentified. The leading hypothesis is Green Hills (the __ghs_* runtime imports and the
OSThreadGHSExceptionHandling type in WUT), but no Green Hills output is available to test against.
