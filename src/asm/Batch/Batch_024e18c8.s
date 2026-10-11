# Converted from the disassembly of 0x024e18c8 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_024e18c8
Batch_024e18c8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r0,80(r29)
    cmpwi   r0,0
    bne-    L024e195c
    lis     r31,4117
    lwz     r31,-3296(r31)
    lwz     r3,568(r31)
    li      r30,0
    bl      ext_0205ce64
    cmpwi   r3,0
    beq-    L024e1910
    lwz     r30,568(r31)
L024e1910:
    lbz     r0,180(r30)
    cmpwi   r0,0
    beq-    L024e1984
    lwz     r9,68(r29)
    lis     r12,4107
    lfs     f1,-11972(r12)
    lwz     r3,0(r9)
    li      r4,1
    bl      ext_0247f854
    li      r4,1
    mr      r3,r29
    bl      ext_0248daf4
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024e195c:
    cmpwi   r0,1
    bne-    L024e1984
    lwz     r11,68(r29)
    lwz     r3,0(r11)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024e1984
    mr      r3,r29
    bl      ext_0248d6a0
L024e1984:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
