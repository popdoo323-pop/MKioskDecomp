# Converted from the disassembly of 0x024eb748 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024eb748
Batch_024eb748:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024eb770
    li      r3,28
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024eb784
L024eb770:
    mr      r3,r31
    bl      ext_024884bc
    lis     r0,4106
    addic   r0,r0,19044
    stw     r0,24(r31)
L024eb784:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
