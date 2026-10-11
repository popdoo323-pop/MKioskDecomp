# Converted from the disassembly of 0x02018814 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_02018814
Batch_02018814:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_020175e0
    lis     r31,4120
    lwz     r3,88(r30)
    lwz     r4,-14008(r31)
    bl      ext_02008eb0
    lwz     r0,-14008(r31)
    add     r0,r3,r0
    stw     r0,160(r30)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
