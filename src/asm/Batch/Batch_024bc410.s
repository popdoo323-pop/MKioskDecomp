# Converted from the disassembly of 0x024bc410 (272 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc410
Batch_024bc410:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r27,12(r1)
    stw     r0,36(r1)
    mr.     r29,r5
    beq-    L024bc434
    lwz     r6,224(r3)
    cmpwi   r6,0
    bne-    L024bc44c
L024bc434:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,0
    blr
L024bc44c:
    lis     r12,4119
    lwz     r12,28172(r12)
    lwz     r28,0(r4)
    cmpwi   r12,0
    lis     r30,4120
    bne-    L024bc478
    lis     r10,4119
    li      r7,1
    li      r8,0
    stw     r7,28172(r10)
    stb     r8,-18240(r30)
L024bc478:
    lis     r12,4119
    lwzu    r0,28168(r12)
    cmpwi   r0,0
    lis     r27,4120
    bne-    L024bc4a8
    li      r0,1
    lis     r4,4117
    addi    r3,r27,-18239
    li      r5,23
    addi    r4,r4,4352
    stw     r0,0(r12)
    bl      ext_029abc88
L024bc4a8:
    cmplwi  r28,3
    blt-    L024bc4c8
    mr      r3,r29
    li      r4,0
    crclr   4*cr1+eq
    bl      ext_02620314
    li      r3,1
    b       L024bc50c
L024bc4c8:
    lbz     r0,-18240(r30)
    lis     r31,4119
    cmpwi   r0,0
    addi    r31,r31,28484
    bne-    L024bc4f4
    li      r5,3
    addi    r4,r27,-18239
    mr      r3,r31
    bl      ext_026200ec
    li      r0,1
    stb     r0,-18240(r30)
L024bc4f4:
    slwi    r5,r28,2
    lwzx    r4,r5,r31
    mr      r3,r29
    crclr   4*cr1+eq
    bl      ext_02620314
    li      r3,1
L024bc50c:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
