# Converted from the disassembly of 0x024d666c (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024d666c
Batch_024d666c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,28(r1)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024d6698
    lwz     r3,432(r3)
L024d6698:
    lwz     r12,228(r3)
    lwz     r10,0(r31)
    addi    r3,r12,348
    addi    r4,r1,8
    stw     r10,8(r1)
    bl      ext_0242a9dc
    cmpwi   r3,0
    lwz     r4,0(r31)
    bne-    L024d66c8
    lwz     r0,1688(r30)
    cmplw   r4,r0
    bne-    L024d66ec
L024d66c8:
    li      r5,0
    mr      r3,r30
    bl      ext_024d5cf0
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024d66ec:
    li      r0,0
    stb     r0,1684(r30)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
