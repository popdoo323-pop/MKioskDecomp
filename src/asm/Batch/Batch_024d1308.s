# Converted from the disassembly of 0x024d1308 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1308
Batch_024d1308:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024d1324
    li      r3,8
    bl      ext_0260128c
L024d1324:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
