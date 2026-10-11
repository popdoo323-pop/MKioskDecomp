# Converted from the disassembly of 0x0204549c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_0204549c
Batch_0204549c:
    lfs     f0,4(r4)
    stfs    f0,4(r5)
    lfs     f0,8(r4)
    stfs    f0,8(r5)
    lfs     f0,12(r4)
    stfs    f0,12(r5)
    lfs     f0,16(r4)
    stfs    f0,16(r5)
    lfs     f0,20(r4)
    stfs    f0,20(r5)
    lwz     r0,24(r4)
    stw     r0,24(r5)
    lwz     r12,28(r4)
    stw     r12,28(r5)
    lfs     f0,32(r4)
    stfs    f0,32(r5)
    lfs     f0,36(r4)
    stfs    f0,36(r5)
    blr
