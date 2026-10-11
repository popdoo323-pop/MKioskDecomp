# Converted from the disassembly of 0x0200b41c (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b41c
Batch_0200b41c:
    mr      r10,r3
    lwz     r0,0(r10)
    cmpwi   r0,0
    li      r3,0
    ble-    L0200b48c
    lwz     r11,0(r4)
    mtctr   r0
    mr      r8,r0
    li      r12,0
L0200b440:
    cmplw   r3,r8
    li      r7,0
    bge-    L0200b454
    lwz     r9,8(r10)
    lwzx    r7,r9,r12
L0200b454:
    lwz     r0,4(r7)
    cmplw   r0,r11
    bne-    L0200b480
    lbz     r6,8(r7)
    lbz     r9,4(r4)
    cmplw   r6,r9
    bne-    L0200b480
    lbz     r0,9(r7)
    lbz     r6,5(r4)
    cmplw   r0,r6
    beqlr-
L0200b480:
    addi    r12,r12,4
    addi    r3,r3,1
    bdnz+   L0200b440
L0200b48c:
    li      r3,-1
    blr
