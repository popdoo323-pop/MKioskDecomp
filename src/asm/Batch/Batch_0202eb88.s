# Converted from the disassembly of 0x0202eb88 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0202eb88
Batch_0202eb88:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,104(r31)
    lwz     r12,0(r3)
    lwz     r0,132(r12)
    mtctr   r0
    bctrl
    lwz     r3,80(r31)
    bl      ext_02031620
    li      r30,100
    stw     r30,316(r3)
    lwz     r3,80(r31)
    bl      ext_02031620
    stw     r30,320(r3)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
