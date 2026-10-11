# Converted from the disassembly of 0x024b3cdc (452 bytes). Name is a placeholder.
    .text
    .globl Batch_024b3cdc
Batch_024b3cdc:
    mflr    r0
    stwu    r1,-64(r1)
    stw     r30,56(r1)
    li      r9,9
    lis     r7,4107
    stw     r31,60(r1)
    addi    r7,r7,-32752
    stw     r9,20(r1)
    stw     r7,48(r1)
    stw     r7,16(r1)
    stw     r0,68(r1)
    li      r0,0
    lwz     r10,52(r3)
    lis     r8,4096
    stb     r0,28(r1)
    addi    r8,r8,376
    stw     r8,44(r1)
    stw     r7,40(r1)
    stw     r0,24(r1)
    stw     r0,8(r1)
    stb     r0,29(r1)
    stw     r8,12(r1)
    stw     r8,36(r1)
    stw     r0,32(r1)
    lwz     r12,52(r10)
    mtctr   r12
    mr      r31,r4
    mr      r30,r3
    bctrl
    lwz     r11,52(r30)
    stw     r3,44(r1)
    lwz     r0,60(r11)
    mtctr   r0
    mr      r3,r30
    bctrl
    lwz     r7,52(r30)
    stw     r3,12(r1)
    lwz     r8,68(r7)
    mtctr   r8
    mr      r3,r30
    bctrl
    lwz     r9,52(r30)
    stw     r3,36(r1)
    lwz     r10,76(r9)
    mtctr   r10
    mr      r3,r30
    bctrl
    lwz     r11,52(r30)
    stb     r3,29(r1)
    lwz     r12,12(r11)
    mtctr   r12
    mr      r3,r30
    bctrl
    lis     r12,4117
    cmpwi   r3,0
    lwz     r8,-3252(r12)
    beq-    L024b3e28
    lwz     r11,56(r8)
    addi    r3,r1,12
    addi    r4,r1,8
    stw     r11,24(r1)
    bl      ext_0240ea14
    lwz     r12,52(r30)
    stw     r3,0(r30)
    lwz     r0,92(r12)
    mtctr   r0
    lwz     r4,8(r1)
    mr      r3,r30
    bctrl
    lwz     r11,52(r30)
    lwz     r0,20(r11)
    mtctr   r0
    mr      r3,r30
    bctrl
    mr.     r0,r3
    lwz     r3,0(r30)
    li      r4,0
    bne-    L024b3e7c
L024b3e14:
    mr      r5,r4
    bl      ext_0240eb08
    lwz     r0,8(r1)
    stw     r0,0(r31)
    b       L024b3e88
L024b3e28:
    lwz     r11,60(r8)
    addi    r3,r1,12
    addi    r4,r1,8
    stw     r11,24(r1)
    bl      ext_0240ea14
    lwz     r12,52(r30)
    stw     r3,0(r30)
    lwz     r0,92(r12)
    mtctr   r0
    lwz     r4,8(r1)
    mr      r3,r30
    bctrl
    lwz     r11,52(r30)
    lwz     r0,20(r11)
    mtctr   r0
    mr      r3,r30
    bctrl
    mr.     r0,r3
    lwz     r3,0(r30)
    li      r4,0
    beq+    L024b3e14
L024b3e7c:
    bl      ext_0240ebdc
    lwz     r0,8(r1)
    stw     r0,0(r31)
L024b3e88:
    lwz     r0,68(r1)
    lwz     r30,56(r1)
    mtlr    r0
    lwz     r31,60(r1)
    addi    r1,r1,64
    blr
