# Converted from the disassembly of 0x024bd800 (468 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd800
Batch_024bd800:
    mflr    r0
    stwu    r1,-104(r1)
    stw     r29,92(r1)
    lis     r12,4117
    stw     r31,100(r1)
    stw     r30,96(r1)
    lis     r8,4119
    stw     r0,108(r1)
    lwz     r12,3660(r12)
    lwzu    r6,4716(r8)
    lis     r4,4119
    lwz     r10,20(r12)
    mr      r30,r3
    cmpwi   r6,0
    addi    r4,r4,27740
    lwz     r31,0(r10)
    bne-    L024bd858
    lis     r0,4107
    li      r9,1
    addic   r0,r0,-30756
    stw     r9,0(r8)
    stw     r0,0(r4)
L024bd858:
    cmpwi   r31,0
    li      r29,0
    beq-    L024bd8a0
    lwz     r11,92(r31)
    lwz     r0,12(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L024bd8a0
    addi    r4,r1,8
    mr      r3,r31
    bl      ext_024aaaa0
    lwz     r9,8(r1)
    lwz     r11,260(r30)
    cmplw   r9,r11
    beq-    L024bd944
    b       L024bd8bc
L024bd8a0:
    addi    r4,r1,8
    li      r3,0
    bl      ext_024aaaa0
    lwz     r9,8(r1)
    lwz     r11,260(r30)
    cmplw   r9,r11
    beq-    L024bd944
L024bd8bc:
    stw     r9,260(r30)
    li      r6,32
    sth     r29,28(r1)
    lis     r7,4107
    sth     r29,90(r1)
    addi    r7,r7,-30796
    stw     r6,24(r1)
    li      r5,0
    addi    r12,r1,28
    lwz     r8,252(r30)
    addi    r3,r1,16
    stw     r12,16(r1)
    stw     r7,20(r1)
    mr      r6,r5
    addi    r4,r1,12
    stw     r8,12(r1)
    bl      ext_024af200
    lwz     r10,16(r1)
    lhz     r12,0(r10)
    cmpwi   r12,0
    beq-    L024bd944
    lwz     r9,8(r1)
    cmpwi   r9,0
    beq-    L024bd944
    cmpwi   r9,10
    beq-    L024bd944
    lwz     r6,20(r1)
    lwz     r0,20(r6)
    mtctr   r0
    addi    r3,r1,16
    bctrl
    lwz     r3,256(r30)
    lwz     r4,16(r1)
    bl      ext_02480bb0
L024bd944:
    lbz     r9,265(r30)
    cmpwi   r9,0
    bne-    L024bd9b8
    lwz     r11,244(r30)
    cmpwi   r11,0
    beq-    L024bd9b8
    lwz     r0,76(r11)
    cmpwi   r0,5
    blt-    L024bd9b8
    lwz     r10,120(r11)
    cmpwi   r10,0
    beq-    L024bd9b8
    lbz     r0,248(r30)
    lwz     r8,120(r11)
    cmpwi   r0,0
    lbz     r9,21(r8)
    bne-    L024bd994
    cmpwi   r9,0
    beq-    L024bd99c
    b       L024bd9b0
L024bd994:
    cmpwi   r9,0
    beq-    L024bd9b0
L024bd99c:
    lwz     r12,84(r30)
    lwz     r7,244(r12)
    mtctr   r7
    mr      r3,r30
    bctrl
L024bd9b0:
    li      r8,1
    stb     r8,265(r30)
L024bd9b8:
    lwz     r29,92(r1)
    lwz     r0,108(r1)
    lwz     r30,96(r1)
    mtlr    r0
    lwz     r31,100(r1)
    addi    r1,r1,104
    blr
