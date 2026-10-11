# Converted from the disassembly of 0x0200ac90 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_0200ac90
Batch_0200ac90:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    bl      ext_0200abdc
    cmpwi   r3,0
    bne-    L0200ace4
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r3,16(r12)
    lwz     r11,100(r3)
    lwz     r0,436(r11)
    mtctr   r0
    li      r4,0
    bctrl
    mr      r3,r30
    mr      r4,r31
    bl      ext_0200abdc
L0200ace4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lbz     r3,13(r3)
    lwz     r31,12(r1)
    addi    r1,r1,16
    extsb   r3,r3
    blr
