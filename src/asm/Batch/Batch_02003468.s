# Converted from the disassembly of 0x02003468 (352 bytes). Name is a placeholder.
    .text
    .globl Batch_02003468
Batch_02003468:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r11,80(r30)
    lbz     r0,116(r11)
    cmpwi   r0,0
    lwz     r12,188(r30)
    bne-    L020034e0
    lwz     r11,192(r30)
    addi    r12,r12,1
    stw     r12,188(r30)
    addi    r0,r11,1
    mr      r3,r30
    stw     r0,192(r30)
    bl      ext_02002300
    mr      r3,r30
    bl      ext_02002740
    mr      r3,r30
    bl      ext_02002c7c
    mr      r3,r30
    bl      ext_02002ec8
    lwz     r11,80(r30)
    lbz     r0,80(r11)
    cmpwi   r0,0
    li      r31,0
    beq-    L02003558
    b       L02003524
L020034e0:
    li      r0,1
    addi    r12,r12,1
    stw     r0,192(r30)
    mr      r3,r30
    stw     r12,188(r30)
    bl      ext_02002300
    mr      r3,r30
    bl      ext_02002740
    mr      r3,r30
    bl      ext_02002c7c
    mr      r3,r30
    bl      ext_02002ec8
    lwz     r11,80(r30)
    lbz     r0,80(r11)
    cmpwi   r0,0
    li      r31,0
    beq-    L02003558
L02003524:
    lwz     r12,68(r30)
    lwz     r3,84(r12)
    bl      ext_02185cb4
    lwz     r12,80(r30)
    lwz     r12,76(r12)
    lwz     r11,0(r12)
    addi    r4,r11,4
    bl      ext_025579b0
    lis     r12,4096
    lfs     f0,224(r12)
    fcmpu   cr0,f1,f0
    bge-    L02003558
    li      r31,1
L02003558:
    lis     r12,4120
    lwz     r11,192(r30)
    lwz     r12,-15624(r12)
    cmpw    r11,r12
    clrlwi  r31,r31,24
    bgt-    L02003584
    lbz     r12,253(r30)
    cmpwi   r12,0
    bne-    L02003584
    cmpwi   r31,0
    beq-    L02003590
L02003584:
    mr      r3,r30
    li      r4,0
    bl      ext_02002e50
L02003590:
    lis     r11,4120
    lwz     r0,40(r30)
    lwz     r11,-15612(r11)
    cmplw   r0,r11
    blt-    L020035b0
    mr      r3,r30
    li      r4,1
    bl      ext_02002e50
L020035b0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
