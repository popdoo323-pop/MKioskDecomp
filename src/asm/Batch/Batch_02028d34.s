# Converted from the disassembly of 0x02028d34 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02028d34
Batch_02028d34:
    mr      r12,r3
    lwz     r0,280(r12)
    li      r3,0
    cmpwi   r0,0
    blelr-
    lwz     r8,0(r5)
    mtctr   r0
    addi    r9,r12,76
L02028d54:
    cmpwi   r8,2
    lwzu    r12,8(r9)
    beq-    L02028d70
    lwz     r11,8(r12)
    lwz     r0,104(r11)
    cmplw   r0,r8
    bne-    L02028d80
L02028d70:
    lwz     r7,12(r12)
    cmplw   r7,r4
    bne-    L02028d80
    addi    r3,r3,1
L02028d80:
    bdnz+   L02028d54
    blr
