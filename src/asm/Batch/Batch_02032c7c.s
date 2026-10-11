# Converted from the disassembly of 0x02032c7c (404 bytes). Name is a placeholder.
    .text
    .globl Batch_02032c7c
Batch_02032c7c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    lis     r31,4120
    stw     r0,20(r1)
    lwzu    r10,-12172(r31)
    mr      r0,r4
    cmplw   r10,r0
    mr      r30,r3
    bne-    L02032cc0
    lwz     r4,8(r31)
    mr      r3,r30
    bl      ext_02032a78
    cmplwi  r3,1
    bgt-    L02032df4
    b       L02032dd8
L02032cc0:
    lwz     r11,4(r31)
    cmplw   r11,r0
    lwz     r4,12(r31)
    bne-    L02032cf8
    mr      r3,r30
    bl      ext_02032a78
    cmplwi  r3,1
    ble-    L02032dd8
    lwz     r4,16(r31)
    mr      r3,r30
    bl      ext_02032a78
    cmplwi  r3,1
    bgt-    L02032df4
    b       L02032dd8
L02032cf8:
    cmplw   r4,r0
    bne-    L02032d44
    lwz     r4,20(r31)
    mr      r3,r30
    bl      ext_02032a78
    cmplwi  r3,1
    ble-    L02032dd8
    lwz     r31,4(r31)
    mr      r3,r30
    mr      r4,r31
    bl      ext_02032a78
    cmplwi  r3,1
    bgt-    L02032df4
    li      r5,0
    mr      r4,r31
    mr      r3,r30
    bl      ext_02032b70
    li      r3,1
    b       L02032df8
L02032d44:
    lwz     r12,16(r31)
    cmplw   r12,r0
    bne-    L02032d80
    lwz     r31,4(r31)
    mr      r3,r30
    mr      r4,r31
    bl      ext_02032a78
    cmplwi  r3,1
    bgt-    L02032df4
    li      r5,0
    mr      r4,r31
    mr      r3,r30
    bl      ext_02032b70
    li      r3,1
    b       L02032df8
L02032d80:
    lwz     r6,20(r31)
    cmplw   r6,r0
    bne-    L02032db8
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L02032df4
    lwz     r7,0(r3)
    lwz     r0,252(r7)
    mtctr   r0
    li      r4,60
    bctrl
    li      r3,1
    b       L02032df8
L02032db8:
    lwz     r9,24(r31)
    cmplw   r9,r0
    bne-    L02032df4
    lwz     r4,28(r31)
    mr      r3,r30
    bl      ext_02032a78
    cmplwi  r3,1
    bgt-    L02032df4
L02032dd8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
L02032df4:
    li      r3,1
L02032df8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
