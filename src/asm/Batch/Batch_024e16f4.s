# Converted from the disassembly of 0x024e16f4 (364 bytes). Name is a placeholder.
    .text
    .globl Batch_024e16f4
Batch_024e16f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,80(r31)
    cmpwi   r11,0
    bne-    L024e1754
    lwz     r0,88(r31)
    cmplwi  r0,30
    blt-    L024e1848
    lwz     r12,68(r31)
    lwz     r3,0(r12)
    bl      ext_0247fba0
    mr      r3,r31
    li      r4,1
    bl      ext_0248daf4
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024e1754:
    cmpwi   r11,1
    bne-    L024e1820
    lwz     r0,268(r31)
    cmpwi   r0,0
    lis     r30,4107
    beq-    L024e1774
    cmpwi   r0,1
    bne-    L024e17c4
L024e1774:
    bl      ext_02421764
    lbz     r0,547(r3)
    cmpwi   r0,0
    beq-    L024e1848
    mr      r3,r31
    bl      ext_024e09fc
    lwz     r9,68(r31)
    lwz     r3,0(r9)
    bl      ext_0247f498
    mr      r3,r31
    li      r4,2
    bl      ext_0248daf4
    addi    r3,r30,-11932
    bl      ext_02045d30
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024e17c4:
    bl      ext_02421764
    lbz     r9,547(r3)
    cmpwi   r9,0
    beq-    L024e1848
    mr      r3,r31
    bl      ext_024e09fc
    lwz     r10,68(r31)
    lwz     r3,0(r10)
    bl      ext_0247f498
    mr      r3,r31
    li      r4,2
    bl      ext_0248daf4
    lwz     r10,268(r31)
    cmpwi   r10,2
    bne-    L024e1848
    addi    r3,r30,-11932
    bl      ext_02045d30
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024e1820:
    cmpwi   r11,2
    bne-    L024e1848
    lwz     r12,68(r31)
    lwz     r3,0(r12)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024e1848
    mr      r3,r31
    bl      ext_0248d4fc
L024e1848:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
