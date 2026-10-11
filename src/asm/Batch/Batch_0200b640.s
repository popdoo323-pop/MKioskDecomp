# Converted from the disassembly of 0x0200b640 (328 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b640
Batch_0200b640:
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lwz     r11,228(r3)
    li      r6,0
    li      r5,-1
    lwz     r12,232(r3)
    cmpwi   r11,0
    lwz     r8,0(r4)
    bgt-    L0200b670
    cmplw   r5,r11
    blt-    L0200b734
L0200b66c:
    b       L0200b73c
L0200b670:
    mtctr   r11
    li      r7,0
    mr      r10,r11
L0200b67c:
    cmplw   r6,r10
    bge-    L0200b694
    lwzx    r9,r12,r7
    cmpwi   r9,253
    bne-    L0200b6b0
    b       L0200b6a0
L0200b694:
    lwz     r9,0(r12)
    cmpwi   r9,253
    bne-    L0200b6b0
L0200b6a0:
    mr      r5,r6
    cmplw   r5,r11
    bge+    L0200b66c
    b       L0200b734
L0200b6b0:
    cmplw   r6,r10
    bge-    L0200b6c8
    lwzx    r9,r12,r7
    cmplw   r8,r9
    bne-    L0200b720
    b       L0200b6d4
L0200b6c8:
    lwz     r9,0(r12)
    cmplw   r8,r9
    bne-    L0200b720
L0200b6d4:
    cmplw   r6,r10
    bge-    L0200b6f4
    add     r9,r12,r7
    lbz     r31,5(r4)
    lbz     r9,4(r9)
    cmplw   r31,r9
    bne-    L0200b720
    b       L0200b704
L0200b6f4:
    lbz     r31,5(r4)
    lbz     r9,4(r12)
    cmplw   r31,r9
    bne-    L0200b720
L0200b704:
    cmplw   r6,r10
    bge-    L0200b710
    add     r12,r12,r7
L0200b710:
    lwz     r31,12(r1)
    addi    r3,r12,8
    addi    r1,r1,16
    blr
L0200b720:
    addi    r7,r7,28
    addi    r6,r6,1
    bdnz+   L0200b67c
    cmplw   r5,r11
    bge+    L0200b66c
L0200b734:
    mulli   r11,r5,28
    add     r12,r12,r11
L0200b73c:
    stw     r8,0(r12)
    lwz     r12,228(r3)
    cmplw   r5,r12
    lwz     r12,232(r3)
    bge-    L0200b758
    mulli   r11,r5,28
    add     r12,r12,r11
L0200b758:
    lbz     r11,5(r4)
    stb     r11,4(r12)
    lwz     r12,228(r3)
    cmplw   r5,r12
    lwz     r12,232(r3)
    bge-    L0200b778
    mulli   r11,r5,28
    add     r12,r12,r11
L0200b778:
    lwz     r31,12(r1)
    addi    r3,r12,8
    addi    r1,r1,16
    blr
