# Why calls to imports looked like `func_0x04008898`

Calls from game code to system libraries are `bl` instructions with a 26-bit displacement.
In the RPX file the displacement is truncated from `stub - call_site`, so Ghidra resolves each call
to `stub_address - 0xBC000000` (e.g. stub 0xC0008898 -> 0x04008898) instead of the real import stub.
That address was unmapped, so the decompiler printed `func_0x04008898(...)` and ignored every signature set on the real stub.

Fix: map a block at 0x04000000 and create a function at (stub - 0xBC000000) for each import, with the same name and prototype.
Verified on OSCreateThread: caller FUN_0262c33c now decompiles to `OSCreateThread(*(OSThread **)(param_1 + 0x8c), FUN_0262c2ec, 0, ...)`.

Applies to all 668 imports (stubs 0xC00xxxxx). Rule: alias = stub - 0xBC000000.
