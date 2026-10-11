# Converted from the disassembly of 0x020275a0 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_020275a0
Batch_020275a0:
    lwz     r9,4(r3)
    li      r0,0
    mr.     r10,r9
    mr      r12,r0
    ble-    L020275ec
    mtctr   r10
    li      r11,0
L020275bc:
    cmplw   r12,r9
    li      r8,0
    bge-    L020275d0
    lwz     r7,12(r3)
    lwzx    r8,r7,r11
L020275d0:
    lwz     r6,28(r8)
    cmplw   r6,r4
    bne-    L020275e0
    mr      r0,r8
L020275e0:
    addi    r11,r11,4
    addi    r12,r12,1
    bdnz+   L020275bc
L020275ec:
    mr      r3,r0
    blr
