# Converted from the disassembly of 0x02017cb8 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_02017cb8
Batch_02017cb8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    bl      ext_02016d68
    lwz     r9,104(r31)
    lwz     r7,80(r9)
    li      r10,0
    cmpwi   r7,2
    lwz     r0,76(r9)
    bne-    L02017cf0
    lwz     r10,84(r9)
L02017cf0:
    cmpwi   r0,20
    bne-    L02017d20
    cmpwi   r10,8
    beq-    L02017d28
    lwz     r3,88(r31)
    lis     r30,4120
    lwz     r4,-14004(r30)
    bl      ext_02008eb0
    lwz     r12,-14004(r30)
    add     r8,r3,r12
    stw     r8,160(r31)
    b       L02017d6c
L02017d20:
    cmpwi   r10,3
    bne-    L02017d4c
L02017d28:
    lis     r4,4120
    lwz     r3,88(r31)
    lwz     r4,-14028(r4)
    bl      ext_02008eb0
    lis     r12,4120
    lwz     r12,-14032(r12)
    add     r8,r3,r12
    stw     r8,160(r31)
    b       L02017d6c
L02017d4c:
    lis     r4,4120
    lwz     r3,88(r31)
    lwz     r4,-14020(r4)
    bl      ext_02008eb0
    lis     r12,4120
    lwz     r12,-14024(r12)
    add     r8,r3,r12
    stw     r8,160(r31)
L02017d6c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
