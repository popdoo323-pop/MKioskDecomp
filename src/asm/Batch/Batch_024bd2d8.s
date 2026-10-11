# Converted from the disassembly of 0x024bd2d8 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd2d8
Batch_024bd2d8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bd304
    addi    r12,r12,4
L024bd304:
    lis     r10,4107
    lwz     r30,0(r12)
    li      r4,0
    lfs     f1,-30612(r10)
    mr      r3,r30
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lis     r12,4107
    mr      r3,r30
    lfs     f1,-30608(r12)
    li      r4,2
    bl      ext_0247f854
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
