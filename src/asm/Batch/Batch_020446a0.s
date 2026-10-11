# Converted from the disassembly of 0x020446a0 (560 bytes). Name is a placeholder.
    .text
    .globl Batch_020446a0
Batch_020446a0:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r25,12(r1)
    mr      r28,r5
    mr      r30,r4
    cmplwi  r30,1
    mr      r26,r6
    li      r27,0
    stw     r0,44(r1)
    lis     r0,4096
    mr      r29,r3
    addic   r0,r0,22624
    beq-    L020446ec
    cmplwi  r30,2
    beq-    L020447dc
    stw     r30,24(r29)
    li      r3,1
    stw     r28,28(r29)
    b       L020448bc
L020446ec:
    lis     r12,4119
    lwz     r12,2796(r12)
    lis     r4,4119
    cmpwi   r12,0
    addi    r4,r4,5844
    bne-    L02044714
    stw     r0,0(r4)
    li      r5,1
    lis     r8,4119
    stw     r5,2796(r8)
L02044714:
    cmpwi   r28,0
    beq-    L02044760
    lwz     r6,0(r28)
    lwz     r0,20(r6)
    mtctr   r0
    mr      r3,r28
    bctrl
    cmpwi   r3,0
    beq-    L02044760
    lwz     r0,4(r29)
    cmpwi   r0,0
    mr      r25,r28
    beq-    L02044770
L02044748:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    li      r3,0
    blr
L02044760:
    lwz     r0,4(r29)
    cmpwi   r0,0
    li      r25,0
    bne+    L02044748
L02044770:
    mr      r4,r26
    li      r3,12
    li      r5,4
    bl      ext_026015cc
    mr.     r31,r3
    beq-    L020447d0
    stw     r25,8(r31)
    lis     r7,4096
    stw     r27,4(r31)
    mr      r4,r26
    addi    r7,r7,22656
    li      r5,4
    li      r3,300
    stw     r7,0(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L020447b8
    bl      ext_026387ec
L020447b8:
    stw     r3,4(r31)
    mr      r4,r25
    stw     r25,8(r31)
    bl      ext_02639918
    stw     r31,4(r29)
    b       L020448b0
L020447d0:
    li      r31,0
    stw     r31,4(r29)
    b       L020448b0
L020447dc:
    lis     r10,4119
    lwzu    r9,2768(r10)
    lis     r4,4119
    cmpwi   r9,0
    addi    r4,r4,5848
    bne-    L02044800
    stw     r0,0(r4)
    li      r11,1
    stw     r11,0(r10)
L02044800:
    cmpwi   r28,0
    beq-    L02044838
    lwz     r12,0(r28)
    lwz     r0,20(r12)
    mtctr   r0
    mr      r3,r28
    bctrl
    cmpwi   r3,0
    beq-    L02044838
    lwz     r7,4(r29)
    cmpwi   r7,0
    mr      r25,r28
    bne+    L02044748
    b       L02044848
L02044838:
    lwz     r7,4(r29)
    cmpwi   r7,0
    li      r25,0
    bne+    L02044748
L02044848:
    mr      r4,r26
    li      r3,12
    li      r5,4
    bl      ext_026015cc
    mr.     r31,r3
    beq-    L020448a8
    stw     r25,8(r31)
    lis     r8,4096
    stw     r27,4(r31)
    mr      r4,r26
    addi    r8,r8,22720
    li      r5,4
    li      r3,168
    stw     r8,0(r31)
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02044890
    bl      ext_0263a644
L02044890:
    stw     r3,4(r31)
    mr      r4,r25
    stw     r25,8(r31)
    bl      ext_0263b488
    stw     r31,4(r29)
    b       L020448b0
L020448a8:
    li      r31,0
    stw     r31,4(r29)
L020448b0:
    stw     r30,24(r29)
    li      r3,1
    stw     r28,28(r29)
L020448bc:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
