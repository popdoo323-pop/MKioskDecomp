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
