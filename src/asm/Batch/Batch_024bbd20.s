# Converted from the disassembly of 0x024bbd20 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024bbd20
Batch_024bbd20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,224(r31)
    cmpwi   r3,0
    beq-    L024bbd4c
    bl      ext_0205fa80
    li      r0,0
    stw     r0,224(r31)
L024bbd4c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
