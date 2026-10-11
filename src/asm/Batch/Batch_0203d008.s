# Converted from the disassembly of 0x0203d008 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_0203d008
Batch_0203d008:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L0203d034
    li      r3,14
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203d080
L0203d034:
    li      r30,0
    li      r11,127
    stb     r30,10(r31)
    li      r5,2
    stb     r11,4(r31)
    li      r4,-1
    stb     r30,11(r31)
    addi    r3,r31,12
    stb     r30,1(r31)
    stb     r30,2(r31)
    li      r12,64
    stb     r30,0(r31)
    stb     r12,8(r31)
    stb     r30,9(r31)
    bl      ext_029abc98
    li      r5,3
    mr      r4,r30
    addi    r3,r31,5
    bl      ext_029abc98
L0203d080:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
