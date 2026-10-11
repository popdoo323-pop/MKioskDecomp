# Converted from the disassembly of 0x02046740 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02046740
Batch_02046740:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02041f68
    bl      ext_020425e4
    bl      ext_02045788
    bl      ext_02041f68
    bl      ext_02042680
    li      r4,5
    bl      ext_02039274
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
