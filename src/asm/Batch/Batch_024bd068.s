# Converted from the disassembly of 0x024bd068 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd068
Batch_024bd068:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024bc200
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r12,32(r31)
    ble-    L024bd094
    addi    r12,r12,8
L024bd094:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-30608(r11)
    li      r4,0
    bl      ext_0247f854
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
