# Converted from the disassembly of 0x02033090 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02033090
Batch_02033090:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    bl      ext_02041f68
    bl      ext_02042680
    addi    r29,r3,384
    mr      r3,r29
    bl      ext_0262b790
    mr      r4,r31
    addi    r3,r30,12
    bl      ext_02592008
    mr      r3,r29
    bl      ext_0262b7c4
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
