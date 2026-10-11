# Converted from the disassembly of 0x0202832c (128 bytes). Name is a placeholder.
    .text
    .globl Batch_0202832c
Batch_0202832c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r10,4096
    lfs     f0,11096(r10)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,8(r31)
    lwz     r6,60(r12)
    lwz     r0,92(r6)
    lis     r12,4117
    stw     r0,16(r31)
    lwz     r12,-3296(r12)
    li      r8,0
    lwz     r7,572(r12)
    stw     r8,24(r31)
    stw     r7,20(r31)
    stw     r8,32(r31)
    stfs    f0,36(r31)
    stfs    f0,40(r31)
    stfs    f0,44(r31)
    stw     r8,60(r31)
    stw     r8,56(r31)
    bl      ext_020fd964
    lfs     f0,20(r3)
    stfs    f0,784(r31)
    bl      ext_020150ec
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
