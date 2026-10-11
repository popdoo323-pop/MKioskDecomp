# Converted from the disassembly of 0x0201ceb0 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_0201ceb0
Batch_0201ceb0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    lis     r12,4119
    stw     r0,28(r1)
    lwz     r12,3756(r12)
    lis     r28,4119
    cmpwi   r12,0
    mr      r30,r3
    bne-    L0201cef8
    lis     r10,4119
    li      r11,1
    li      r12,0
    stw     r11,3756(r10)
    stb     r12,32568(r28)
L0201cef8:
    lis     r10,4119
    lwzu    r0,3752(r10)
    cmpwi   r0,0
    lis     r29,4119
    bne-    L0201cf28
    li      r7,1
    lis     r4,4117
    addi    r3,r29,32569
    li      r5,1368
    addi    r4,r4,-31048
    stw     r7,0(r10)
    bl      ext_029abc88
L0201cf28:
    cmplwi  r30,81
    blt-    L0201cf54
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L0201cf54:
    lbz     r0,32568(r28)
    lis     r31,4119
    cmpwi   r0,0
    addi    r31,r31,4956
    bne-    L0201cf80
    li      r5,81
    addi    r4,r29,32569
    mr      r3,r31
    bl      ext_026200ec
    li      r0,1
    stb     r0,32568(r28)
L0201cf80:
    slwi    r11,r30,2
    lwz     r28,8(r1)
    lwzx    r3,r11,r31
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
