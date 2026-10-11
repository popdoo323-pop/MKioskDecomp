# Converted from the disassembly of 0x024ba508 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_024ba508
Batch_024ba508:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r3
    stw     r31,20(r1)
    stw     r0,28(r1)
    li      r0,1
    addi    r3,r30,8
    stb     r0,2313(r30)
    bl      ext_024b4d40
    addi    r3,r30,1128
    bl      ext_024b715c
    li      r31,4
    addi    r29,r30,1232
L024ba544:
    mr      r3,r29
    bl      ext_024b7aec
    addic.  r31,r31,-1
    addi    r29,r29,160
    bne+    L024ba544
    addi    r29,r30,1872
    li      r31,2
L024ba560:
    mr      r3,r29
    bl      ext_024b8080
    addic.  r31,r31,-1
    addi    r29,r29,220
    bne+    L024ba560
    li      r0,1
    stb     r0,2312(r30)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
