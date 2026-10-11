# Converted from the disassembly of 0x024be400 (256 bytes). Name is a placeholder.
    .text
    .globl Batch_024be400
Batch_024be400:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L024be430
    li      r3,472
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024be4e0
L024be430:
    mr      r3,r31
    bl      ext_024bbe2c
    lis     r12,4107
    addi    r12,r12,-27308
    li      r0,1
    stw     r12,84(r31)
    li      r29,0
    li      r10,-1
    stb     r0,244(r31)
    lis     r0,4107
    stw     r10,248(r31)
    addic   r0,r0,-27052
    stw     r29,252(r31)
    addic.  r30,r31,256
    stw     r0,100(r31)
    bne-    L024be480
    li      r3,48
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024be4b4
L024be480:
    mr.     r3,r30
    bne-    L024be498
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024be4a4
L024be498:
    stw     r29,4(r3)
    stw     r29,0(r3)
    stw     r29,8(r3)
L024be4a4:
    li      r4,9
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L024be4b4:
    addic.  r3,r31,304
    bne-    L024be4cc
    li      r3,168
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024be4d8
L024be4cc:
    sth     r29,4(r3)
    stw     r29,0(r3)
    sth     r29,6(r3)
L024be4d8:
    li      r11,12
    stw     r11,36(r31)
L024be4e0:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
