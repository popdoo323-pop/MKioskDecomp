# Converted from the disassembly of 0x024dbd48 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024dbd48
Batch_024dbd48:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    addi    r31,r3,212
    li      r30,4
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
L024dbd6c:
    lwzu    r3,4(r31)
    mr      r4,r29
    bl      ext_02480634
    addic.  r30,r30,-1
    bne+    L024dbd6c
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
