# Converted from the disassembly of 0x0200d21c (308 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d21c
Batch_0200d21c:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    li      r9,0
    stb     r9,20(r1)
    mr      r31,r3
    stb     r9,21(r1)
    stw     r0,60(r1)
    lwz     r11,0(r4)
    lwz     r3,104(r31)
    addi    r4,r1,16
    stw     r11,16(r1)
    bl      ext_0200b2e4
    cmpwi   r3,0
    beq-    L0200d290
    lwz     r0,0(r3)
    cmpwi   r0,3
    beq-    L0200d290
    lwz     r0,16(r1)
    stw     r0,8(r1)
    lwz     r0,60(r1)
    lwz     r7,20(r1)
    mtlr    r0
    lwz     r3,8(r1)
    lwz     r31,52(r1)
    stw     r7,12(r1)
    lwz     r4,12(r1)
    addi    r1,r1,56
    blr
L0200d290:
    lbz     r12,20(r1)
    lwz     r8,16(r1)
    lbz     r7,21(r1)
    stw     r8,36(r1)
    cntlzw  r0,r7
    stb     r12,40(r1)
    srwi    r9,r0,5
    lwz     r3,104(r31)
    stb     r9,29(r1)
    stw     r8,24(r1)
    addi    r4,r1,24
    stb     r12,28(r1)
    bl      ext_0200b2e4
    cmpwi   r3,0
    beq-    L0200d30c
    lwz     r0,0(r3)
    cmpwi   r0,3
    beq-    L0200d30c
    lbz     r0,20(r1)
    lbz     r7,21(r1)
    stb     r0,12(r1)
    cntlzw  r8,r7
    lwz     r0,60(r1)
    srwi    r7,r8,5
    lwz     r3,16(r1)
    mtlr    r0
    lwz     r31,52(r1)
    stb     r7,13(r1)
    lwz     r4,12(r1)
    addi    r1,r1,56
    blr
L0200d30c:
    lis     r11,4119
    lwz     r11,-4780(r11)
    li      r12,7
    lwz     r3,20(r11)
    addi    r4,r1,32
    stw     r12,32(r1)
    bl      ext_027ada20
    li      r0,0
    stb     r0,13(r1)
    stb     r0,12(r1)
    lwz     r0,60(r1)
    lwz     r4,12(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    li      r3,253
    blr
