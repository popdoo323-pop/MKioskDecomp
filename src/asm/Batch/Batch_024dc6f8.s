# Converted from the disassembly of 0x024dc6f8 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc6f8
Batch_024dc6f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024dc504
    li      r12,4
    lwz     r0,168(r31)
    li      r9,1
    mtctr   r12
    li      r10,0
L024dc724:
    slw     r11,r9,r10
    addi    r10,r10,1
    or      r0,r0,r11
    bdnz+   L024dc724
    mr      r3,r31
    stw     r0,168(r31)
    bl      ext_0248d850
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
