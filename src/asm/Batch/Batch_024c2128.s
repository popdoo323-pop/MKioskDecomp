# Converted from the disassembly of 0x024c2128 (192 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2128
Batch_024c2128:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r6,32(r31)
    lwz     r12,0(r6)
    lwz     r8,4(r12)
    cmpwi   r8,0
    bne-    L024c21d0
    lwz     r30,0(r6)
    li      r4,0
    mr      r3,r30
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r30
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024c2184
    addi    r12,r12,4
L024c2184:
    lis     r9,4107
    lwz     r3,0(r12)
    lfs     f1,-26364(r9)
    li      r4,1
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r10,28(r31)
    cmplwi  r10,1
    lwz     r11,32(r31)
    ble-    L024c21b4
    addi    r11,r11,4
L024c21b4:
    lis     r7,4107
    lwz     r3,0(r11)
    lfs     f1,-26360(r7)
    li      r4,0
    bl      ext_0247f854
    li      r0,0
    stb     r0,96(r31)
L024c21d0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
