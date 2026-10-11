# Converted from the disassembly of 0x024c8ea8 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8ea8
Batch_024c8ea8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    li      r5,1
    stw     r30,16(r1)
    li      r4,0
    stw     r0,28(r1)
    bl      ext_02484d54
    lis     r30,4107
    lis     r0,4107
    addi    r30,r30,-20712
    addic   r0,r0,-20400
    addi    r5,r1,8
    stw     r30,12(r1)
    li      r4,0
    stw     r0,8(r1)
    bl      ext_0247f5e8
    lis     r10,4107
    stw     r30,12(r1)
    addi    r10,r10,-20392
    li      r0,1
    stw     r10,8(r1)
    li      r12,3
    stb     r0,105(r31)
    stw     r12,100(r31)
    li      r12,2
    mr      r3,r31
    stb     r0,104(r31)
    addi    r4,r1,8
    stw     r12,96(r31)
    bl      ext_024801a0
    mr      r4,r3
    mr      r3,r31
    addi    r5,r31,88
    li      r6,0
    bl      ext_02480748
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
