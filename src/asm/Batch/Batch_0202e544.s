# Converted from the disassembly of 0x0202e544 (276 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e544
Batch_0202e544:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    lis     r12,4117
    stw     r0,28(r1)
    lwz     r12,-3296(r12)
    mr      r29,r3
    lwz     r0,424(r12)
    cmpwi   r0,3
    beq-    L0202e5ac
    lwz     r31,80(r29)
    lwz     r3,84(r31)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L0202e598
    lbz     r0,101(r31)
    cmpwi   r0,0
    beq-    L0202e5a4
L0202e598:
    lwz     r11,96(r29)
    stw     r11,92(r29)
    b       L0202e5ac
L0202e5a4:
    lwz     r11,100(r29)
    stw     r11,92(r29)
L0202e5ac:
    lwz     r12,80(r29)
    li      r28,0
    stw     r28,108(r29)
    lwz     r3,84(r12)
    bl      ext_02185c08
    cmpwi   r3,0
    beq-    L0202e5e8
    lbz     r10,53(r29)
    stw     r28,56(r29)
    li      r0,4
    stb     r10,54(r29)
    li      r10,1
    stb     r0,53(r29)
    stb     r10,55(r29)
    b       L0202e638
L0202e5e8:
    lwz     r30,80(r29)
    lwz     r3,84(r30)
    li      r31,1
    bl      ext_02185be4
    cmpwi   r3,0
    lbz     r12,53(r29)
    bne-    L0202e614
    lbz     r0,101(r30)
    cmpwi   r0,0
    bne-    L0202e614
    li      r31,0
L0202e614:
    clrlwi. r31,r31,24
    li      r0,3
    stb     r12,54(r29)
    beq-    L0202e628
    li      r0,0
L0202e628:
    stw     r28,56(r29)
    li      r10,1
    stb     r0,53(r29)
    stb     r10,55(r29)
L0202e638:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
