# Converted from the disassembly of 0x024bb474 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb474
Batch_024bb474:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024bb490
    li      r3,12
    bl      ext_0260128c
L024bb490:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
