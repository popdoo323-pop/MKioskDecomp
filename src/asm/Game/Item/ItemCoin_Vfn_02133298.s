# ItemCoin virtual method at 0x02133298 (vtable slot +0x17c in the ItemCoin vtable).
# Loads a float constant from 0x10184fb8 and returns it in f1.
# Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_Vfn_02133298
ItemCoin_Vfn_02133298:
    lis     r12, 0x1018
    lfs     f1, 0x4fb8(r12)
    blr
