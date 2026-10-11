# Converted from the disassembly of 0x024eb03c (180 bytes). Name is a placeholder.
    .text
    .globl Batch_024eb03c
Batch_024eb03c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    lwz     r6,16(r12)
    lwz     r0,0(r6)
    mr      r30,r3
    cmplwi  r0,14
    lwz     r8,4(r6)
    ble-    L024eb074
    addi    r8,r8,56
L024eb074:
    lis     r9,4119
    lwzu    r0,28324(r9)
    lis     r4,4119
    lwz     r31,0(r8)
    cmpwi   r0,0
    addi    r4,r4,29024
    bne-    L024eb0a4
    lis     r0,4107
    li      r12,1
    addic   r0,r0,-9428
    stw     r12,0(r9)
    stw     r0,0(r4)
L024eb0a4:
    cmpwi   r31,0
    beq-    L024eb0c8
    lwz     r7,196(r31)
    lwz     r10,12(r7)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024eb0cc
L024eb0c8:
    li      r31,0
L024eb0cc:
    mr      r3,r30
    stw     r31,536(r30)
    bl      ext_024e600c
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
