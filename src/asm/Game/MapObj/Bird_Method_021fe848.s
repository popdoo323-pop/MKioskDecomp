# Converted from the disassembly of 0x021fe848 (92 bytes). Name is a placeholder.
    .text
    .globl Bird_Method_021fe848
Bird_Method_021fe848:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,-3296(r12)
    lwz     r9,568(r12)
    addi    r30,r4,-2
    mr      r31,r3
    addi    r3,r9,108
    bl      ext_02624878
    mulhwu  r8,r3,r30
    li      r0,1
    stb     r0,247(r31)
    addi    r10,r8,2
    stb     r10,272(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
