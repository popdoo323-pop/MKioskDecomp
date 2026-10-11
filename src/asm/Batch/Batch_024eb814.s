# Converted from the disassembly of 0x024eb814 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_024eb814
Batch_024eb814:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024eb838
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024eb840
L024eb838:
    li      r0,0
    stw     r0,0(r3)
L024eb840:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
