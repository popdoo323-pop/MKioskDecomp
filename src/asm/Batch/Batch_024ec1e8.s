# Converted from the disassembly of 0x024ec1e8 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec1e8
Batch_024ec1e8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    li      r4,0
    stw     r0,20(r1)
    lwz     r12,32(r31)
    mr      r5,r4
    stb     r4,128(r31)
    lwz     r3,0(r12)
    li      r6,1
    bl      ext_0247faa4
    lwz     r0,28(r31)
    cmplwi  r0,4
    lwz     r12,32(r31)
    ble-    L024ec22c
    addi    r12,r12,16
L024ec22c:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-7784(r11)
    li      r4,0
    bl      ext_0247f854
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
