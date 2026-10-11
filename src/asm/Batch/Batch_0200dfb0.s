# Converted from the disassembly of 0x0200dfb0 (268 bytes). Name is a placeholder.
    .text
    .globl Batch_0200dfb0
Batch_0200dfb0:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r28,24(r1)
    stw     r30,32(r1)
    stw     r29,28(r1)
    stw     r31,36(r1)
    stw     r0,44(r1)
    lwz     r7,100(r3)
    lis     r12,4119
    lwz     r8,156(r7)
    lwz     r12,-4780(r12)
    mtctr   r8
    lwz     r12,24(r12)
    mr      r28,r4
    mr      r31,r3
    lwz     r29,164(r12)
    bctrl
    cmpwi   r3,0
    beq-    L0200e088
    lwz     r6,104(r31)
    lwz     r0,32(r6)
    slwi    r9,r0,2
    lwz     r31,40(r6)
    add     r30,r31,r9
    cmplw   r31,r30
    beq-    L0200e088
L0200e018:
    lwz     r11,0(r31)
    lbz     r0,13(r11)
    addi    r4,r1,8
    mr      r3,r29
    stb     r0,8(r1)
    bl      ext_027b1228
    lwz     r6,24(r3)
    lwz     r7,0(r28)
    cmplw   r6,r7
    bne-    L0200e07c
    lwz     r12,0(r31)
    lwz     r9,4(r12)
    stw     r9,12(r1)
    lwz     r10,8(r12)
    lwz     r28,24(r1)
    stw     r10,16(r1)
    lwz     r4,16(r1)
    lwz     r3,12(r1)
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r31,36(r1)
    mtlr    r0
    lwz     r30,32(r1)
    addi    r1,r1,40
    blr
L0200e07c:
    addi    r31,r31,4
    cmplw   r31,r30
    bne+    L0200e018
L0200e088:
    li      r11,0
    lwz     r28,24(r1)
    stb     r11,17(r1)
    stb     r11,16(r1)
    lwz     r4,16(r1)
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r31,36(r1)
    mtlr    r0
    lwz     r30,32(r1)
    addi    r1,r1,40
    li      r3,253
    blr
