# Converted from the disassembly of 0x0204659c (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0204659c
Batch_0204659c:
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beq-    L020465c4
    lwz     r12,264(r12)
    cmpwi   r12,0
    beq-    L020465c4
    lwz     r12,224(r12)
    cmpwi   r12,0
    bne-    L020465cc
L020465c4:
    li      r3,0
    blr
L020465cc:
    lwz     r0,20(r12)
    slwi    r3,r0,1
    blr
