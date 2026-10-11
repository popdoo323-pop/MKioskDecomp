# Converted from the disassembly of 0x02017e90 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_02017e90
Batch_02017e90:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r3
    stw     r31,20(r1)
    stw     r0,28(r1)
    bl      ext_02016e34
    lwz     r10,104(r30)
    lwz     r11,68(r10)
    cmpwi   r11,-1
    beq-    L02017ef8
    lwz     r0,68(r10)
    lis     r31,4120
    lwz     r31,-14016(r31)
    addi    r3,r1,8
    stw     r0,8(r1)
    bl      ext_02016190
    cmpwi   r3,0
    lwz     r3,88(r30)
    beq-    L02017ee8
    lis     r31,4120
    lwz     r31,-14012(r31)
L02017ee8:
    mr      r4,r31
    bl      ext_02008eb0
    add     r12,r3,r31
    stw     r12,160(r30)
L02017ef8:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
