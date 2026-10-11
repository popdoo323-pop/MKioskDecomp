# Converted from the disassembly of 0x024b2e80 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024b2e80
Batch_024b2e80:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r5
    mr      r5,r4
    li      r4,0
    mr      r30,r6
    bl      ext_024b2e5c
    mr      r3,r31
    mr      r5,r29
    li      r4,1
    bl      ext_024b2e5c
    mr      r3,r31
    mr      r5,r30
    li      r4,2
    bl      ext_024b2e5c
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
