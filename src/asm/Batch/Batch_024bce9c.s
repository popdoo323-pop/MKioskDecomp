# Converted from the disassembly of 0x024bce9c (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024bce9c
Batch_024bce9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024bcec4
    li      r3,244
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bceec
L024bcec4:
    mr      r3,r31
    bl      ext_024bbe2c
    lis     r11,4107
    lis     r12,4107
    addi    r11,r11,-28940
    addi    r12,r12,-28684
    stw     r11,84(r31)
    li      r0,3
    stw     r12,100(r31)
    stw     r0,36(r31)
L024bceec:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
