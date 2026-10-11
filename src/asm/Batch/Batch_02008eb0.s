# Converted from the disassembly of 0x02008eb0 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02008eb0
Batch_02008eb0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,64(r3)
    addi    r3,r12,4
    mr      r31,r4
    bl      ext_02624878
    lwz     r0,20(r1)
    mtlr    r0
    mulhwu  r3,r3,r31
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
