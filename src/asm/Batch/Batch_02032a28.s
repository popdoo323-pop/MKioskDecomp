# Converted from the disassembly of 0x02032a28 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_02032a28
Batch_02032a28:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,4(r30)
    mr      r31,r4
    bl      ext_02051068
    mr      r4,r3
    li      r6,0
    mr      r5,r31
    mr      r3,r30
    bl      ext_02032870
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
