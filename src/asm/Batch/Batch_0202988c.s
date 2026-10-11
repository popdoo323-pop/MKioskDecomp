# Converted from the disassembly of 0x0202988c (380 bytes). Name is a placeholder.
    .text
    .globl Batch_0202988c
Batch_0202988c:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r30,8(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,36(r1)
    lwz     r3,68(r30)
    lwz     r11,0(r3)
    lwz     r10,28(r11)
    mtctr   r10
    bctrl
    lwz     r3,72(r30)
    lwz     r10,0(r3)
    lwz     r0,28(r10)
    mtctr   r0
    bctrl
    lwz     r3,76(r30)
    lwz     r12,0(r3)
    lwz     r12,28(r12)
    mtctr   r12
    bctrl
    bl      ext_02015408
    cmpwi   r3,0
    mr      r3,r30
    beq-    L02029924
    bl      ext_02028f6c
    li      r0,0
    lwz     r12,80(r30)
    li      r11,1
    stb     r0,64(r30)
    stb     r11,39(r30)
    lwz     r12,172(r12)
    cmpwi   r12,2
    blt-    L02029978
    b       L02029948
L02029924:
    bl      ext_02029798
    li      r0,0
    lwz     r12,80(r30)
    li      r11,1
    stb     r0,64(r30)
    stb     r11,39(r30)
    lwz     r12,172(r12)
    cmpwi   r12,2
    blt-    L02029978
L02029948:
    lwz     r11,276(r30)
    addi    r10,r12,-1
    cmplwi  r10,12
    addi    r12,r11,68
    lfs     f13,112(r11)
    bge-    L02029968
    slwi    r0,r10,2
    add     r12,r12,r0
L02029968:
    lfs     f0,0(r12)
    fdivs   f1,f13,f0
    mr      r3,r11
    bl      ext_02019180
L02029978:
    lwz     r3,276(r30)
    bl      ext_02019020
    mr      r31,r3
    lwz     r3,80(r30)
    li      r4,100
    bl      ext_02008eb0
    cmpw    r3,r31
    bge-    L020299e4
    lwz     r3,276(r30)
    bl      ext_02019044
    mr      r31,r3
    lwz     r3,276(r30)
    bl      ext_02019068
    mr      r0,r3
    lwz     r3,80(r30)
    subf    r4,r31,r0
    bl      ext_02008eb0
    lwz     r11,276(r30)
    add     r0,r31,r3
    stw     r0,308(r30)
    lfs     f31,272(r11)
    lfs     f0,276(r11)
    lwz     r3,80(r30)
    fsubs   f1,f0,f31
    bl      ext_02009660
    fadds   f0,f31,f1
    stfs    f0,312(r30)
L020299e4:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
