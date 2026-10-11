# Converted from the disassembly of 0x021a7cec (236 bytes). Name is a placeholder.
    .text
    .globl Wheel_Gap_021a7cec
Wheel_Gap_021a7cec:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r29,4(r31)
    lwz     r7,316(r29)
    rlwinm. r30,r7,10,31,31
    mr      r5,r4
    bne-    L021a7d28
    lbz     r10,119(r29)
    cmpwi   r10,0
    beq-    L021a7d3c
L021a7d28:
    mr      r3,r31
    li      r4,0
    bl      ext_021a768c
    lwz     r7,316(r29)
    b       L021a7d5c
L021a7d3c:
    lbz     r11,38(r31)
    cmpwi   r11,0
    bne-    L021a7d5c
    mr      r3,r31
    li      r5,0
    li      r4,1
    bl      ext_021a768c
    lwz     r7,316(r29)
L021a7d5c:
    lbz     r12,105(r29)
    cmpwi   r12,0
    li      r4,1
    beq-    L021a7d88
    lbz     r0,106(r29)
    cmpwi   r0,0
    bne-    L021a7d88
    lbz     r5,115(r29)
    cmpwi   r5,0
    bne-    L021a7d88
    li      r4,0
L021a7d88:
    rlwinm. r0,r7,6,31,31
    beq-    L021a7d9c
    lbz     r0,119(r29)
    cmpwi   r0,0
    beq-    L021a7db0
L021a7d9c:
    cmpwi   r30,0
    beq-    L021a7db4
    lbz     r0,100(r29)
    cmpwi   r0,0
    bne-    L021a7db4
L021a7db0:
    li      r4,0
L021a7db4:
    mr      r3,r31
    bl      ext_021a7668
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
