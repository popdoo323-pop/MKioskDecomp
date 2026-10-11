# Converted from the disassembly of 0x0201d3e8 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_0201d3e8
Batch_0201d3e8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r3,60(r30)
    mr      r31,r4
    bl      ext_02026544
    lwz     r0,0(r31)
    lis     r10,4096
    li      r11,0
    lfs     f0,9356(r10)
    stb     r11,112(r30)
    stfs    f0,88(r30)
    lis     r12,4124
    stw     r0,108(r30)
    lfsu    f0,26780(r12)
    stfs    f0,92(r30)
    lfs     f0,4(r12)
    lwz     r8,60(r30)
    stfs    f0,96(r30)
    lfs     f0,8(r12)
    stb     r11,116(r30)
    stfs    f0,100(r30)
    stw     r11,120(r30)
    lwz     r9,52(r8)
    mr      r3,r30
    addi    r4,r9,132
    bl      ext_0201d36c
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
