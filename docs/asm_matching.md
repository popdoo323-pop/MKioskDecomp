# Assembly-first matching

Method: write PowerPC assembly for one function, assemble it with binutils, and compare the output bytes with the
original `.text` in your own dump. No game compiler is needed. The comparison depends only on the encoding.

Tools:
- `tools/asmmatch.py` assembles a `.s` file and compares its bytes at a given address.
- `tools/bytematch.py` does the same for C source files (needs a compiler, see docs/compiler_notes.md).

Procedure per function:
1. Read the original bytes and disassemble them (Ghidra's disassemble_bytes, or objdump on the .text dump).
2. Write the assembly by hand from that disassembly. Keep the same registers and instruction order.
3. Run `asmmatch.py` with the function address and size. A match means the bytes are identical.
4. Record the result in symbols/matches.csv with status `matched`. Trivial tests use status `trivial` and are not counted.

Limits:
- A match shows the instructions encode to the same bytes. It does not show the original source was written this way.
- Relocations are not checked. A function that refers to another symbol needs its target address fixed in the assembly.
- Matches so far: ItemCoin_Vfn_02133298 (12 bytes, 3 instructions).

## Functions that call other functions

A branch to another function (`bl` or `b`) depends on where the function sits in memory. The file is linked at the
real address, and each external target is given as a symbol:

    python tools/asmmatch.py --orig orig/Turbo.rpx --address 0x02132ae4 --size 12 \
        --source src/asm/Game/Item/ItemCoin_Tail_02132ae4.s --define FUN_023f8f88=0x023f8f88

The linker resolves the branch with the address in `--define`. Matches so far:
- ItemCoin_Vfn_02133298 (no calls, assembled directly)
- ItemCoin_Tail_02132ae4 (tail call to FUN_023f8f88, linked at 0x02132ae4)
