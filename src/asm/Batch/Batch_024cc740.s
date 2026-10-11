# Converted from the disassembly of 0x024cc740 (256 bytes). Name is a placeholder.
    .text
    .globl Batch_024cc740
Batch_024cc740:
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    lwz     r10,108(r3)
    stw     r10,28(r1)
    lwz     r11,28(r1)
    li      r31,0
    lwz     r12,104(r3)
    cmpw    r31,r11
    stw     r12,24(r1)
    bge-    L024cc814
    lwz     r9,24(r1)
L024cc76c:
    li      r6,0
    cmpw    r6,r9
    bge-    L024cc808
    lwz     r10,100(r3)
    lwz     r12,92(r3)
L024cc780:
    cmplw   r6,r12
    bge-    L024cc7b4
    lwz     r8,96(r3)
    cmplw   r31,r8
    bge-    L024cc7b4
    mullw   r8,r12,r31
    add     r7,r8,r6
    slwi    r8,r7,4
    add     r7,r10,r8
    lbz     r8,6(r7)
    cmplw   r8,r4
    bne-    L024cc7fc
    b       L024cc7c4
L024cc7b4:
    mr      r7,r10
    lbz     r8,6(r7)
    cmplw   r8,r4
    bne-    L024cc7fc
L024cc7c4:
    lwz     r8,12(r7)
    cmplw   r8,r5
    bne-    L024cc7fc
    stw     r6,8(r1)
    lwz     r12,8(r1)
    stw     r31,12(r1)
    lwz     r11,12(r1)
    stw     r12,16(r1)
    lwz     r3,16(r1)
    stw     r11,20(r1)
    lwz     r31,36(r1)
    lwz     r4,20(r1)
    addi    r1,r1,40
    blr
L024cc7fc:
    addi    r6,r6,1
    cmpw    r6,r9
    blt+    L024cc780
L024cc808:
    addi    r31,r31,1
    cmpw    r31,r11
    blt+    L024cc76c
L024cc814:
    lis     r12,4124
    lwz     r31,36(r1)
    addi    r12,r12,26336
    lwz     r11,4(r12)
    lwz     r12,0(r12)
    stw     r11,20(r1)
    lwz     r4,20(r1)
    stw     r12,16(r1)
    lwz     r3,16(r1)
    addi    r1,r1,40
    blr
