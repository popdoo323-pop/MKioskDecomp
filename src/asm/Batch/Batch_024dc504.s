# Converted from the disassembly of 0x024dc504 (500 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc504
Batch_024dc504:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr      r31,r3
    stw     r30,24(r1)
    lis     r8,4121
    stw     r0,36(r1)
    lbz     r9,1381(r31)
    addi    r8,r8,30552
    cmpwi   r9,0
    addi    r30,r8,4
    bne-    L024dc54c
    lwz     r10,0(r30)
    lwz     r7,0(r10)
    lwz     r12,308(r7)
    rlwinm. r0,r12,0,29,29
    bne-    L024dc5ec
    b       L024dc5cc
L024dc54c:
    li      r10,0
    stb     r10,1381(r31)
    lwz     r10,4(r8)
    lwz     r11,0(r10)
    lwz     r11,308(r11)
    rlwinm. r12,r11,0,29,29
    beq-    L024dc598
    lwz     r10,0(r10)
    cmpwi   r10,0
    beq-    L024dc598
    lbz     r7,320(r10)
    stb     r7,1373(r31)
    bl      ext_02041f68
    lwz     r0,340(r3)
    stw     r0,1376(r31)
    bl      ext_02490bdc
    bl      ext_024dbc14
    stb     r3,1380(r31)
    b       L024dc5b8
L024dc598:
    li      r7,0
    stb     r7,1373(r31)
    bl      ext_02041f68
    lwz     r0,340(r3)
    stw     r0,1376(r31)
    bl      ext_02490bdc
    bl      ext_024dbc14
    stb     r3,1380(r31)
L024dc5b8:
    lwz     r10,0(r30)
    lwz     r7,0(r10)
    lwz     r12,308(r7)
    rlwinm. r0,r12,0,29,29
    bne-    L024dc5ec
L024dc5cc:
    li      r30,0
    bl      ext_02041f68
    lwz     r9,344(r3)
    lwz     r8,204(r31)
    cmpwi   r8,1
    stw     r8,8(r1)
    bne-    L024dc634
    b       L024dc608
L024dc5ec:
    lwz     r30,0(r10)
    bl      ext_02041f68
    lwz     r9,344(r3)
    lwz     r8,204(r31)
    cmpwi   r8,1
    stw     r8,8(r1)
    bne-    L024dc634
L024dc608:
    cmpw    r8,r9
    blt-    L024dc6b0
    bl      ext_02041f68
    lwz     r0,8(r1)
    addi    r4,r1,12
    stw     r0,12(r1)
    bl      ext_02042b38
    lwz     r9,212(r31)
    cmplwi  r9,3
    beq-    L024dc6cc
    b       L024dc6bc
L024dc634:
    cmpwi   r8,2
    bne-    L024dc670
    li      r0,1
    cmpw    r8,r9
    stb     r0,25(r31)
    blt-    L024dc6b0
    bl      ext_02041f68
    lwz     r11,8(r1)
    addi    r4,r1,16
    stw     r11,16(r1)
    bl      ext_02042b38
    lwz     r9,212(r31)
    cmplwi  r9,3
    beq-    L024dc6cc
    b       L024dc6bc
L024dc670:
    cmpwi   r8,3
    bne-    L024dc6b0
    li      r12,1
    stb     r12,24(r31)
    cmpw    r8,r9
    stb     r12,25(r31)
    blt-    L024dc6a0
    bl      ext_02041f68
    lwz     r7,8(r1)
    addi    r4,r1,20
    stw     r7,20(r1)
    bl      ext_02042b38
L024dc6a0:
    cmpwi   r30,0
    beq-    L024dc6b0
    li      r8,1
    stb     r8,320(r30)
L024dc6b0:
    lwz     r9,212(r31)
    cmplwi  r9,3
    beq-    L024dc6cc
L024dc6bc:
    cmplwi  r9,7
    blt-    L024dc6d8
    cmplwi  r9,9
    bgt-    L024dc6d8
L024dc6cc:
    li      r3,0
    bl      ext_024af088
    b       L024dc6e0
L024dc6d8:
    li      r3,1
    bl      ext_024af088
L024dc6e0:
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
