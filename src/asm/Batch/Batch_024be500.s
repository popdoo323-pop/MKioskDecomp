# Converted from the disassembly of 0x024be500 (244 bytes). Name is a placeholder.
    .text
    .globl Batch_024be500
Batch_024be500:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    li      r0,-1
    mr      r29,r3
    lis     r11,4117
    stw     r0,248(r29)
    lwz     r12,248(r29)
    lwz     r11,3660(r11)
    stw     r12,8(r1)
    lwz     r10,12(r11)
    lwz     r9,0(r10)
    cmplwi  r9,3
    lwz     r12,4(r10)
    ble-    L024be54c
    addi    r12,r12,12
L024be54c:
    lis     r9,4119
    lwzu    r11,4616(r9)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r11,0
    addi    r4,r4,4620
    bne-    L024be57c
    lis     r0,4107
    li      r12,1
    addic   r0,r0,-30772
    stw     r12,0(r9)
    stw     r0,0(r4)
L024be57c:
    cmpwi   r31,0
    beq-    L024be5a0
    lwz     r8,36(r31)
    lwz     r8,12(r8)
    mtctr   r8
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024be5a4
L024be5a0:
    li      r31,0
L024be5a4:
    li      r6,0
    lwz     r0,248(r29)
    addi    r4,r1,12
    stw     r6,12(r1)
    addi    r5,r1,8
    addi    r3,r31,408
    stw     r0,8(r1)
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
