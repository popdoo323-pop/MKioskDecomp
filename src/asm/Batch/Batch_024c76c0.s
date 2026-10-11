# Converted from the disassembly of 0x024c76c0 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024c76c0
Batch_024c76c0:
    mflr    r0
    li      r12,9097
    li      r9,9098
    stw     r0,4(r1)
    li      r10,9099
    stwu    r1,-32(r1)
    stw     r12,8(r1)
    addi    r0,r1,8
    stw     r9,12(r1)
    slwi    r11,r4,2
    stw     r10,16(r1)
    lwzx    r4,r11,r0
    bl      ext_024c5b3c
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
