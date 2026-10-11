# Converted from the disassembly of 0x024e1860 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024e1860
Batch_024e1860:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,268(r31)
    cmpwi   r0,1
    bne-    L024e1890
    mr      r3,r31
    li      r4,0
    bl      ext_0248daf4
    b       L024e18b4
L024e1890:
    lwz     r12,68(r31)
    lis     r11,4107
    lfs     f1,-11972(r11)
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247f854
    mr      r3,r31
    li      r4,1
    bl      ext_0248daf4
L024e18b4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
