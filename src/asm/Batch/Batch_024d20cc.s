# Converted from the disassembly of 0x024d20cc (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024d20cc
Batch_024d20cc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    lis     r12,4107
    addi    r12,r12,-18588
    mr      r31,r3
    stw     r0,28(r1)
    lis     r0,4107
    stw     r12,8(r1)
    addic   r0,r0,-18704
    addi    r4,r1,8
    stw     r0,12(r1)
    bl      ext_024801a0
    stw     r3,172(r31)
    lwz     r0,28(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
