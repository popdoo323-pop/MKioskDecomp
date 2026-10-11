# Converted from the disassembly of 0x0201dfc0 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_0201dfc0
Batch_0201dfc0:
    lwz     r12,76(r3)
    lbz     r0,16(r12)
    cmpwi   r0,0
    li      r12,1
    bne-    L0201dfe8
    lwz     r11,72(r3)
    lbz     r0,16(r11)
    cmpwi   r0,0
    bne-    L0201dfe8
    li      r12,0
L0201dfe8:
    clrlwi  r3,r12,24
    blr
