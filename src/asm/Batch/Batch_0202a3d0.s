# Converted from the disassembly of 0x0202a3d0 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a3d0
Batch_0202a3d0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r4,72(r3)
    lwz     r5,76(r3)
    mr      r31,r3
    bl      ext_0202a298
    lwz     r4,68(r31)
    mr      r3,r31
    bl      ext_0202a358
    lwz     r4,72(r31)
    bl      ext_0202a358
    lwz     r4,76(r31)
    bl      ext_0202a358
    lwz     r3,68(r31)
    lwz     r12,0(r3)
    lwz     r0,52(r12)
    mtctr   r0
    bctrl
    lwz     r3,72(r31)
    lwz     r12,0(r3)
    lwz     r0,52(r12)
    mtctr   r0
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
