# Converted from the disassembly of 0x024def40 (456 bytes). Name is a placeholder.
    .text
    .globl Batch_024def40
Batch_024def40:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,80(r31)
    cmpwi   r0,0
    li      r7,0
    bne-    L024df044
    lwz     r0,256(r31)
    cmplwi  r0,1
    beq-    L024def94
    cmplwi  r0,3
    beq-    L024def94
    cmplwi  r0,5
    beq-    L024def94
    cmplwi  r0,6
    beq-    L024df024
    lwz     r12,212(r31)
    cmpwi   r12,9
    bne-    L024defd4
L024def94:
    lwz     r3,1384(r31)
    cmpwi   r3,0
    beq-    L024df028
    lwz     r6,84(r3)
    lwz     r7,116(r6)
    mtctr   r7
    bctrl
    mr      r3,r31
    bl      ext_024dc754
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024defd4:
    cmpwi   r0,2
    bne-    L024df01c
    lwz     r3,1384(r31)
    li      r8,10
    cmpwi   r3,0
    stw     r8,132(r31)
    beq-    L024df028
    lwz     r9,84(r3)
    lwz     r10,148(r9)
    mtctr   r10
    bctrl
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024df01c:
    cmpwi   r0,4
    bne-    L024df028
L024df024:
    stw     r7,132(r31)
L024df028:
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024df044:
    cmpwi   r0,1
    bne-    L024df07c
    lwz     r11,88(r31)
    lwz     r12,132(r31)
    cmplw   r11,r12
    blt-    L024df0f4
    mr      r3,r31
    stw     r7,132(r31)
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024df07c:
    cmpwi   r0,2
    bne-    L024df0f4
    lwz     r0,256(r31)
    cmplwi  r0,1
    beq-    L024df0b4
    cmplwi  r0,3
    beq-    L024df0b4
    cmplwi  r0,5
    blt-    L024df0a8
    cmplwi  r0,6
    ble-    L024df0b4
L024df0a8:
    lwz     r8,212(r31)
    cmpwi   r8,9
    bne-    L024df0dc
L024df0b4:
    lwz     r3,1384(r31)
    cmpwi   r3,0
    beq-    L024df0ec
    lwz     r9,84(r3)
    lwz     r10,124(r9)
    mtctr   r10
    bctrl
    cmpwi   r3,0
    beq-    L024df0f4
    b       L024df0ec
L024df0dc:
    cmpwi   r0,2
    beq-    L024df0ec
    cmpwi   r0,4
    bne-    L024df0f4
L024df0ec:
    mr      r3,r31
    bl      ext_0248d5ac
L024df0f4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
