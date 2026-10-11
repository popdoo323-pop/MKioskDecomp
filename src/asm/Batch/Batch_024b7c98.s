# Converted from the disassembly of 0x024b7c98 (228 bytes). Name is a placeholder.
    .text
    .globl Batch_024b7c98
Batch_024b7c98:
    lis     r12,4107
    stwu    r1,-40(r1)
    mflr    r0
    lfs     f13,-32244(r12)
    lis     r10,4107
    stw     r31,36(r1)
    lfs     f0,-32024(r10)
    stfs    f13,20(r1)
    lwz     r12,20(r1)
    stfs    f0,16(r1)
    lwz     r9,16(r1)
    lis     r10,4107
    stw     r0,44(r1)
    lfs     f0,-32020(r10)
    mr      r31,r3
    stw     r30,32(r1)
    stw     r12,44(r31)
    stfs    f0,24(r1)
    lwz     r0,24(r1)
    addi    r3,r31,68
    stw     r9,40(r31)
    addi    r4,r1,16
    stw     r0,48(r31)
    bl      ext_02006064
    mr      r3,r31
    bl      ext_024b3c94
    lwz     r10,52(r31)
    lwz     r11,68(r10)
    mtctr   r11
    mr      r3,r31
    bctrl
    stw     r3,8(r1)
    li      r0,0
    addi    r4,r1,8
    stb     r0,13(r1)
    mr      r3,r0
    stb     r0,12(r1)
    bl      ext_020d9ec0
    mr.     r30,r3
    stw     r30,64(r31)
    beq-    L024b7d64
    lwz     r11,52(r31)
    lwz     r0,68(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    mr      r6,r3
    lwz     r5,0(r31)
    mr      r3,r30
    addi    r4,r31,68
    bl      ext_020da780
L024b7d64:
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    blr
