# Converted from the disassembly of 0x0203ac18 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ac18
Batch_0203ac18:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,40(r30)
    mr      r31,r5
    bl      ext_02051068
    mr      r4,r3
    mr      r3,r30
    mr      r5,r31
    bl      ext_0203a958
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
