# Converted from the disassembly of 0x024d7c2c (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7c2c
Batch_024d7c2c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,32(r31)
    lwz     r11,0(r12)
    lwz     r0,4(r11)
    cmpwi   r0,0
    bne-    L024d7c88
    lwz     r3,0(r12)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024d7c88
    mr      r3,r31
    bl      ext_024800e0
    lwz     r12,32(r31)
    lis     r11,4107
    lfs     f1,-16548(r11)
    lwz     r3,0(r12)
    li      r4,2
    bl      ext_0247f854
L024d7c88:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
