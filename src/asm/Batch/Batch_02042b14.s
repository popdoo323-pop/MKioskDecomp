# Converted from the disassembly of 0x02042b14 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02042b14
Batch_02042b14:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02042680
    bl      ext_02039284
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
