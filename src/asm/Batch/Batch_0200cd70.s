# Converted from the disassembly of 0x0200cd70 (448 bytes). Name is a placeholder.
    .text
    .globl Batch_0200cd70
Batch_0200cd70:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lbz     r0,224(r31)
    cmpwi   r0,0
    bne-    L0200cf14
    lis     r29,4119
    lwzu    r12,-4780(r29)
    lbz     r0,226(r31)
    lwz     r12,24(r12)
    cmpwi   r0,0
    lwz     r30,164(r12)
    bne-    L0200cde4
    lwz     r6,240(r31)
    addi    r6,r6,1
    stw     r6,240(r31)
    lwz     r7,0(r29)
    lwz     r3,16(r7)
    lwz     r8,100(r3)
    lwz     r10,540(r8)
    mtctr   r10
    bctrl
    cmpwi   r3,0
    stb     r3,226(r31)
    beq-    L0200ce90
L0200cde4:
    lbz     r9,225(r31)
    cmpwi   r9,0
    bne-    L0200ce14
    mr      r3,r30
    li      r4,0
    bl      ext_027b23a8
    stb     r3,225(r31)
    mr      r3,r30
    bl      ext_027b2174
    lbz     r0,225(r31)
    cmpwi   r0,0
    beq-    L0200ce90
L0200ce14:
    lbz     r6,224(r31)
    cmpwi   r6,0
    bne-    L0200ce9c
    lwz     r8,248(r31)
    addi    r8,r8,1
    mr      r3,r31
    stw     r8,248(r31)
    bl      ext_0200cc80
    cmpwi   r3,0
    beq-    L0200ce90
    mr      r3,r30
    bl      ext_027b2db0
    cmpwi   r3,0
    beq-    L0200ce90
    li      r9,1
    mr      r3,r30
    stb     r9,224(r31)
    bl      ext_027b26d8
    mr      r3,r31
    bl      ext_0200b938
    lwz     r11,0(r29)
    lwz     r3,16(r11)
    lwz     r12,100(r3)
    lwz     r0,436(r12)
    mtctr   r0
    li      r4,0
    bctrl
    lbz     r0,224(r31)
    cmpwi   r0,0
    beq-    L0200cf14
    b       L0200ced4
L0200ce90:
    lbz     r10,224(r31)
    cmpwi   r10,0
    beq-    L0200cf14
L0200ce9c:
    mr      r3,r30
    bl      ext_027b26d8
    mr      r3,r31
    bl      ext_0200b938
    lwz     r11,0(r29)
    lwz     r3,16(r11)
    lwz     r12,100(r3)
    lwz     r0,436(r12)
    mtctr   r0
    li      r4,0
    bctrl
    lbz     r0,224(r31)
    cmpwi   r0,0
    beq-    L0200cf14
L0200ced4:
    lwz     r0,0(r31)
    lwz     r12,8(r31)
    slwi    r10,r0,2
    add     r6,r12,r10
    cmplw   r12,r6
    beq-    L0200cf14
    li      r6,0
L0200cef0:
    lwz     r7,0(r12)
    stb     r6,24(r7)
    lwz     r8,0(r31)
    lwz     r11,8(r31)
    slwi    r0,r8,2
    addi    r12,r12,4
    add     r9,r11,r0
    cmplw   r12,r9
    bne+    L0200cef0
L0200cf14:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
