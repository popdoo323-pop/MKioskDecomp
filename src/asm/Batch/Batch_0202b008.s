# Converted from the disassembly of 0x0202b008 (448 bytes). Name is a placeholder.
    .text
    .globl Batch_0202b008
Batch_0202b008:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r29,12(r1)
    stw     r0,28(r1)
    bne-    L0202b03c
    li      r3,364
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0202b1a8
L0202b03c:
    stw     r30,4(r31)
    lis     r9,4096
    li      r29,0
    addi    r9,r9,13896
    stw     r29,8(r31)
    addic.  r30,r31,16
    stw     r29,12(r31)
    stw     r9,0(r31)
    bne-    L0202b070
    li      r3,20
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0202b0a4
L0202b070:
    mr.     r3,r30
    bne-    L0202b088
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202b094
L0202b088:
    stw     r29,4(r3)
    stw     r29,0(r3)
    stw     r29,8(r3)
L0202b094:
    li      r4,2
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L0202b0a4:
    addic.  r30,r31,36
    bne-    L0202b0bc
    li      r3,140
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0202b0f0
L0202b0bc:
    mr.     r3,r30
    bne-    L0202b0d4
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202b0e0
L0202b0d4:
    stw     r29,4(r3)
    stw     r29,0(r3)
    stw     r29,8(r3)
L0202b0e0:
    li      r4,32
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L0202b0f0:
    addic.  r30,r31,176
    bne-    L0202b108
    li      r3,140
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0202b13c
L0202b108:
    mr.     r3,r30
    bne-    L0202b120
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202b12c
L0202b120:
    stw     r29,4(r3)
    stw     r29,0(r3)
    stw     r29,8(r3)
L0202b12c:
    li      r4,32
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L0202b13c:
    stw     r29,316(r31)
    lis     r12,4124
    stw     r29,320(r31)
    lwzu    r0,26744(r12)
    stw     r0,324(r31)
    lwz     r9,4(r12)
    li      r4,2
    lis     r6,515
    stw     r9,328(r31)
    lwz     r0,8(r12)
    li      r5,12
    addi    r6,r6,-11420
    addi    r3,r31,336
    stw     r0,332(r31)
    bl      ext_0292e4a4
    stw     r29,36(r31)
    stb     r29,361(r31)
    stw     r29,176(r31)
    stb     r29,360(r31)
    lis     r12,4117
    stw     r29,16(r31)
    lwz     r12,-3296(r12)
    lwz     r10,416(r12)
    xori    r10,r10,18
    cntlzw  r0,r10
    srwi    r8,r0,5
    stb     r8,360(r31)
L0202b1a8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
