# Converted from the disassembly of 0x02015fa8 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02015fa8
Batch_02015fa8:
    lbz     r12,37(r3)
    cmpwi   r12,7
    li      r0,0
    beq-    L02015fc0
    cmpwi   r12,2
    bne-    L02015fd8
L02015fc0:
    lis     r12,4120
    lwz     r10,40(r3)
    lwz     r12,-14220(r12)
    cmpw    r10,r12
    bgt-    L02015fd8
    li      r0,1
L02015fd8:
    clrlwi  r3,r0,24
    blr
