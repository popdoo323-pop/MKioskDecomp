# Converted from the disassembly of 0x020338a8 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_020338a8
Batch_020338a8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    addi    r3,r31,88
    stw     r0,20(r1)
    bl      ext_0262ef74
    addi    r3,r31,112
    bl      ext_0262ef74
    addi    r3,r31,136
    bl      ext_0262ef74
    addi    r3,r31,160
    bl      ext_0262ef74
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
