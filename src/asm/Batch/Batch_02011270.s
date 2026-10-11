# Converted from the disassembly of 0x02011270 (632 bytes). Name is a placeholder.
    .text
    .globl Batch_02011270
Batch_02011270:
    mflr    r0
    stwu    r1,-48(r1)
    stfd    f31,32(r1)
    ps_merge10 f31,f31,f31
    stw     r31,28(r1)
    lis     r9,4124
    stw     r29,20(r1)
    stfs    f31,40(r1)
    stw     r30,24(r1)
    stw     r0,52(r1)
    lwzu    r12,26712(r9)
    lwz     r0,4(r9)
    li      r29,1
    addi    r4,r1,8
    stw     r12,8(r1)
    mr      r30,r3
    stw     r0,12(r1)
    bl      ext_02010b48
    lwz     r9,72(r30)
    lwz     r3,84(r9)
    bl      ext_02186020
    lis     r12,4096
    lwz     r10,128(r30)
    cmpwi   r3,0
    lfs     f31,4304(r12)
    beq-    L020112dc
    stfs    f31,12(r1)
L020112dc:
    cmpwi   r10,0
    lis     r11,4120
    blt-    L02011308
    lwz     r12,128(r30)
    addi    r0,r12,1
    stw     r0,128(r30)
    lwz     r8,-14800(r11)
    cmpw    r12,r8
    ble-    L02011308
    li      r10,-1
    stw     r10,128(r30)
L02011308:
    lwz     r12,132(r30)
    cmpwi   r12,0
    blt-    L02011334
    lwz     r9,132(r30)
    addi    r0,r9,1
    stw     r0,132(r30)
    lwz     r10,-14800(r11)
    cmpw    r9,r10
    ble-    L02011334
    li      r12,-1
    stw     r12,132(r30)
L02011334:
    lwz     r0,128(r30)
    cmpwi   r0,-1
    bne-    L020113ac
    lwz     r9,72(r30)
    lwz     r3,84(r9)
    bl      ext_02185f80
    cmpwi   r3,0
    beq-    L020113ac
    lwz     r8,72(r30)
    lwz     r3,84(r8)
    bl      ext_02185fdc
    cmpwi   r3,0
    bne-    L020113ac
    lwz     r11,72(r30)
    lbz     r8,132(r11)
    cmpwi   r8,0
    bne-    L020113ac
    mr      r3,r30
    bl      ext_02010fe0
    cmpwi   r3,0
    beq-    L020113ac
    lwz     r3,84(r30)
    li      r0,0
    stw     r0,128(r30)
    lwz     r10,4(r3)
    lwz     r0,44(r10)
    mtctr   r0
    bctrl
    cmpwi   r3,0
    bne-    L020113c4
L020113ac:
    lwz     r0,132(r30)
    lis     r12,4120
    lwz     r12,-14796(r12)
    cmplw   r0,r12
    bne-    L0201149c
    b       L020113dc
L020113c4:
    li      r0,0
    lis     r12,4120
    stw     r0,132(r30)
    lwz     r12,-14796(r12)
    cmplw   r0,r12
    bne-    L0201149c
L020113dc:
    lwz     r3,76(r30)
    li      r29,9
    li      r4,5
    bl      ext_02008eb0
    lwz     r11,72(r30)
    mr      r31,r3
    lwz     r3,84(r11)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L0201149c
    lis     r9,4096
    lis     r8,4096
    lfs     f13,4316(r9)
    cmplwi  r31,2
    lfs     f0,4312(r8)
    bge-    L02011428
    cmplwi  r31,1
    blt-    L02011464
    beq-    L02011470
L02011428:
    cmplwi  r31,3
    blt-    L0201147c
    beq-    L02011488
    cmplwi  r31,4
    beq-    L02011494
    lwz     r12,68(r30)
    lwz     r8,68(r12)
    or      r8,r8,r29
    stw     r8,68(r12)
    lwz     r10,68(r30)
    psq_l   f0,60(r10),0,0
    psq_l   f12,8(r1),0,0
    ps_add  f13,f0,f12
    psq_st  f13,60(r10),0,0
    b       L020114c0
L02011464:
    stfs    f31,8(r1)
    stfs    f31,12(r1)
    b       L0201149c
L02011470:
    stfs    f0,8(r1)
    stfs    f31,12(r1)
    b       L0201149c
L0201147c:
    stfs    f13,8(r1)
    stfs    f31,12(r1)
    b       L0201149c
L02011488:
    stfs    f31,8(r1)
    stfs    f0,12(r1)
    b       L0201149c
L02011494:
    stfs    f13,12(r1)
    stfs    f31,8(r1)
L0201149c:
    lwz     r12,68(r30)
    lwz     r8,68(r12)
    or      r8,r8,r29
    stw     r8,68(r12)
    lwz     r10,68(r30)
    psq_l   f0,60(r10),0,0
    psq_l   f12,8(r1),0,0
    ps_add  f13,f0,f12
    psq_st  f13,60(r10),0,0
L020114c0:
    lwz     r29,20(r1)
    lfs     f31,40(r1)
    lwz     r30,24(r1)
    lfd     f31,32(r1)
    lwz     r31,28(r1)
    isync
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
