# Converted from the disassembly of 0x0200b148 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b148
Batch_0200b148:
    lwz     r10,20(r3)
    lwz     r8,28(r3)
    slwi    r9,r10,2
    add     r12,r8,r9
    cmplw   r8,r12
    beq-    L0200b188
    lbz     r11,0(r4)
    extsb   r11,r11
L0200b168:
    lwz     r3,0(r8)
    lbz     r0,14(r3)
    extsb   r0,r0
    cmplw   r0,r11
    beqlr-
    addi    r8,r8,4
    cmplw   r8,r12
    bne+    L0200b168
L0200b188:
    li      r3,0
    blr
