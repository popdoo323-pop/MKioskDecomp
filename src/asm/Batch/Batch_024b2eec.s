# Converted from the disassembly of 0x024b2eec (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024b2eec
Batch_024b2eec:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr.     r31,r3
    stw     r0,36(r1)
    bne-    L024b2f14
    li      r3,828
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024b2f4c
L024b2f14:
    mr      r3,r31
    bl      ext_024746cc
    li      r0,0
    lis     r12,4106
    stw     r0,820(r31)
    addi    r12,r12,32576
    stb     r0,824(r31)
    addi    r3,r1,8
    stw     r12,0(r31)
    bl      ext_02624840
    addi    r3,r1,8
    bl      ext_02624878
    clrlwi  r11,r3,31
    stb     r11,816(r31)
L024b2f4c:
    lwz     r0,36(r1)
    mr      r3,r31
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
