# Converted from the disassembly of 0x02024a44 (220 bytes). Name is a placeholder.
    .text
    .globl Batch_02024a44
Batch_02024a44:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L02024a74
    li      r3,112
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02024b04
L02024a74:
    mr      r3,r31
    bl      ext_02410f5c
    lis     r9,4096
    stw     r30,40(r31)
    addi    r9,r9,10716
    addi    r0,r30,80
    stw     r9,0(r31)
    li      r10,0
    lis     r8,4096
    stw     r0,44(r31)
    lis     r12,4120
    lfs     f0,10632(r8)
    stw     r10,36(r31)
    lhzu    r8,-13416(r12)
    sth     r8,72(r31)
    lhz     r9,2(r12)
    sth     r9,74(r31)
    lis     r11,4124
    stw     r10,76(r31)
    stfs    f0,80(r31)
    lwzu    r12,26756(r11)
    stw     r12,84(r31)
    lis     r12,4096
    lwz     r0,4(r11)
    lfs     f0,10636(r12)
    stw     r0,88(r31)
    lwz     r0,8(r11)
    stfs    f0,96(r31)
    lis     r8,4124
    stw     r0,92(r31)
    lwzu    r9,26744(r8)
    stw     r9,100(r31)
    lwz     r10,4(r8)
    stw     r10,104(r31)
    lwz     r0,8(r8)
    stw     r0,108(r31)
L02024b04:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
