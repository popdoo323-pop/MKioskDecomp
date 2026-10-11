# Converted from the disassembly of 0x024de878 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_024de878
Batch_024de878:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r10,220(r30)
    lwz     r12,3660(r12)
    cmplwi  r10,4
    lwz     r11,20(r12)
    bge-    L024de8b0
    slwi    r8,r10,2
    add     r11,r11,r8
L024de8b0:
    lis     r10,4119
    lwzu    r8,4716(r10)
    lis     r4,4119
    lwz     r31,0(r11)
    cmpwi   r8,0
    addi    r4,r4,27740
    bne-    L024de8e0
    lis     r0,4107
    li      r11,1
    addic   r0,r0,-13372
    stw     r11,0(r10)
    stw     r0,0(r4)
L024de8e0:
    cmpwi   r31,0
    beq-    L024de918
    lwz     r8,92(r31)
    lwz     r0,12(r8)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L024de918
    mr      r3,r31
    bl      ext_024aab8c
    cmpwi   r3,0
    beq-    L024de950
    b       L024de928
L024de918:
    li      r3,0
    bl      ext_024aab8c
    cmpwi   r3,0
    beq-    L024de950
L024de928:
    lwz     r4,220(r30)
    li      r12,50
    lwz     r3,1404(r30)
    stw     r12,128(r30)
    bl      ext_024c46b0
    mr      r3,r30
    bl      ext_024dc76c
    lis     r3,4107
    addi    r3,r3,-12904
    bl      ext_02045d30
L024de950:
    lbz     r9,1448(r30)
    cmpwi   r9,0
    beq-    L024de998
    lwz     r0,1452(r30)
    cmpwi   r0,4
    beq-    L024de970
    cmpwi   r0,5
    bne-    L024de998
L024de970:
    lbz     r0,1460(r30)
    cmpwi   r0,0
    bne-    L024de998
    lwz     r0,84(r30)
    cmplwi  r0,600
    blt-    L024de998
    bl      ext_024b06cc
    li      r9,1
    stb     r9,1460(r30)
    stb     r9,24(r30)
L024de998:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
