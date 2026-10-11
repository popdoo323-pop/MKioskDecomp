# Converted from the disassembly of 0x024c5bdc (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5bdc
Batch_024c5bdc:
    lbz     r0,8(r3)
    cmpwi   r0,0
    li      r12,0
    bne-    L024c5bfc
    lwz     r11,12(r3)
    cmplw   r4,r11
    bne-    L024c5bfc
    li      r12,1
L024c5bfc:
    clrlwi  r3,r12,24
    blr
