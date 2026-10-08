# Compiler identification (in progress)

Evidence that the binary links the Green Hills runtime: coreinit imports `__ghsLock`, `__ghsUnlock`, `__ghs_flock_file`,
`__ghs_flock_ptr`, `__ghs_funlock_file`, `__ghs_mtx_dst`, `__ghs_mtx_init`, `__ghs_mtx_lock`, `__ghs_mtx_unlock`.
Vtables use 8-byte entries (see ItemCoin vtable at 0x10015fd8), which is consistent with a non-Itanium ABI.

NOT established: exact compiler version, optimization flags, or whether the game code (not just the runtime) used it.
No version string was found. Next: look for compiler-specific idioms in code, and library source paths.

Third-party code present (source paths embedded in .rodata, from 0x1011b994): Quazal OnlineCore / NetZ, plus Nintendo
"CAFE/dbg_BreakImpl.cpp" and "../ut/os/./platform/ut_Print_Cafe.cpp".
