# Converted from the disassembly of 0x02030bf0 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02030bf0
Batch_02030bf0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,60(r31)
    li      r30,0
    stb     r4,156(r31)
    stw     r30,96(r31)
    bl      ext_0202e810
    lis     r12,4117
    stb     r30,156(r31)
    lwz     r12,-3296(r12)
    lwz     r0,444(r12)
    clrlwi. r0,r0,31
    beq-    L02030c40
    lwz     r9,64(r31)
    lwz     r3,92(r9)
    bl      ext_020283ac
L02030c40:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
