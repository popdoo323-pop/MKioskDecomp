# Converted from the disassembly of 0x02039408 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_02039408
Batch_02039408:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r28,8(r1)
    li      r30,0
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    lis     r29,4120
    li      r28,14
    addi    r29,r29,-11472
L02039438:
    addi    r3,r31,4
    mr      r4,r30
    bl      ext_02598144
    lwzu    r4,4(r29)
    bl      ext_0259c040
    addic.  r28,r28,-1
    addi    r30,r30,1
    bne+    L02039438
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
