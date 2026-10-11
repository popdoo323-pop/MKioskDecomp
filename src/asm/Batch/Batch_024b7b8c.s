# Converted from the disassembly of 0x024b7b8c (268 bytes). Name is a placeholder.
    .text
    .globl Batch_024b7b8c
Batch_024b7b8c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    li      r30,0
    lwz     r3,0(r29)
    mr      r4,r30
    li      r31,5
    bl      ext_0272fd00
    cmpwi   r3,0
    bne-    L024b7bf4
    addic.  r31,r31,-1
    addi    r30,r30,1
    beq-    L024b7bfc
L024b7bd0:
    lwz     r3,0(r29)
    mr      r4,r30
    bl      ext_0272fd00
    cmpwi   r3,0
    bne-    L024b7bf4
    addic.  r31,r31,-1
    addi    r30,r30,1
    bne+    L024b7bd0
    b       L024b7bfc
L024b7bf4:
    mr      r3,r29
    bl      ext_024b3ccc
L024b7bfc:
    lwz     r0,64(r29)
    cmpwi   r0,0
    beq-    L024b7c7c
    lfs     f13,44(r29)
    lfs     f0,28(r29)
    stfs    f13,96(r29)
    stfs    f0,76(r29)
    lfs     f0,8(r29)
    lfs     f13,24(r29)
    stfs    f0,84(r29)
    stfs    f13,104(r29)
    lfs     f13,48(r29)
    lfs     f0,32(r29)
    stfs    f13,112(r29)
    stfs    f0,92(r29)
    lfs     f0,16(r29)
    lfs     f13,12(r29)
    stfs    f0,72(r29)
    stfs    f13,100(r29)
    lfs     f13,36(r29)
    lfs     f0,4(r29)
    stfs    f13,108(r29)
    stfs    f0,68(r29)
    lfs     f0,20(r29)
    lfs     f13,40(r29)
    lwz     r3,64(r29)
    stfs    f13,80(r29)
    stfs    f0,88(r29)
    lwz     r11,0(r3)
    lwz     r12,116(r11)
    mtctr   r12
    bctrl
L024b7c7c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
