# Converted from the disassembly of 0x024ddcf4 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024ddcf4
Batch_024ddcf4:
    lwz     r12,248(r3)
    cmpwi   r12,0
    lwz     r0,212(r3)
    beq-    L024ddd20
    lis     r3,4107
    cmpwi   r0,9
    addi    r3,r3,-12968
    bne-    L024ddd30
    lis     r3,4107
    addi    r3,r3,-12988
    b       ext_02045d30
L024ddd20:
    cmpwi   r0,4
    beqlr-
    lis     r3,4107
    addi    r3,r3,-12944
L024ddd30:
    b       ext_02045d30
