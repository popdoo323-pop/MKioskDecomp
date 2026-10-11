# Converted from the disassembly of 0x024c87dc (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024c87dc
Batch_024c87dc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,184(r31)
    cmpwi   r3,0
    beq-    L024c8818
    lwz     r12,4(r3)
    lwz     r0,52(r12)
    mtctr   r0
    bctrl
    mr      r4,r3
    lwz     r3,176(r31)
    bl      ext_02480bb0
L024c8818:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
