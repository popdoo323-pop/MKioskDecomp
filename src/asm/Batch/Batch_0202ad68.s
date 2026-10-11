# Converted from the disassembly of 0x0202ad68 (524 bytes). Name is a placeholder.
    .text
    .globl Batch_0202ad68
Batch_0202ad68:
    mflr    r0
    stwu    r1,-96(r1)
    stw     r0,100(r1)
    stmw    r15,28(r1)
    lis     r16,4119
    mr      r25,r3
    li      r30,0
    lis     r19,4119
    lis     r22,4096
    mr      r20,r30
    lis     r23,4117
    addi    r22,r22,13508
    mr      r21,r20
    addi    r31,r25,4
    lis     r18,4119
    addi    r16,r16,5348
    lis     r17,4120
    li      r15,1
    lis     r29,4120
    li      r27,30
    mr      r26,r4
L0202adbc:
    lwz     r10,3604(r19)
    cmplwi  r30,30
    lwz     r9,0(r26)
    bge-    L0202ade4
    add     r24,r31,r20
    cmpwi   r10,0
    addi    r28,r9,1
    lwz     r11,3600(r18)
    beq-    L0202adf8
    b       L0202ae00
L0202ade4:
    mr      r24,r31
    cmpwi   r10,0
    addi    r28,r9,1
    lwz     r11,3600(r18)
    bne-    L0202ae00
L0202adf8:
    stb     r21,-31353(r29)
    stw     r15,3604(r19)
L0202ae00:
    cmpwi   r11,0
    bne-    L0202ae1c
    li      r5,246
    addi    r3,r17,-31599
    addi    r4,r23,-29628
    stw     r15,3600(r18)
    bl      ext_029abc88
L0202ae1c:
    cmplwi  r28,31
    blt-    L0202ae48
    lwz     r9,3604(r19)
    li      r6,0
    lwz     r10,3600(r18)
    cmpwi   r9,0
    stw     r6,8(r1)
    addi    r28,r30,1
    stw     r22,12(r1)
    beq-    L0202ae8c
    b       L0202ae94
L0202ae48:
    lbz     r5,-31353(r29)
    cmpwi   r5,0
    bne-    L0202ae68
    li      r5,31
    addi    r4,r17,-31599
    mr      r3,r16
    bl      ext_026200ec
    stb     r15,-31353(r29)
L0202ae68:
    lwz     r9,3604(r19)
    slwi    r8,r28,2
    stw     r22,12(r1)
    lwzx    r6,r8,r16
    cmpwi   r9,0
    lwz     r10,3600(r18)
    addi    r28,r30,1
    stw     r6,8(r1)
    bne-    L0202ae94
L0202ae8c:
    stb     r21,-31353(r29)
    stw     r15,3604(r19)
L0202ae94:
    cmpwi   r10,0
    bne-    L0202aeb0
    li      r5,246
    addi    r3,r17,-31599
    addi    r4,r23,-29628
    stw     r15,3600(r18)
    bl      ext_029abc88
L0202aeb0:
    cmplwi  r28,31
    blt-    L0202aee8
    stw     r22,20(r1)
    li      r7,0
    mr      r4,r24
    lwz     r3,0(r25)
    addi    r5,r1,8
    addi    r6,r1,16
    stw     r7,16(r1)
    bl      ext_02556c88
    xori    r0,r3,1
    cmpwi   r0,0
    beq-    L0202af4c
    b       L0202af38
L0202aee8:
    lbz     r0,-31353(r29)
    cmpwi   r0,0
    bne-    L0202af08
    li      r5,31
    addi    r4,r17,-31599
    mr      r3,r16
    bl      ext_026200ec
    stb     r15,-31353(r29)
L0202af08:
    slwi    r12,r28,2
    stw     r22,20(r1)
    lwzx    r7,r12,r16
    addi    r6,r1,16
    addi    r5,r1,8
    lwz     r3,0(r25)
    mr      r4,r24
    stw     r7,16(r1)
    bl      ext_02556c88
    xori    r0,r3,1
    cmpwi   r0,0
    beq-    L0202af4c
L0202af38:
    cmplwi  r30,30
    bge-    L0202af48
    stwx    r21,r31,r20
    b       L0202af4c
L0202af48:
    stw     r21,0(r31)
L0202af4c:
    addic.  r27,r27,-1
    addi    r30,r30,1
    addi    r20,r20,4
    bne+    L0202adbc
    mr      r3,r31
    lmw     r15,28(r1)
    lwz     r0,100(r1)
    mtlr    r0
    addi    r1,r1,96
    blr
