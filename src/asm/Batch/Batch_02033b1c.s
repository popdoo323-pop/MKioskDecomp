# Converted from the disassembly of 0x02033b1c (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02033b1c
Batch_02033b1c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r4,4120
    stw     r0,20(r1)
    lwz     r4,-11912(r4)
    mr      r31,r3
    bl      ext_02634900
    lis     r12,4120
    lfs     f1,-11916(r12)
    mr      r3,r31
    bl      ext_0263490c
    lis     r12,4096
    lfs     f1,16668(r12)
    mr      r3,r31
    bl      ext_02634918
    li      r4,3
    mr      r3,r31
    bl      ext_02634924
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
