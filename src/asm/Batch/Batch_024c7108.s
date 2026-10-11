# Converted from the disassembly of 0x024c7108 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7108
Batch_024c7108:
    mflr    r0
    li      r12,4
    stw     r0,4(r1)
    li      r0,3
    stwu    r1,-40(r1)
    stw     r0,8(r1)
    li      r0,8
    stw     r12,12(r1)
    li      r11,12
    stw     r0,20(r1)
    li      r0,32
    stw     r11,24(r1)
    li      r11,5
    stw     r0,32(r1)
    li      r12,16
    lwz     r10,4(r3)
    stw     r11,16(r1)
    stw     r12,28(r1)
    lwz     r0,28(r10)
    mtctr   r0
    bctrl
    lwz     r0,44(r1)
    slwi    r12,r3,2
    addi    r10,r1,8
    mtlr    r0
    lwzx    r3,r12,r10
    addi    r1,r1,40
    blr
