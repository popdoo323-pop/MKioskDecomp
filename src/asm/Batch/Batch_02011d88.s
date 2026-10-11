# Converted from the disassembly of 0x02011d88 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_02011d88
Batch_02011d88:
    lwz     r10,236(r3)
    cmpwi   r10,0
    li      r0,0
    blt-    L02011dac
    lis     r12,4120
    lwz     r12,-14504(r12)
    cmpw    r10,r12
    bge-    L02011dac
    li      r0,1
L02011dac:
    clrlwi  r3,r0,24
    blr
