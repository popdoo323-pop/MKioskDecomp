# Converted from the disassembly of 0x02015fe0 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02015fe0
Batch_02015fe0:
    lbz     r8,37(r3)
    cmpwi   r8,7
    li      r9,0
    bne-    L02016014
    lis     r12,4120
    lis     r11,4120
    lwz     r12,-14216(r12)
    lwz     r11,-14220(r11)
    lwz     r0,40(r3)
    add     r7,r11,r12
    cmpw    r0,r7
    bgt-    L02016014
    li      r9,1
L02016014:
    clrlwi  r3,r9,24
    blr
