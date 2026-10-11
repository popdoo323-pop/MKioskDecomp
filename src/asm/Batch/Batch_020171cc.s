# Converted from the disassembly of 0x020171cc (124 bytes). Name is a placeholder.
    .text
    .globl Batch_020171cc
Batch_020171cc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r0,117(r31)
    li      r11,3
    cmpwi   r0,0
    stw     r11,112(r31)
    beq-    L0201722c
    lbz     r12,136(r31)
    cmpwi   r12,0
    lwz     r3,88(r31)
    beq-    L02017218
    lis     r4,4120
    lwz     r4,-14208(r4)
    bl      ext_02008eb0
    stw     r3,148(r31)
    b       L02017234
L02017218:
    lis     r4,4120
    lwz     r4,-14212(r4)
    bl      ext_02008eb0
    stw     r3,148(r31)
    b       L02017234
L0201722c:
    li      r3,-1
    stw     r3,148(r31)
L02017234:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
