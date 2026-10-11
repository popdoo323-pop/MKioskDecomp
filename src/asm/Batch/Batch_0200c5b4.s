# Converted from the disassembly of 0x0200c5b4 (408 bytes). Name is a placeholder.
    .text
    .globl Batch_0200c5b4
Batch_0200c5b4:
    stwu    r1,-64(r1)
    stmw    r27,44(r1)
    mflr    r0
    stw     r0,68(r1)
    lwz     r6,0(r3)
    cmplw   r5,r6
    li      r12,0
    bge-    L0200c5e0
    lwz     r8,8(r3)
    slwi    r7,r5,2
    lwzx    r12,r7,r8
L0200c5e0:
    lwz     r10,4(r12)
    lwz     r11,0(r12)
    stw     r10,12(r1)
    lwz     r0,8(r12)
    stw     r0,16(r1)
    lbz     r31,13(r12)
    lwz     r30,20(r12)
    lbz     r27,24(r12)
    lwz     r28,16(r12)
    lbz     r29,14(r12)
    extsb   r29,r29
    cmplw   r5,r6
    lbz     r10,12(r12)
    extsb   r31,r31
    li      r6,0
    lwz     r7,0(r4)
    extsb   r10,r10
    bge-    L0200c634
    lwz     r6,8(r3)
    slwi    r12,r5,2
    lwzx    r6,r12,r6
L0200c634:
    stw     r7,0(r6)
    lwz     r8,4(r4)
    stw     r8,4(r6)
    lwz     r9,8(r4)
    stw     r9,8(r6)
    lbz     r0,12(r4)
    stb     r0,12(r6)
    lbz     r0,13(r4)
    stb     r0,13(r6)
    lbz     r7,14(r4)
    stb     r7,14(r6)
    lwz     r8,16(r4)
    lwz     r0,20(r4)
    stw     r8,16(r6)
    stw     r0,20(r6)
    lbz     r8,24(r4)
    stb     r8,24(r6)
    lwz     r12,12(r1)
    stb     r10,12(r4)
    stw     r11,0(r4)
    stw     r12,4(r4)
    lwz     r0,16(r1)
    stw     r30,20(r4)
    stw     r0,8(r4)
    stb     r31,13(r4)
    stw     r28,16(r4)
    stb     r29,14(r4)
    stb     r27,24(r4)
    lwz     r0,0(r3)
    cmpwi   r0,0
    li      r12,0
    ble-    L0200c6ec
    lwz     r7,8(r3)
    mtctr   r0
    addi    r7,r7,-4
L0200c6c0:
    lwzu    r6,4(r7)
    cmplw   r6,r4
    bne-    L0200c6e4
    stb     r12,13(r4)
    lwz     r8,0(r3)
    cmplw   r5,r8
    li      r11,0
    bge-    L0200c710
    b       L0200c704
L0200c6e4:
    addi    r12,r12,1
    bdnz+   L0200c6c0
L0200c6ec:
    li      r12,-1
    stb     r12,13(r4)
    lwz     r8,0(r3)
    cmplw   r5,r8
    li      r11,0
    bge-    L0200c710
L0200c704:
    lwz     r0,8(r3)
    slwi    r9,r5,2
    lwzx    r11,r9,r0
L0200c710:
    stb     r5,13(r11)
    bl      ext_0200b938
    lis     r11,4119
    lwz     r11,-4780(r11)
    lwz     r3,16(r11)
    lwz     r10,100(r3)
    lwz     r0,436(r10)
    mtctr   r0
    li      r4,0
    bctrl
    lmw     r27,44(r1)
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
