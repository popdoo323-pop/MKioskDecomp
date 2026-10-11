# Converted from the disassembly of 0x024bbcfc (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024bbcfc
Batch_024bbcfc:
    lfs     f0,0(r4)
    slwi    r0,r5,2
    stfsx   f0,r3,r0
    lfs     f0,4(r4)
    add     r12,r3,r0
    stfs    f0,12(r12)
    lfs     f0,8(r4)
    stfs    f0,24(r12)
    blr
