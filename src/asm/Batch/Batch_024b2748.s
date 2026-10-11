# Converted from the disassembly of 0x024b2748 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024b2748
Batch_024b2748:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r4
    stw     r30,16(r1)
    mr      r30,r3
    li      r4,4
    stw     r29,12(r1)
    stw     r0,28(r1)
    lwz     r3,72(r30)
    li      r29,1
    stb     r4,64(r30)
    stb     r29,253(r30)
    bl      ext_024bab18
    mr      r3,r30
    lwz     r12,72(r30)
    mr      r5,r29
    li      r4,8
    stb     r31,5(r12)
    bl      ext_024b112c
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
