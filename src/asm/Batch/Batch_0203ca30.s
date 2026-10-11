# Converted from the disassembly of 0x0203ca30 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ca30
Batch_0203ca30:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r3
    mr      r30,r5
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_0203c8e0
    mr      r4,r30
    mr      r3,r31
    bl      ext_0203c9d8
    lwz     r3,32(r31)
    mr      r5,r30
    mr      r4,r29
    bl      ext_0205d41c
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
