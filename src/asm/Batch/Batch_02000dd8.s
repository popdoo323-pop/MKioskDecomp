# Converted from the disassembly of 0x02000dd8 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02000dd8
Batch_02000dd8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    li      r31,0
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,76(r30)
    stw     r31,280(r30)
    stb     r31,254(r30)
    stb     r31,251(r30)
    stb     r31,250(r30)
    stb     r31,249(r30)
    stb     r31,248(r30)
    stw     r31,124(r30)
    stw     r31,120(r30)
    lis     r4,4120
    stw     r31,116(r30)
    lwz     r4,-15540(r4)
    bl      ext_02008eb0
    lis     r12,4124
    stw     r3,284(r30)
    lfsu    f0,26744(r12)
    stfs    f0,256(r30)
    lfs     f13,4(r12)
    lbz     r0,37(r30)
    stfs    f13,260(r30)
    lfs     f12,8(r12)
    stfs    f0,268(r30)
    stfs    f12,276(r30)
    stb     r31,37(r30)
    stfs    f12,264(r30)
    li      r12,1
    stb     r0,38(r30)
    stb     r12,39(r30)
    stfs    f13,272(r30)
    stw     r31,40(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
