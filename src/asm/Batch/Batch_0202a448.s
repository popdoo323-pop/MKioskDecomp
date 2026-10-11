# Converted from the disassembly of 0x0202a448 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a448
Batch_0202a448:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,68(r31)
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    li      r4,0
    bctrl
    lwz     r3,72(r31)
    lwz     r12,0(r3)
    lwz     r10,36(r12)
    lwz     r4,56(r3)
    mtctr   r10
    bctrl
    lwz     r3,76(r31)
    lwz     r11,0(r3)
    lwz     r12,36(r11)
    lwz     r11,72(r31)
    mtctr   r12
    lwz     r4,56(r11)
    bctrl
    lis     r12,4120
    lwz     r10,40(r31)
    lwz     r12,-13076(r12)
    divwu   r0,r10,r12
    mullw   r0,r0,r12
    subf.   r0,r0,r10
    bne-    L0202a4d4
    lwz     r5,76(r31)
    mr      r3,r31
    lwz     r4,72(r31)
    bl      ext_0202a298
L0202a4d4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
