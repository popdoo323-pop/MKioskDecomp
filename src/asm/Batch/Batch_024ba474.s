# Converted from the disassembly of 0x024ba474 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024ba474
Batch_024ba474:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r3
    stw     r29,12(r1)
    addi    r3,r30,1072
    stw     r31,20(r1)
    stw     r0,28(r1)
    bl      ext_024b3c94
    addi    r3,r30,8
    bl      ext_024b4c04
    addi    r3,r30,1128
    stw     r30,64(r30)
    bl      ext_024b3c94
    li      r31,4
    stw     r30,1184(r30)
    addi    r29,r30,1232
L024ba4b8:
    mr      r3,r29
    bl      ext_024b7c98
    addic.  r31,r31,-1
    addi    r29,r29,160
    bne+    L024ba4b8
    addi    r29,r30,1872
    li      r31,2
L024ba4d4:
    mr      r3,r29
    bl      ext_024b3c94
    stw     r30,56(r29)
    addic.  r31,r31,-1
    addi    r29,r29,220
    bne+    L024ba4d4
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
