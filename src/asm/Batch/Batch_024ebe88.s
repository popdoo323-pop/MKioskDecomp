# Converted from the disassembly of 0x024ebe88 (368 bytes). Name is a placeholder.
    .text
    .globl Batch_024ebe88
Batch_024ebe88:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    lbz     r0,129(r3)
    cmpwi   r0,0
    beq-    L024ebfe4
    lwz     r5,28(r3)
    cmplwi  r5,6
    lwz     r12,32(r3)
    ble-    L024ebeb8
    addi    r12,r12,24
L024ebeb8:
    lis     r30,4117
    lwzu    r8,3660(r30)
    lwz     r5,12(r8)
    lwz     r9,0(r5)
    lwz     r26,0(r12)
    cmplwi  r9,3
    lwz     r9,4(r5)
    ble-    L024ebedc
    addi    r9,r9,12
L024ebedc:
    lis     r28,4119
    lwzu    r10,4616(r28)
    lis     r27,4119
    lwz     r31,0(r9)
    lis     r29,4107
    cmpwi   r10,0
    addi    r29,r29,-7824
    bne-    L024ebf08
    stw     r29,4620(r27)
    li      r0,1
    stw     r0,0(r28)
L024ebf08:
    cmpwi   r31,0
    beq-    L024ebf30
    lwz     r12,36(r31)
    lwz     r10,12(r12)
    mtctr   r10
    mr      r3,r31
    addi    r4,r27,4620
    bctrl
    cmpwi   r3,0
    bne-    L024ebf34
L024ebf30:
    li      r31,0
L024ebf34:
    lwz     r8,40(r31)
    lwz     r6,4768(r8)
    cmpwi   r6,3
    beq-    L024ebfd0
    lwz     r6,0(r30)
    lwz     r12,12(r6)
    lwz     r8,0(r12)
    lwz     r9,0(r28)
    cmplwi  r8,3
    lwz     r7,4(r12)
    ble-    L024ebf64
    addi    r7,r7,12
L024ebf64:
    cmpwi   r9,0
    lwz     r31,0(r7)
    bne-    L024ebf7c
    stw     r29,4620(r27)
    li      r11,1
    stw     r11,0(r28)
L024ebf7c:
    cmpwi   r31,0
    beq-    L024ebfa4
    lwz     r12,36(r31)
    lwz     r0,12(r12)
    mtctr   r0
    mr      r3,r31
    addi    r4,r27,4620
    bctrl
    cmpwi   r3,0
    bne-    L024ebfa8
L024ebfa4:
    li      r31,0
L024ebfa8:
    lwz     r6,40(r31)
    lwz     r0,4768(r6)
    cmpwi   r0,4
    beq-    L024ebfd0
    lis     r7,4107
    mr      r3,r26
    lfs     f1,-7552(r7)
    li      r4,0
    bl      ext_0247f968
    b       L024ebfe4
L024ebfd0:
    lis     r5,4107
    mr      r3,r26
    lfs     f1,-7784(r5)
    li      r4,0
    bl      ext_0247f968
L024ebfe4:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
