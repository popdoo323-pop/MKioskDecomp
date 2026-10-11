# Converted from the disassembly of 0x0201697c (360 bytes). Name is a placeholder.
    .text
    .globl Batch_0201697c
Batch_0201697c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r12,112(r3)
    cmplwi  r12,3
    bge-    L020169bc
    cmplwi  r12,1
    blt-    L02016a44
    beq-    L02016a64
    bl      ext_0201692c
    lis     r12,4120
    lwz     r11,40(r3)
    lwz     r12,-14204(r12)
    cmpw    r11,r12
    bgt-    L020169e0
    b       L02016ad4
L020169bc:
    cmplwi  r12,4
    blt-    L02016a44
    beq-    L02016a64
    cmplwi  r12,5
    beq-    L02016a84
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L020169e0:
    lwz     r12,104(r3)
    lwz     r11,80(r12)
    cmpwi   r11,1
    beq-    L020169f8
    cmpwi   r11,2
    bne-    L02016a14
L020169f8:
    li      r12,1
    stb     r12,39(r3)
    stb     r12,64(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016a14:
    lwz     r0,68(r12)
    cmpwi   r0,-1
    beq-    L02016ac4
L02016a20:
    bl      ext_02015c0c
    li      r0,10
    li      r11,1
    stb     r0,64(r3)
    stb     r11,39(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016a44:
    bl      ext_0201692c
    lwz     r11,112(r3)
    addi    r11,r11,1
    stw     r11,112(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016a64:
    bl      ext_02015c0c
    lwz     r12,112(r3)
    addi    r12,r12,1
    stw     r12,112(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016a84:
    bl      ext_0201692c
    lwz     r12,104(r3)
    lwz     r0,68(r12)
    cmpwi   r0,-1
    beq-    L02016ac4
    lwz     r0,68(r12)
    cmpwi   r0,12
    bne+    L02016a20
    li      r0,8
    li      r11,1
    stb     r0,64(r3)
    stb     r11,39(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016ac4:
    li      r12,0
    li      r0,1
    stb     r12,64(r3)
    stb     r0,39(r3)
L02016ad4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
