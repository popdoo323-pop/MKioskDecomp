# Converted from the disassembly of 0x024b2e5c (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024b2e5c
Batch_024b2e5c:
    lfs     f0,0(r5)
    slwi    r0,r4,2
    stfsx   f0,r3,r0
    lfs     f0,4(r5)
    add     r12,r3,r0
    stfs    f0,12(r12)
    lfs     f0,8(r5)
    stfs    f0,24(r12)
    blr
