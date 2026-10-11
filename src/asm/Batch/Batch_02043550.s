# Converted from the disassembly of 0x02043550 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02043550
Batch_02043550:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,112(r3)
    lwz     r0,228(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    addi    r3,r31,212
    bl      ext_02411064
    lwz     r12,112(r31)
    lwz     r0,236(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
