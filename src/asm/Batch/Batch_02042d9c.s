# Converted from the disassembly of 0x02042d9c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02042d9c
Batch_02042d9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02046740
    mr      r3,r31
    bl      ext_02042680
    lwz     r3,376(r3)
    bl      ext_02636010
    mr      r3,r31
    bl      ext_02042680
    lwz     r3,376(r3)
    bl      ext_02635fa8
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
