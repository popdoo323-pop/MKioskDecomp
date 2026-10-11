# Converted from the disassembly of 0x020285bc (168 bytes). Name is a placeholder.
    .text
    .globl Batch_020285bc
Batch_020285bc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r9,8(r29)
    lwz     r3,84(r9)
    mr      r31,r4
    bl      ext_02185c38
    lwz     r10,8(r31)
    mr      r30,r3
    lwz     r3,84(r10)
    bl      ext_02185c38
    cmpw    r30,r3
    bge-    L02028620
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,-1
    blr
L02028620:
    lwz     r11,8(r31)
    lwz     r3,84(r11)
    bl      ext_02185c38
    lwz     r12,8(r29)
    mr      r31,r3
    lwz     r3,84(r12)
    bl      ext_02185c38
    cmpw    r31,r3
    lwz     r29,12(r1)
    mfcr    r0
    lwz     r30,16(r1)
    srwi    r3,r0,31
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
