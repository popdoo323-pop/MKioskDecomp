# Converted from the disassembly of 0x0200ad04 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200ad04
Batch_0200ad04:
    mr      r12,r3
    lwz     r0,20(r12)
    lwz     r8,28(r12)
    slwi    r10,r0,2
    add     r0,r8,r10
    lbz     r7,0(r4)
    cmplw   r8,r0
    extsb   r7,r7
    bne-    L0200ad44
    lbz     r10,92(r12)
    addi    r9,r12,80
    extsb   r10,r10
    li      r3,0
    cmplw   r10,r7
    bnelr-
    b       L0200ad80
L0200ad44:
    mr      r11,r7
L0200ad48:
    lwz     r3,0(r8)
    lbz     r9,12(r3)
    extsb   r9,r9
    cmplw   r9,r11
    beqlr-
    addi    r8,r8,4
    cmplw   r8,r0
    bne+    L0200ad48
    lbz     r10,92(r12)
    addi    r9,r12,80
    extsb   r10,r10
    li      r3,0
    cmplw   r10,r7
    bnelr-
L0200ad80:
    mr      r3,r9
    blr
