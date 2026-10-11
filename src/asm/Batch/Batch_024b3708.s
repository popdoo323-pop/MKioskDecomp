# Converted from the disassembly of 0x024b3708 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024b3708
Batch_024b3708:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r27,20(r1)
    mr      r31,r3
    li      r27,12
    stw     r0,44(r1)
    li      r29,0
    li      r30,10
    mr      r28,r29
L024b372c:
    lwz     r0,12(r31)
    cmplw   r29,r0
    lwz     r3,16(r31)
    bge-    L024b3740
    add     r3,r3,r28
L024b3740:
    addi    r4,r1,8
    stw     r30,8(r1)
    bl      ext_02460c1c
    cmpwi   r3,0
    beq-    L024b3780
    addic.  r27,r27,-1
    addi    r29,r29,1
    addi    r28,r28,1152
    bne+    L024b372c
    li      r12,37
    lwz     r3,24(r31)
    addi    r4,r1,12
    stw     r12,12(r1)
    bl      ext_02460c1c
    cmpwi   r3,0
    bne-    L024b3798
L024b3780:
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    li      r3,0
    blr
L024b3798:
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    li      r3,1
    blr
