# Converted from the disassembly of 0x024d1e2c (256 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1e2c
Batch_024d1e2c:
    mflr    r0
    lis     r11,4107
    addi    r11,r11,-18704
    stwu    r1,-32(r1)
    stw     r11,12(r1)
    stw     r30,24(r1)
    stw     r29,20(r1)
    mr      r30,r3
    stw     r0,36(r1)
    lis     r0,4107
    stw     r31,28(r1)
    addic   r0,r0,-18616
    li      r3,652
    stw     r0,8(r1)
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024d1ed0
    li      r4,652
    mr      r3,r31
    bl      ext_02933d98
    mr      r3,r31
    bl      ext_024cab2c
    lis     r10,4107
    addi    r10,r10,-17976
    lis     r12,4107
    stw     r10,84(r31)
    li      r29,0
    addi    r12,r12,-17840
    stw     r29,616(r31)
    stw     r12,88(r31)
    addic.  r3,r31,624
    stw     r29,620(r31)
    bne-    L024d1ec0
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024d1ecc
L024d1ec0:
    stw     r29,4(r3)
    stw     r29,0(r3)
    stw     r29,8(r3)
L024d1ecc:
    stw     r29,648(r31)
L024d1ed0:
    addi    r6,r1,8
    li      r5,5
    mr      r4,r31
    mr      r3,r30
    bl      ext_0248d340
    stw     r31,200(r30)
    lwz     r0,12(r31)
    cmpwi   r0,0
    bne-    L024d1f04
    lwz     r0,16(r31)
    ori     r0,r0,256
    stw     r0,16(r31)
    lwz     r31,200(r30)
L024d1f04:
    lwz     r3,140(r30)
    mr      r4,r31
    bl      ext_02485d40
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
