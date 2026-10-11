# Converted from the disassembly of 0x024bc0c0 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc0c0
Batch_024bc0c0:
    mflr    r0
    stwu    r1,-96(r1)
    li      r12,64
    stw     r30,88(r1)
    addi    r11,r1,20
    stw     r12,16(r1)
    lis     r12,4107
    stw     r11,8(r1)
    addi    r12,r12,-30996
    stw     r31,92(r1)
    stw     r12,12(r1)
    stw     r0,100(r1)
    li      r0,0
    lwz     r11,84(r3)
    stb     r0,83(r1)
    stb     r0,20(r1)
    lwz     r0,108(r11)
    mtctr   r0
    mr      r30,r3
    addi    r4,r1,8
    bctrl
    lwz     r12,224(r30)
    cmpwi   r12,0
    mr      r31,r3
    bne-    L024bc1ac
    bl      ext_02041f68
    cmpwi   r3,0
    beq-    L024bc1ac
    cmpwi   r31,0
    beq-    L024bc1ac
    bl      ext_02041f68
    bl      ext_0204290c
    lwz     r12,12(r1)
    lwz     r0,20(r12)
    mr      r31,r3
    mtctr   r0
    addi    r3,r1,8
    bctrl
    lwz     r3,32(r31)
    lwz     r4,8(r1)
    bl      ext_0290a210
    cmpwi   r3,0
    beq-    L024bc1ac
    lwz     r0,12(r3)
    cmpwi   r0,0
    ble-    L024bc1ac
    lwz     r12,12(r1)
    lwz     r0,20(r12)
    mtctr   r0
    addi    r3,r1,8
    bctrl
    mr      r3,r30
    lwz     r31,8(r1)
    bl      ext_02480238
    mr      r4,r30
    mr      r5,r3
    mr      r3,r31
    bl      ext_0205f9ac
    stw     r3,224(r30)
L024bc1ac:
    lwz     r0,100(r1)
    lwz     r30,88(r1)
    mtlr    r0
    lwz     r31,92(r1)
    addi    r1,r1,96
    blr
