# Converted from the disassembly of 0x0200bfd8 (332 bytes). Name is a placeholder.
    .text
    .globl Batch_0200bfd8
Batch_0200bfd8:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    mr      r30,r4
    stw     r29,20(r1)
    stw     r28,16(r1)
    stw     r31,28(r1)
    lis     r12,4119
    stw     r0,36(r1)
    mr      r29,r3
    lwz     r12,-4780(r12)
    lwz     r11,4(r30)
    lwz     r28,24(r12)
    lwz     r0,8(r30)
    stw     r11,8(r1)
    stw     r0,12(r1)
    lwz     r3,16(r12)
    lwz     r7,100(r3)
    lwz     r0,460(r7)
    mtctr   r0
    addi    r4,r1,8
    bctrl
    lbz     r9,8(r30)
    cmpwi   r9,0
    bne-    L0200c0d4
    lwz     r0,0(r29)
    lwz     r31,8(r29)
    slwi    r7,r0,2
    add     r6,r31,r7
    cmplw   r31,r6
    beq-    L0200c0d4
L0200c054:
    lwz     r11,0(r31)
    lwz     r10,8(r1)
    lwz     r0,4(r11)
    cmplw   r10,r0
    bne-    L0200c0c8
    lbz     r12,13(r1)
    lbz     r8,9(r11)
    cmplw   r12,r8
    bne-    L0200c0c8
    lbz     r9,8(r11)
    cmpwi   r9,0
    beq-    L0200c0c8
    lwz     r0,4(r11)
    cmpwi   r0,253
    beq-    L0200c0a4
    li      r5,1
    addi    r4,r11,4
    mr      r3,r28
    bl      ext_027b69d4
    lwz     r11,0(r31)
L0200c0a4:
    lwz     r9,28(r11)
    lwz     r10,12(r9)
    mtctr   r10
    mr      r3,r11
    bctrl
    lwz     r0,0(r29)
    lwz     r8,8(r29)
    slwi    r7,r0,2
    add     r6,r8,r7
L0200c0c8:
    addi    r31,r31,4
    cmplw   r31,r6
    bne+    L0200c054
L0200c0d4:
    lwz     r0,4(r30)
    cmpwi   r0,253
    beq-    L0200c0f0
    li      r5,1
    addi    r4,r30,4
    mr      r3,r28
    bl      ext_027b69d4
L0200c0f0:
    lwz     r12,28(r30)
    lwz     r0,12(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
    lwz     r28,16(r1)
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
