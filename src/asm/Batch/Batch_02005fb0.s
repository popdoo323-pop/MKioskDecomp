# Converted from the disassembly of 0x02005fb0 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02005fb0
Batch_02005fb0:
    lfs     f0,0(r5)
    slwi    r0,r4,2
    stfsx   f0,r3,r0
    lfs     f0,4(r5)
    add     r12,r3,r0
    stfs    f0,16(r12)
    lfs     f0,8(r5)
    stfs    f0,32(r12)
    blr
