# Converted from the disassembly of 0x0202d42c (108 bytes). Name is a placeholder.
    .text
    .globl Batch_0202d42c
Batch_0202d42c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150ac
    lwz     r12,44(r31)
    stw     r3,40(r31)
    lwz     r12,60(r12)
    lwz     r12,88(r12)
    lwz     r0,92(r12)
    stw     r0,48(r31)
    lwz     r12,60(r3)
    lwz     r11,36(r31)
    lwz     r0,0(r12)
    lis     r12,4096
    lfs     f0,14072(r12)
    stw     r0,52(r31)
    lwz     r12,4(r11)
    lwz     r0,60(r12)
    stfs    f0,60(r31)
    stw     r0,56(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
