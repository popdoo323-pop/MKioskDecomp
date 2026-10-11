# Converted from the disassembly of 0x024cde7c (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024cde7c
Batch_024cde7c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    addi    r3,r31,104
    stw     r0,20(r1)
    bl      ext_024812b4
    li      r0,1
    mr      r3,r31
    addi    r4,r31,104
    stw     r0,124(r31)
    bl      ext_02484db0
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
