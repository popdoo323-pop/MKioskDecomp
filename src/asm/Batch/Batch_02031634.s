# Converted from the disassembly of 0x02031634 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02031634
Batch_02031634:
    cmpwi   r4,0
    li      r0,0
    beq-    L0203164c
    lwz     r11,104(r3)
    cmpwi   r11,2
    bne-    L02031654
L0203164c:
    li      r0,0
    b       L02031664
L02031654:
    lwz     r12,104(r4)
    cmplw   r11,r12
    bne-    L02031664
    li      r0,1
L02031664:
    mr      r3,r0
    blr
