# Converted from the disassembly of 0x02027298 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02027298
Batch_02027298:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020271c4
    li      r0,0
    stw     r0,48(r31)
    stw     r0,56(r31)
    stw     r0,52(r31)
    bl      ext_020150ac
    stw     r3,40(r31)
    lwz     r12,52(r3)
    stw     r12,44(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
