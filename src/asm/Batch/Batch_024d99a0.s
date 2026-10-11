# Converted from the disassembly of 0x024d99a0 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024d99a0
Batch_024d99a0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,184(r31)
    cmpwi   r0,0
    beq-    L024d99dc
    lwz     r0,176(r31)
    cmpwi   r0,0
    bne-    L024d99dc
    bl      ext_02490c90
    mr      r4,r3
    mr      r3,r31
    bl      ext_0248e338
L024d99dc:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
