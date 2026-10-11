# Converted from the disassembly of 0x024be1fc (204 bytes). Name is a placeholder.
    .text
    .globl Batch_024be1fc
Batch_024be1fc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lbz     r0,244(r30)
    cmpwi   r0,0
    beq-    L024be2b0
    lwz     r11,32(r30)
    lwz     r31,0(r11)
    lwz     r0,4(r31)
    cmpwi   r0,0
    bne-    L024be28c
    mr      r3,r31
    li      r4,0
    bl      ext_0247fdd8
    cmpwi   r3,0
    bne-    L024be258
    lwz     r0,4(r31)
    cmpwi   r0,1
    bne-    L024be2b0
    b       L024be294
L024be258:
    mr      r3,r30
    bl      ext_024800e0
    lis     r12,4107
    mr      r3,r31
    lfs     f1,-30608(r12)
    li      r4,1
    bl      ext_0247f854
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
L024be28c:
    cmpwi   r0,1
    bne-    L024be2b0
L024be294:
    mr      r3,r31
    li      r4,1
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024be2b0
    li      r0,0
    stb     r0,244(r30)
L024be2b0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
