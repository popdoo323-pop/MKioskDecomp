# Converted from the disassembly of 0x0200a3a8 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a3a8
Batch_0200a3a8:
    mflr    r0
    stw     r0,4(r1)
    li      r3,316
    stwu    r1,-8(r1)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0200a3c8
    bl      ext_0200644c
L0200a3c8:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
