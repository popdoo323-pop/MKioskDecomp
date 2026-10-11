# Converted from the disassembly of 0x024d811c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024d811c
Batch_024d811c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r5
    mr      r5,r4
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r4,88(r3)
    mr      r31,r3
    bl      ext_02480664
    lwz     r4,92(r31)
    mr      r3,r31
    mr      r5,r30
    bl      ext_02480664
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
