# Converted from the disassembly of 0x02039d5c (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02039d5c
Batch_02039d5c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02631fb4
    li      r3,0
    li      r4,1
    bl      ext_029adc40
    li      r3,1
    mr      r4,r3
    bl      ext_029adc40
    bl      ext_0233b990
    lwz     r12,340(r3)
    lwz     r3,8(r12)
    bl      ext_0237aa1c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
