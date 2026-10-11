# Converted from the disassembly of 0x02038794 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02038794
Batch_02038794:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lbz     r0,548(r3)
    cmpwi   r0,0
    beq-    L020387cc
    lis     r12,4096
    lis     r11,4096
    addi    r12,r12,17164
    addi    r11,r11,17308
    stw     r12,12(r1)
    addi    r4,r1,8
    stw     r11,8(r1)
    bl      ext_0203857c
L020387cc:
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
