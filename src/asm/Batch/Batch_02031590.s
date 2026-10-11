# Converted from the disassembly of 0x02031590 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02031590
Batch_02031590:
    lwz     r12,88(r3)
    lfs     f0,0(r4)
    stfs    f0,36(r12)
    lfs     f0,4(r4)
    stfs    f0,40(r12)
    lfs     f0,8(r4)
    stfs    f0,44(r12)
    blr
