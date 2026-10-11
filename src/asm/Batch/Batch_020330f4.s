# Converted from the disassembly of 0x020330f4 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_020330f4
Batch_020330f4:
    li      r11,4
    lis     r12,4120
    mtctr   r11
    addi    r12,r12,-12264
L02033104:
    lwzu    r0,4(r12)
    cmplw   r0,r4
    bne-    L02033118
    li      r3,1
    blr
L02033118:
    bdnz+   L02033104
    li      r3,0
    blr
