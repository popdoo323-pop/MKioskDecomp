# Converted from the disassembly of 0x020466fc (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020466fc
Batch_020466fc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02041f68
    bl      ext_020425e4
    li      r4,10
    bl      ext_020453d0
    bl      ext_02041f68
    bl      ext_02042680
    lis     r12,4096
    lfs     f1,23352(r12)
    li      r4,2
    bl      ext_0203926c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
