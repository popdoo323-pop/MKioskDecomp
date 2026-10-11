# Converted from the disassembly of 0x02000e84 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02000e84
Batch_02000e84:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,68(r31)
    lwz     r3,84(r12)
    bl      ext_02185cb4
    mr      r5,r3
    lwz     r3,112(r31)
    mr      r4,r3
    bl      ext_02006610
    li      r0,0
    stb     r0,252(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
