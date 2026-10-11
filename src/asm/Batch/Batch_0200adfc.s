# Converted from the disassembly of 0x0200adfc (56 bytes). Name is a placeholder.
    .text
    .globl Batch_0200adfc
Batch_0200adfc:
    lbz     r0,0(r4)
    extsb   r0,r0
    cmpwi   r0,-1
    bne-    L0200ae14
    li      r3,-1
    blr
L0200ae14:
    lwz     r11,180(r3)
    cmplw   r0,r11
    lwz     r12,184(r3)
    bge-    L0200ae28
    add     r12,r12,r0
L0200ae28:
    lbz     r3,0(r12)
    extsb   r3,r3
    blr
