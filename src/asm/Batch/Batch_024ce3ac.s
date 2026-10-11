# Converted from the disassembly of 0x024ce3ac (328 bytes). Name is a placeholder.
    .text
    .globl Batch_024ce3ac
Batch_024ce3ac:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r25,12(r1)
    mr.     r30,r4
    lis     r28,4117
    stw     r0,44(r1)
    mr      r29,r3
    ble-    L024ce49c
    lwz     r3,9820(r28)
    bl      ext_0261c858
    lwz     r9,12(r3)
    lwz     r0,52(r9)
    mtctr   r0
    li      r5,4
    mulli   r4,r30,12
    bctrl
    mr      r25,r3
    cmpwi   r30,0
    mr      r31,r30
    li      r0,0
    bgt-    L024ce404
    li      r31,1
L024ce404:
    mulli   r26,r0,12
    li      r27,0
L024ce40c:
    add.    r12,r25,r26
    beq-    L024ce438
    cmpwi   r12,0
    bne-    L024ce42c
    li      r3,12
    bl      ext_0260128c
    mr.     r12,r3
    beq-    L024ce438
L024ce42c:
    stw     r27,4(r12)
    stw     r27,0(r12)
    stw     r27,8(r12)
L024ce438:
    addic.  r31,r31,-1
    addi    r26,r26,12
    bne+    L024ce40c
    cmpwi   r25,0
    beq-    L024ce454
    stw     r25,116(r29)
    stw     r30,112(r29)
L024ce454:
    cmpwi   r30,0
    ble-    L024ce49c
    lwz     r3,9820(r28)
    bl      ext_0261c858
    lwz     r8,12(r3)
    lwz     r9,52(r8)
    mtctr   r9
    li      r5,4
    slwi    r4,r30,3
    bctrl
    cmpwi   r30,0
    mr      r0,r30
    bgt-    L024ce48c
    li      r0,1
L024ce48c:
    cmpwi   r3,0
    beq-    L024ce49c
    stw     r3,124(r29)
    stw     r30,120(r29)
L024ce49c:
    cmpwi   r30,0
    li      r12,0
    ble-    L024ce4e0
    lis     r10,4107
    mtctr   r30
    lfs     f0,-20120(r10)
    li      r6,0
L024ce4b8:
    lwz     r0,120(r29)
    cmplw   r12,r0
    lwz     r11,124(r29)
    bge-    L024ce4cc
    add     r11,r11,r6
L024ce4cc:
    stfs    f0,0(r11)
    addi    r6,r6,8
    addi    r12,r12,1
    stfs    f0,4(r11)
    bdnz+   L024ce4b8
L024ce4e0:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
