# Converted from the disassembly of 0x024e5d50 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5d50
Batch_024e5d50:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r11,400(r31)
    cmpwi   r11,0
    bne-    L024e5e70
    lwz     r0,80(r31)
    cmpwi   r0,0
    bne-    L024e5e48
    lwz     r0,212(r31)
    lwz     r10,204(r31)
    cmplwi  r0,4
    addi    r11,r10,704
    bge-    L024e5d9c
    slwi    r10,r0,5
    add     r11,r11,r10
L024e5d9c:
    lwz     r10,12(r11)
    cmpwi   r10,0
    bne-    L024e5e78
    cmpwi   r0,0
    blt-    L024e5dc4
    lis     r12,4117
    lwz     r12,-3284(r12)
    lwz     r11,52(r12)
    cmpw    r0,r11
    blt-    L024e5ddc
L024e5dc4:
    li      r30,0
    mr      r3,r30
    bl      ext_0218d804
    cmpwi   r3,0
    beq-    L024e5e78
    b       L024e5dfc
L024e5ddc:
    lwz     r12,56(r12)
    slwi    r11,r0,2
    lwzx    r10,r11,r12
    lwz     r30,24(r10)
    mr      r3,r30
    bl      ext_0218d804
    cmpwi   r3,0
    beq-    L024e5e78
L024e5dfc:
    mr      r3,r30
    bl      ext_0218dc70
    cmpwi   r3,0
    beq-    L024e5e78
    lwz     r10,200(r31)
    lis     r12,4107
    lfs     f1,-9236(r12)
    lwz     r12,32(r10)
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247f854
    mr      r3,r31
    bl      ext_0248db10
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024e5e48:
    cmpwi   r0,1
    bne-    L024e5e78
    lwz     r12,200(r31)
    lwz     r11,32(r12)
    lwz     r3,0(r11)
    li      r4,1
    bl      ext_0247fce4
    lwz     r0,88(r31)
    cmplw   r0,r3
    blt-    L024e5e78
L024e5e70:
    mr      r3,r31
    bl      ext_0248d6a0
L024e5e78:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
