# Converted from the disassembly of 0x02007f68 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02007f68
Batch_02007f68:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02006cc4
    lis     r11,4120
    lwz     r11,-15280(r11)
    lwz     r3,56(r31)
    mulli   r4,r11,60
    bl      ext_02008eb0
    lis     r12,4120
    lwz     r12,-15284(r12)
    mulli   r9,r12,60
    add     r0,r3,r9
    stw     r0,552(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
