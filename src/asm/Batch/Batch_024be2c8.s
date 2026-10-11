# Converted from the disassembly of 0x024be2c8 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_024be2c8
Batch_024be2c8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lbz     r9,244(r30)
    cmpwi   r9,0
    mr      r31,r4
    bne-    L024be3e8
    lwz     r10,0(r31)
    addi    r0,r30,152
    cmplw   r10,r0
    bne-    L024be3a4
    lwz     r9,20(r31)
    cmpwi   r9,0
    beq-    L024be314
    cmpwi   r9,5
    bne-    L024be344
L024be314:
    lwz     r12,32(r30)
    li      r4,0
    li      r6,1
    lwz     r3,0(r12)
    mr      r5,r4
    bl      ext_0247faa4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
L024be344:
    cmplw   r10,r0
    bne-    L024be3a4
    cmpwi   r9,2
    beq-    L024be364
    cmpwi   r9,4
    beq-    L024be364
    cmpwi   r9,6
    bne-    L024be394
L024be364:
    lwz     r8,32(r30)
    li      r4,1
    li      r5,0
    lwz     r3,0(r8)
    mr      r6,r4
    bl      ext_0247faa4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
L024be394:
    cmplw   r10,r0
    bne-    L024be3a4
    cmpwi   r9,3
    beq-    L024be3bc
L024be3a4:
    addi    r11,r30,104
    cmplw   r10,r11
    bne-    L024be3e8
    lwz     r12,20(r31)
    cmpwi   r12,0
    bne-    L024be3e8
L024be3bc:
    lwz     r10,32(r30)
    li      r6,1
    li      r4,0
    stb     r6,244(r30)
    lwz     r3,0(r10)
    mr      r5,r4
    bl      ext_0247faa4
    li      r4,2
    mr      r5,r31
    mr      r3,r30
    bl      ext_02484e4c
L024be3e8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
