# Converted from the disassembly of 0x0200b2e4 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b2e4
Batch_0200b2e4:
    lwz     r0,20(r3)
    lwz     r12,28(r3)
    slwi    r7,r0,2
    add     r5,r12,r7
    cmplw   r12,r5
    lwz     r0,0(r4)
    bne-    L0200b314
    lwz     r6,84(r3)
    cmplw   r6,r0
    addi    r10,r3,80
    beq-    L0200b36c
    b       L0200b38c
L0200b314:
    lwz     r10,0(r12)
    mr      r8,r10
    lwz     r9,4(r8)
    cmplw   r9,r0
    bne-    L0200b350
    lbz     r11,8(r8)
    lbz     r6,4(r4)
    cmplw   r11,r6
    bne-    L0200b350
    lbz     r7,9(r8)
    lbz     r9,5(r4)
    cmplw   r7,r9
    bne-    L0200b350
    mr      r3,r10
    blr
L0200b350:
    addi    r12,r12,4
    cmplw   r12,r5
    bne+    L0200b314
    lwz     r6,84(r3)
    cmplw   r6,r0
    addi    r10,r3,80
    bne-    L0200b38c
L0200b36c:
    lbz     r7,8(r10)
    lbz     r8,4(r4)
    cmplw   r7,r8
    bne-    L0200b38c
    lbz     r9,9(r10)
    lbz     r6,5(r4)
    cmplw   r9,r6
    beq-    L0200b390
L0200b38c:
    li      r10,0
L0200b390:
    mr      r3,r10
    blr
