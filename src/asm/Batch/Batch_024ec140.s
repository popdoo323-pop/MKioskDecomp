# Converted from the disassembly of 0x024ec140 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec140
Batch_024ec140:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r10,32(r30)
    lwz     r31,0(r10)
    li      r4,0
    mr      r3,r31
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r31
    bl      ext_0247f968
    lwz     r0,28(r30)
    cmplwi  r0,1
    lwz     r11,32(r30)
    ble-    L024ec18c
    addi    r11,r11,4
L024ec18c:
    lwz     r31,0(r11)
    li      r4,1
    mr      r3,r31
    bl      ext_0247fc68
    li      r4,1
    mr      r3,r31
    bl      ext_0247f968
    lwz     r0,28(r30)
    cmplwi  r0,4
    lwz     r12,32(r30)
    ble-    L024ec1bc
    addi    r12,r12,16
L024ec1bc:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-7784(r11)
    li      r4,0
    bl      ext_0247f854
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
