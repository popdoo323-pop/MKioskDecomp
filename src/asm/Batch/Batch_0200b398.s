# Converted from the disassembly of 0x0200b398 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b398
Batch_0200b398:
    mr      r12,r3
    lwz     r10,20(r12)
    lwz     r8,28(r12)
    slwi    r0,r10,2
    add     r7,r8,r0
    lbz     r9,0(r4)
    cmplw   r8,r7
    extsb   r9,r9
    bne-    L0200b3d8
    addi    r10,r12,80
    lbz     r12,93(r12)
    extsb   r12,r12
    li      r3,0
    cmplw   r12,r9
    bnelr-
    b       L0200b414
L0200b3d8:
    mr      r0,r9
L0200b3dc:
    lwz     r3,0(r8)
    lbz     r11,13(r3)
    extsb   r11,r11
    cmplw   r11,r0
    beqlr-
    addi    r8,r8,4
    cmplw   r8,r7
    bne+    L0200b3dc
    addi    r10,r12,80
    lbz     r12,93(r12)
    extsb   r12,r12
    li      r3,0
    cmplw   r12,r9
    bnelr-
L0200b414:
    mr      r3,r10
    blr
