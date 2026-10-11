# Converted from the disassembly of 0x0201601c (52 bytes). Name is a placeholder.
    .text
    .globl Batch_0201601c
Batch_0201601c:
    lbz     r12,37(r3)
    cmpwi   r12,1
    li      r0,0
    beq-    L02016034
    cmpwi   r12,8
    bne-    L02016048
L02016034:
    lwz     r11,40(r3)
    lwz     r12,148(r3)
    cmpw    r11,r12
    bgt-    L02016048
    li      r0,1
L02016048:
    clrlwi  r3,r0,24
    blr
