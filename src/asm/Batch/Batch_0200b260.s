# Converted from the disassembly of 0x0200b260 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b260
Batch_0200b260:
    lbz     r10,0(r4)
    extsb   r10,r10
    cmpwi   r10,-1
    mr      r11,r3
    beq-    L0200b2dc
    lbz     r9,93(r11)
    extsb   r9,r9
    cmplw   r9,r10
    beq-    L0200b2dc
    lwz     r12,180(r11)
    cmpwi   r12,0
    li      r3,0
    ble-    L0200b2dc
    mtctr   r12
    lwz     r11,184(r11)
    mr      r0,r12
L0200b2a0:
    cmplw   r3,r0
    bge-    L0200b2bc
    lbzx    r7,r11,r3
    extsb   r7,r7
    cmplw   r7,r10
    bne-    L0200b2d4
    b       L0200b2cc
L0200b2bc:
    lbz     r7,0(r11)
    extsb   r7,r7
    cmplw   r7,r10
    bne-    L0200b2d4
L0200b2cc:
    extsb   r3,r3
    blr
L0200b2d4:
    addi    r3,r3,1
    bdnz+   L0200b2a0
L0200b2dc:
    li      r3,-1
    blr
