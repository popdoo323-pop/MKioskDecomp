# Converted from the disassembly of 0x024df4c4 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024df4c4
Batch_024df4c4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02421764
    bl      ext_02423968
    cmpwi   r3,0
    beq-    L024df4f4
    mr      r3,r31
    li      r4,0
    bl      ext_0248da3c
L024df4f4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
