# Converted from the disassembly of 0x024d0064 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_024d0064
Batch_024d0064:
    stwu    r1,-40(r1)
    stmw    r24,8(r1)
    mflr    r0
    stw     r0,44(r1)
    lis     r12,4117
    lwz     r12,3660(r12)
    lwz     r9,12(r12)
    lwz     r0,0(r9)
    mr      r27,r3
    cmplwi  r0,3
    lwz     r11,4(r9)
    ble-    L024d0098
    addi    r11,r11,12
L024d0098:
    lis     r12,4119
    lwzu    r4,4616(r12)
    cmpwi   r4,0
    lis     r4,4119
    lwz     r31,0(r11)
    addi    r4,r4,4620
    bne-    L024d00c8
    lis     r6,4107
    li      r0,1
    addi    r6,r6,-20496
    stw     r0,0(r12)
    stw     r6,0(r4)
L024d00c8:
    cmpwi   r31,0
    beq-    L024d00ec
    lwz     r7,36(r31)
    lwz     r0,12(r7)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024d00f0
L024d00ec:
    li      r31,0
L024d00f0:
    lwz     r11,976(r31)
    lbz     r0,5712(r11)
    cmpwi   r0,0
    bne-    L024d0188
    lwz     r8,112(r27)
    mr.     r29,r8
    li      r25,0
    ble-    L024d0188
    li      r24,0
L024d0114:
    cmplw   r25,r8
    lwz     r31,116(r27)
    bge-    L024d0124
    add     r31,r31,r24
L024d0124:
    lwz     r10,0(r31)
    mr.     r28,r10
    li      r26,0
    ble-    L024d0170
    li      r30,0
L024d0138:
    cmplw   r26,r10
    li      r3,0
    bge-    L024d014c
    lwz     r9,8(r31)
    lwzx    r3,r9,r30
L024d014c:
    cmpwi   r3,0
    beq-    L024d0158
    bl      ext_024cffbc
L024d0158:
    addic.  r28,r28,-1
    addi    r26,r26,1
    addi    r30,r30,4
    beq-    L024d0170
    lwz     r10,0(r31)
    b       L024d0138
L024d0170:
    addic.  r29,r29,-1
    addi    r25,r25,1
    addi    r24,r24,12
    beq-    L024d0188
    lwz     r8,112(r27)
    b       L024d0114
L024d0188:
    lmw     r24,8(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
