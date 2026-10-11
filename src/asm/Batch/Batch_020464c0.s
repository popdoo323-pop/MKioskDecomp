# Converted from the disassembly of 0x020464c0 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_020464c0
Batch_020464c0:
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L020464d4
    b       ext_0205c440
L020464d4:
    li      r3,0
    blr
