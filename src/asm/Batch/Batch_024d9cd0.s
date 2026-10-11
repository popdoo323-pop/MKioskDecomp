# Converted from the disassembly of 0x024d9cd0 (316 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9cd0
Batch_024d9cd0:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    mr      r30,r3
    stw     r0,36(r1)
    lwz     r0,200(r30)
    cmpwi   r0,0
    beq-    L024d9df0
    lis     r12,4117
    lwz     r12,3660(r12)
    lwz     r7,16(r12)
    lwz     r0,0(r7)
    cmplwi  r0,22
    lwz     r9,4(r7)
    ble-    L024d9d18
    addi    r9,r9,88
L024d9d18:
    lis     r12,4119
    lwzu    r8,3856(r12)
    lis     r4,4119
    lwz     r31,0(r9)
    cmpwi   r8,0
    addi    r4,r4,26576
    bne-    L024d9d48
    lis     r0,4107
    li      r10,1
    addic   r0,r0,-15108
    stw     r10,0(r12)
    stw     r0,0(r4)
L024d9d48:
    cmpwi   r31,0
    beq-    L024d9d6c
    lwz     r12,196(r31)
    lwz     r0,12(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024d9d70
L024d9d6c:
    li      r31,0
L024d9d70:
    mr      r3,r31
    bl      ext_024f5370
    lis     r6,4107
    lwz     r29,200(r30)
    lis     r8,4107
    addi    r6,r6,-15132
    addi    r8,r8,-14984
    stw     r6,12(r1)
    stw     r8,8(r1)
    bl      ext_024ae79c
    addi    r4,r1,8
    lwz     r31,236(r3)
    mr      r3,r29
    bl      ext_024801a0
    mr      r4,r3
    li      r6,0
    mr      r5,r31
    mr      r3,r29
    bl      ext_024806dc
    lwz     r7,68(r30)
    lwz     r3,0(r7)
    bl      ext_0247fba0
    lwz     r3,200(r30)
    bl      ext_024800e0
    lwz     r9,68(r30)
    lis     r11,4107
    lfs     f1,-14988(r11)
    lwz     r3,0(r9)
    li      r4,2
    bl      ext_0247f854
    li      r0,0
    stw     r0,132(r30)
L024d9df0:
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
