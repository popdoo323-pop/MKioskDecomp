# Converted from the disassembly of 0x0200f7b0 (696 bytes). Name is a placeholder.
    .text
    .globl Batch_0200f7b0
Batch_0200f7b0:
    stwu    r1,-80(r1)
    stmw    r26,56(r1)
    mr      r27,r3
    addi    r28,r27,204
    mr      r3,r28
    mflr    r0
    mr      r30,r4
    mr      r26,r5
    stw     r0,84(r1)
    bl      ext_0262b790
    lbz     r29,4(r30)
    lwz     r5,4(r26)
    lwz     r31,0(r30)
    stw     r5,28(r1)
    lwz     r12,4(r27)
    lwz     r4,0(r26)
    cmplw   r31,r12
    lbz     r30,5(r30)
    stw     r4,24(r1)
    bne-    L0200f870
    lbz     r7,8(r27)
    cmplw   r29,r7
    bne-    L0200f870
    lbz     r8,9(r27)
    cmplw   r30,r8
    bne-    L0200f870
    lwz     r11,100(r27)
    lwz     r5,156(r11)
    mtctr   r5
    mr      r3,r27
    bctrl
    cmpwi   r3,0
    bne-    L0200f848
    lwz     r12,4(r27)
    cmplw   r31,r12
    lwz     r6,16(r27)
    beq-    L0200f87c
    b       L0200f8a4
L0200f848:
    lis     r12,4119
    lwz     r12,-4780(r12)
    li      r8,7
    lwz     r3,20(r12)
    addi    r4,r1,48
    stw     r8,48(r1)
    bl      ext_027ada20
    mr      r3,r28
    bl      ext_0262b7c4
    b       L0200fa54
L0200f870:
    cmplw   r31,r12
    lwz     r6,16(r27)
    bne-    L0200f8a4
L0200f87c:
    lbz     r10,8(r27)
    cmplw   r29,r10
    bne-    L0200f8a4
    lbz     r0,9(r27)
    cmplw   r30,r0
    bne-    L0200f8a4
    lwz     r4,0(r26)
    stw     r4,4(r27)
    lwz     r5,4(r26)
    stw     r5,8(r27)
L0200f8a4:
    cmplw   r31,r6
    lwz     r12,104(r27)
    bne-    L0200f8d8
    lbz     r7,20(r27)
    cmplw   r29,r7
    bne-    L0200f8d8
    lbz     r8,21(r27)
    cmplw   r30,r8
    bne-    L0200f8d8
    lwz     r9,0(r26)
    stw     r9,16(r27)
    lwz     r10,4(r26)
    stw     r10,20(r27)
L0200f8d8:
    lwz     r0,20(r12)
    lwz     r5,28(r12)
    slwi    r11,r0,2
    add     r3,r5,r11
    cmplw   r5,r3
    beq-    L0200f990
L0200f8f0:
    lwz     r11,0(r5)
    lwz     r12,0(r11)
    cmpwi   r12,3
    beq-    L0200f984
    lwz     r12,24(r1)
    lwz     r0,28(r1)
    stw     r12,16(r1)
    stw     r0,20(r1)
    lbz     r0,8(r11)
    stb     r0,20(r1)
    lwz     r4,20(r1)
    stw     r12,32(r1)
    stw     r4,36(r1)
    lwz     r6,4(r11)
    cmplw   r6,r31
    bne-    L0200f95c
    lbz     r7,8(r11)
    cmplw   r7,r29
    bne-    L0200f95c
    lbz     r8,9(r11)
    cmplw   r8,r30
    bne-    L0200f95c
    lwz     r10,0(r26)
    stw     r10,4(r11)
    lwz     r0,4(r26)
    stw     r0,8(r11)
    lwz     r11,0(r5)
L0200f95c:
    lwz     r4,4(r11)
    cmplw   r4,r31
    bne-    L0200f984
    lbz     r0,8(r11)
    cmpwi   r0,0
    beq-    L0200f984
    lwz     r7,32(r1)
    stw     r7,4(r11)
    lwz     r0,36(r1)
    stw     r0,8(r11)
L0200f984:
    addi    r5,r5,4
    cmplw   r5,r3
    bne+    L0200f8f0
L0200f990:
    mr      r3,r27
    bl      ext_0200d350
    lwz     r3,104(r27)
    bl      ext_0200b938
    lwz     r9,112(r27)
    addi    r4,r27,84
    addi    r8,r9,-24
    cmplw   r8,r4
    lwz     r10,4(r9)
    beq-    L0200fa4c
L0200f9b8:
    lwz     r12,24(r1)
    lbz     r0,29(r1)
    stw     r12,40(r1)
    lbz     r11,4(r8)
    stw     r12,8(r1)
    stb     r11,12(r1)
    stb     r0,13(r1)
    lwz     r9,8(r8)
    cmpwi   r9,3
    beq-    L0200fa3c
    lwz     r5,0(r8)
    lbz     r11,4(r8)
    cmplw   r5,r31
    lbz     r0,5(r8)
    bne-    L0200fa14
    cmplw   r11,r29
    bne-    L0200fa14
    cmplw   r0,r30
    bne-    L0200fa14
    lwz     r9,8(r1)
    stw     r9,0(r8)
    lwz     r12,12(r1)
    stw     r12,4(r8)
L0200fa14:
    lwz     r5,0(r8)
    cmplw   r5,r31
    bne-    L0200fa3c
    lbz     r0,4(r8)
    cmpwi   r0,0
    beq-    L0200fa3c
    lwz     r7,8(r1)
    stw     r7,0(r8)
    lwz     r9,12(r1)
    stw     r9,4(r8)
L0200fa3c:
    addi    r8,r10,-24
    cmplw   r8,r4
    lwz     r10,4(r10)
    bne+    L0200f9b8
L0200fa4c:
    mr      r3,r28
    bl      ext_0262b7c4
L0200fa54:
    lmw     r26,56(r1)
    lwz     r0,84(r1)
    mtlr    r0
    addi    r1,r1,80
    blr
