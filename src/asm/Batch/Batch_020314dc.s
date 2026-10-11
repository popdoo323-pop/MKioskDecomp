# Converted from the disassembly of 0x020314dc (72 bytes). Name is a placeholder.
    .text
    .globl Batch_020314dc
Batch_020314dc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r4
    stw     r0,20(r1)
    lfs     f1,0(r31)
    mr      r30,r3
    bl      ext_02030ef4
    lfs     f1,4(r31)
    mr      r3,r30
    bl      ext_02030f84
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
