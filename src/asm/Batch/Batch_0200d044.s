# Converted from the disassembly of 0x0200d044 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d044
Batch_0200d044:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    stw     r30,32(r1)
    mr      r30,r3
    mr      r31,r4
    stw     r0,44(r1)
    bl      ext_0200c504
    lwz     r9,220(r30)
    lwz     r5,0(r31)
    lbz     r10,5(r31)
    slwi    r7,r9,1
    stw     r5,20(r1)
    lbz     r8,4(r31)
    addi    r9,r7,-1
    stb     r3,92(r30)
    stb     r3,16(r1)
    mr      r3,r30
    stb     r10,89(r30)
    stb     r9,93(r30)
    stb     r8,88(r30)
    stw     r5,84(r30)
    bl      ext_0200b938
    lis     r30,4119
    lwz     r11,-4780(r30)
    lwz     r3,24(r11)
    addi    r4,r1,16
    bl      ext_027b6c3c
    lwz     r6,-4780(r30)
    lwz     r3,16(r6)
    lwz     r6,0(r31)
    lwz     r0,4(r3)
    lbz     r8,4(r31)
    cmplw   r6,r0
    lbz     r10,5(r31)
    bne-    L0200d100
    lbz     r0,8(r3)
    cmplw   r8,r0
    bne-    L0200d100
    lbz     r11,9(r3)
    cmplw   r10,r11
    bne-    L0200d100
    lwz     r12,100(r3)
    lwz     r0,412(r12)
    mtctr   r0
    bctrl
    lwz     r6,0(r31)
L0200d100:
    lbz     r0,4(r31)
    lwz     r30,32(r1)
    stb     r0,12(r1)
    lwz     r0,44(r1)
    lbz     r12,5(r31)
    mtlr    r0
    stb     r12,13(r1)
    lwz     r31,36(r1)
    lwz     r4,12(r1)
    addi    r1,r1,40
    mr      r3,r6
    blr
