# Converted from the disassembly of 0x024bd1cc (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd1cc
Batch_024bd1cc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r0,28(r30)
    cmplwi  r0,1
    lwz     r12,32(r30)
    ble-    L024bd1f8
    addi    r12,r12,4
L024bd1f8:
    lis     r11,4107
    lwz     r31,0(r12)
    li      r4,2
    lfs     f1,-30612(r11)
    mr      r3,r31
    bl      ext_0247f968
    mr      r3,r30
    bl      ext_024800e0
    mr      r3,r31
    li      r4,0
    bl      ext_0247fc68
    mr      r3,r31
    li      r4,0
    bl      ext_0247f968
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
