# Converted from the disassembly of 0x024ddd34 (288 bytes). Name is a placeholder.
    .text
    .globl Batch_024ddd34
Batch_024ddd34:
    mflr    r0
    stwu    r1,-72(r1)
    stw     r31,68(r1)
    stw     r28,56(r1)
    lis     r12,4117
    stw     r29,60(r1)
    stw     r30,64(r1)
    lis     r7,4119
    stw     r0,76(r1)
    lwz     r12,3660(r12)
    lwzu    r9,4716(r7)
    lis     r4,4119
    lwz     r8,20(r12)
    mr      r28,r3
    cmpwi   r9,0
    addi    r4,r4,27740
    lwz     r31,0(r8)
    bne-    L024ddd90
    lis     r11,4107
    li      r0,1
    addi    r11,r11,-13372
    stw     r0,0(r7)
    stw     r11,0(r4)
L024ddd90:
    cmpwi   r31,0
    li      r30,0
    beq-    L024dddb8
    lwz     r12,92(r31)
    lwz     r0,12(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024dddbc
L024dddb8:
    li      r31,0
L024dddbc:
    mr      r3,r31
    bl      ext_024aa9bc
    mr      r29,r3
    mr      r3,r31
    addi    r4,r1,8
    bl      ext_024aaaa0
    cmpwi   r29,-1
    bne-    L024ddde0
    li      r29,0
L024ddde0:
    lwz     r8,8(r1)
    li      r5,2
    stw     r29,20(r1)
    xori    r9,r8,2
    lwz     r11,252(r28)
    cntlzw  r0,r9
    stw     r5,16(r1)
    srwi    r7,r0,5
    stw     r11,28(r1)
    li      r0,1
    stw     r30,36(r1)
    stb     r0,52(r1)
    stw     r30,44(r1)
    stw     r0,32(r1)
    stw     r7,24(r1)
    stw     r30,40(r1)
    stw     r30,48(r1)
    stw     r30,12(r1)
    bl      ext_02421764
    addi    r4,r1,12
    bl      ext_02423984
    lwz     r28,56(r1)
    lwz     r29,60(r1)
    lwz     r0,76(r1)
    lwz     r30,64(r1)
    mtlr    r0
    lwz     r31,68(r1)
    addi    r1,r1,72
    blr
