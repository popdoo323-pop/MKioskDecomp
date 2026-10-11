# Converted from the disassembly of 0x024d1004 (280 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1004
Batch_024d1004:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    stw     r30,24(r1)
    mr      r31,r4
    stw     r0,36(r1)
    lwz     r9,16(r31)
    cmpwi   r9,0
    mr      r30,r3
    beq-    L024d10b8
    lwz     r11,20(r31)
    cmpwi   r11,0
    bne-    L024d1088
    li      r4,0
    mr      r5,r31
    mr      r3,r30
    bl      ext_02484e4c
    lbz     r0,32(r31)
    cmpwi   r0,0
    bne-    L024d1104
    mr      r4,r30
    addi    r3,r1,8
    bl      ext_02480274
    lis     r3,4107
    lfs     f1,8(r1)
    addi    r3,r3,-20056
    bl      ext_02045eec
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
L024d1088:
    cmpwi   r11,1
    bne-    L024d1104
    li      r4,1
    mr      r5,r31
    mr      r3,r30
    bl      ext_02484e4c
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
L024d10b8:
    lwz     r10,0(r31)
    addi    r12,r30,304
    cmplw   r10,r12
    bne-    L024d10ec
    mr      r3,r30
    mr      r4,r31
    bl      ext_024d081c
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
L024d10ec:
    addi    r8,r30,352
    cmplw   r10,r8
    bne-    L024d1104
    mr      r3,r30
    mr      r4,r31
    bl      ext_024d0e9c
L024d1104:
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
