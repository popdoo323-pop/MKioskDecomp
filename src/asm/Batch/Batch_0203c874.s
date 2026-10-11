# Converted from the disassembly of 0x0203c874 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c874
Batch_0203c874:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    mr      r28,r3
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r7
    lwz     r3,4(r28)
    mr      r30,r5
    mr      r31,r6
    bl      ext_02051068
    mr      r4,r3
    mr      r3,r28
    mr      r5,r30
    mr      r6,r31
    mr      r7,r29
    bl      ext_0203c574
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
