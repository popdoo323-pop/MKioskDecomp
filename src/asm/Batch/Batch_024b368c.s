# Converted from the disassembly of 0x024b368c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024b368c
Batch_024b368c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    mr      r28,r3
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    li      r29,0
    li      r30,12
    mr      r31,r29
L024b36b8:
    lwz     r0,12(r28)
    cmplw   r29,r0
    lwz     r3,16(r28)
    bge-    L024b36cc
    add     r3,r3,r31
L024b36cc:
    bl      ext_02463698
    addic.  r30,r30,-1
    addi    r29,r29,1
    addi    r31,r31,1152
    bne+    L024b36b8
    lwz     r3,24(r28)
    bl      ext_0246385c
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
