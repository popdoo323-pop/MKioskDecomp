# Converted from the disassembly of 0x024be5f4 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_024be5f4
Batch_024be5f4:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    mr      r29,r3
    lwz     r9,0(r4)
    lis     r11,4117
    stw     r9,248(r29)
    lwz     r11,3660(r11)
    lwz     r8,12(r11)
    lwz     r0,0(r8)
    cmplwi  r0,3
    lwz     r12,4(r8)
    ble-    L024be638
    addi    r12,r12,12
L024be638:
    lis     r8,4119
    lwzu    r9,4616(r8)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r9,0
    addi    r4,r4,4620
    bne-    L024be668
    lis     r0,4107
    li      r10,1
    addic   r0,r0,-30772
    stw     r10,0(r8)
    stw     r0,0(r4)
L024be668:
    cmpwi   r31,0
    beq-    L024be68c
    lwz     r12,36(r31)
    lwz     r12,12(r12)
    mtctr   r12
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024be690
L024be68c:
    li      r31,0
L024be690:
    li      r6,0
    lwz     r0,248(r29)
    addi    r4,r1,8
    stw     r6,8(r1)
    addi    r5,r1,12
    addi    r3,r31,408
    stw     r0,12(r1)
    bl      ext_024a3280
    mr      r5,r3
    lwz     r4,252(r29)
    mr      r3,r29
    li      r6,0
    bl      ext_024806dc
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    lwz     r30,24(r1)
    addi    r1,r1,32
    blr
