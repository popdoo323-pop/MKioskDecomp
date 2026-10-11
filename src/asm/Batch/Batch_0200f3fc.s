# Converted from the disassembly of 0x0200f3fc (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0200f3fc
Batch_0200f3fc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r11,4(r4)
    addi    r12,r1,8
    lwz     r0,0(r4)
    lwz     r3,104(r3)
    stw     r11,12(r1)
    mr      r4,r12
    stw     r0,8(r1)
    bl      ext_0200cb90
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
