# Converted from the disassembly of 0x024ddc74 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_024ddc74
Batch_024ddc74:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    lwz     r30,1420(r31)
    lwz     r3,240(r31)
    li      r5,-1
    lwz     r4,244(r30)
    li      r6,1
    bl      ext_024af380
    lwz     r30,1424(r31)
    lwz     r3,244(r31)
    li      r5,-1
    lwz     r4,244(r30)
    li      r6,1
    bl      ext_024af380
    lwz     r30,1428(r31)
    li      r4,2005
    mr      r3,r31
    bl      ext_0248e5b4
    lwz     r4,244(r30)
    li      r5,-1
    li      r6,1
    bl      ext_024af380
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
