# Converted from the disassembly of 0x020303ec (244 bytes). Name is a placeholder.
    .text
    .globl Batch_020303ec
Batch_020303ec:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    lis     r31,4117
    stw     r0,20(r1)
    lwz     r31,-3280(r31)
    cmpwi   r31,0
    mr      r30,r3
    beq-    L0203043c
    lwz     r3,84(r30)
    bl      ext_02185c38
    lwz     r11,1880(r31)
    cmplw   r3,r11
    li      r0,0
    bge-    L02030438
    lwz     r0,1888(r31)
    slwi    r12,r3,2
    lwzx    r0,r12,r0
L02030438:
    stw     r0,92(r30)
L0203043c:
    lis     r12,4117
    lwz     r3,84(r30)
    lwz     r12,-3296(r12)
    addi    r31,r12,80
    bl      ext_02185c38
    cmplwi  r3,12
    bge-    L02030460
    mulli   r0,r3,28
    add     r31,r31,r0
L02030460:
    lwz     r0,20(r31)
    cmpwi   r0,0
    lwz     r3,56(r30)
    beq-    L02030478
    cmpwi   r0,2
    bne-    L02030480
L02030478:
    li      r0,1
    stb     r0,100(r30)
L02030480:
    li      r4,60
    bl      ext_02008eb0
    stw     r3,112(r30)
    mr      r3,r30
    li      r4,0
    bl      ext_02030318
    bl      ext_020150bc
    cmpwi   r3,0
    beq-    L020304c8
    mr      r3,r30
    lwz     r31,56(r30)
    bl      ext_02030378
    mr      r5,r3
    mr      r4,r30
    lwz     r3,56(r31)
    li      r6,0
    bl      ext_0202134c
    stw     r3,80(r30)
L020304c8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
