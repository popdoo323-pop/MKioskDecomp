# Converted from the disassembly of 0x02015c18 (656 bytes). Name is a placeholder.
    .text
    .globl Batch_02015c18
Batch_02015c18:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r7,72(r30)
    lwz     r3,84(r7)
    mr      r31,r4
    bl      ext_02185c90
    cmpwi   r3,0
    bne-    L02015e88
    lis     r9,4096
    lfs     f13,4896(r9)
    li      r29,0
    stw     r29,128(r30)
    stfs    f13,132(r30)
    stw     r31,100(r30)
    lbz     r8,79(r31)
    cmpwi   r8,0
    beq-    L02015c88
    lwz     r3,88(r30)
    li      r4,50
    stw     r29,140(r30)
    bl      ext_02008eb0
    stw     r3,144(r30)
L02015c88:
    lwz     r7,140(r30)
    cmpwi   r7,0
    lwz     r11,40(r30)
    blt-    L02015cbc
    lwz     r10,144(r30)
    addi    r9,r7,1
    cmpw    r9,r10
    stw     r9,140(r30)
    ble-    L02015cbc
    li      r0,1
    li      r12,-1
    stb     r0,116(r30)
    stw     r12,140(r30)
L02015cbc:
    cmpwi   r11,0
    beq-    L02015cf0
    lis     r12,4120
    lwz     r12,-14224(r12)
    divw    r9,r11,r12
    mullw   r9,r9,r12
    subf.   r0,r9,r11
    bne-    L02015cf0
    li      r0,1
    mr      r3,r30
    stb     r0,116(r30)
    bl      ext_02015c0c
    lwz     r11,40(r30)
L02015cf0:
    lbz     r7,39(r30)
    addi    r11,r11,1
    lbz     r0,37(r30)
    cmpwi   r7,0
    stw     r11,40(r30)
    lbz     r28,64(r30)
    beq-    L02015ddc
    lwz     r10,60(r30)
    slwi    r8,r0,3
    add     r12,r10,r8
    lha     r9,2(r12)
    cmpwi   r9,0
    beq-    L02015d6c
    lwz     r11,48(r30)
    cmpwi   r9,0
    lha     r7,0(r12)
    add     r3,r11,r7
    bge-    L02015d4c
    lwz     r0,4(r12)
    mtctr   r0
    bctrl
    lbz     r0,37(r30)
    b       L02015d6c
L02015d4c:
    lha     r8,6(r12)
    lwzx    r12,r3,r8
    slwi    r0,r9,3
    add     r9,r12,r0
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
    lbz     r0,37(r30)
L02015d6c:
    lwz     r8,52(r30)
    rlwinm  r9,r28,3,21,28
    stb     r0,38(r30)
    add     r10,r8,r9
    stb     r28,37(r30)
    stw     r29,40(r30)
    stb     r29,39(r30)
    lha     r7,2(r10)
    cmpwi   r7,0
    beq-    L02015de0
    lwz     r9,48(r30)
    cmpwi   r7,0
    lha     r12,0(r10)
    add     r3,r9,r12
    bge-    L02015dbc
    lwz     r7,4(r10)
    mtctr   r7
    bctrl
    lbz     r0,37(r30)
    b       L02015ddc
L02015dbc:
    lha     r0,6(r10)
    lwzx    r10,r3,r0
    slwi    r0,r7,3
    add     r10,r10,r0
    lwz     r7,4(r10)
    mtctr   r7
    bctrl
    lbz     r0,37(r30)
L02015ddc:
    slwi    r9,r0,3
L02015de0:
    lwz     r11,56(r30)
    add     r11,r11,r9
    lha     r8,2(r11)
    cmpwi   r8,0
    beq-    L02015e34
    lwz     r12,48(r30)
    cmpwi   r8,0
    lha     r7,0(r11)
    add     r3,r12,r7
    bge-    L02015e18
    lwz     r8,4(r11)
    mtctr   r8
    bctrl
    b       L02015e34
L02015e18:
    lha     r10,6(r11)
    lwzx    r12,r3,r10
    slwi    r0,r8,3
    add     r11,r12,r0
    lwz     r8,4(r11)
    mtctr   r8
    bctrl
L02015e34:
    lwz     r7,68(r31)
    lwz     r0,128(r30)
    lfs     f12,64(r31)
    or      r7,r7,r0
    stw     r7,68(r31)
    lfs     f11,132(r30)
    lis     r8,4096
    fadds   f13,f12,f11
    lfs     f12,4900(r8)
    fcmpu   cr0,f13,f12
    bge-    L02015e6c
    stfs    f12,64(r31)
    stb     r29,116(r30)
    b       L02015e88
L02015e6c:
    lis     r11,4096
    lfs     f0,4904(r11)
    fcmpu   cr0,f13,f0
    ble-    L02015e80
    fmr     f13,f0
L02015e80:
    stfs    f13,64(r31)
    stb     r29,116(r30)
L02015e88:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
