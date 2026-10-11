# Converted from the disassembly of 0x024df974 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024df974
Batch_024df974:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024df998
    li      r3,68
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024df9b4
L024df998:
    li      r0,0
    stw     r0,60(r3)
    stw     r0,4(r3)
    stw     r0,56(r3)
    stw     r0,12(r3)
    stw     r0,48(r3)
    bl      ext_024dbfc0
L024df9b4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
