# Converted from the disassembly of 0x024dc47c (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc47c
Batch_024dc47c:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r29,r4
    mr      r28,r3
    lwz     r3,28(r29)
    cmpwi   r3,0
    bne-    L024dc4ac
    lwz     r4,24(r29)
    mr      r3,r28
    bl      ext_0248e5b4
L024dc4ac:
    bl      ext_024af454
    addi    r27,r29,40
    li      r31,0
    li      r30,2
L024dc4bc:
    lwzx    r0,r27,r31
    cmpwi   r0,0
    bne-    L024dc4dc
    add     r12,r29,r31
    lwz     r4,32(r12)
    mr      r3,r28
    bl      ext_0248e5b4
    mr      r0,r3
L024dc4dc:
    mr      r3,r0
    bl      ext_024af454
    addic.  r30,r30,-1
    addi    r31,r31,4
    bne+    L024dc4bc
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
