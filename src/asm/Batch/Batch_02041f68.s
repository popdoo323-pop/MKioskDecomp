# Converted from the disassembly of 0x02041f68 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02041f68
Batch_02041f68:
    mflr    r0
    lis     r12,4121
    stw     r0,4(r1)
    li      r0,8
    stwu    r1,-24(r1)
    lwz     r12,30564(r12)
    addi    r4,r1,8
    stw     r0,8(r1)
    addi    r3,r12,200
    bl      ext_02426090
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
