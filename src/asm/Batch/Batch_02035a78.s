# Converted from the disassembly of 0x02035a78 (456 bytes). Name is a placeholder.
    .text
    .globl Batch_02035a78
Batch_02035a78:
    stwu    r1,-128(r1)
    stmw    r25,84(r1)
    mr      r30,r4
    mflr    r0
    stfd    f31,112(r1)
    ps_merge10 f31,f31,f31
    mr      r31,r5
    mr      r26,r6
    stfs    f31,120(r1)
    mr      r25,r7
    mr      r28,r8
    stw     r0,132(r1)
    mr      r29,r3
    addi    r3,r1,24
    fmr     f31,f1
    mr      r27,r9
    bl      ext_02591850
    lfs     f11,4(r26)
    lfs     f9,8(r31)
    stfs    f11,60(r1)
    stfs    f9,32(r1)
    lbz     r7,8(r26)
    lfs     f7,4(r31)
    lbz     r0,9(r26)
    stfs    f7,28(r1)
    cmplwi  r7,2
    stb     r0,65(r1)
    lfs     f12,0(r31)
    lwz     r9,0(r26)
    stfs    f12,24(r1)
    stw     r9,48(r1)
    bne-    L02035b14
    li      r0,2
    li      r26,0
    stb     r0,64(r1)
    clrlwi. r0,r9,31
    stw     r25,56(r1)
    beq-    L02035b30
    b       L02035b2c
L02035b14:
    li      r0,1
    li      r26,0
    stb     r0,64(r1)
    clrlwi. r0,r9,31
    stw     r25,56(r1)
    beq-    L02035b30
L02035b2c:
    li      r26,1
L02035b30:
    rlwinm. r0,r9,0,29,29
    beq-    L02035b3c
    ori     r26,r26,4
L02035b3c:
    rlwinm. r0,r9,0,28,28
    lwz     r10,20(r29)
    beq-    L02035b4c
    ori     r26,r26,8
L02035b4c:
    mulli   r6,r30,280
    addi    r5,r1,68
    mr      r4,r31
    addi    r12,r10,100
    add     r3,r12,r6
    bl      ext_02557af0
    lis     r12,4096
    lfs     f0,16660(r12)
    clrlwi. r7,r26,30
    stfs    f0,8(r1)
    beq-    L02035bd4
    lis     r10,4096
    lwz     r3,20(r29)
    mr      r5,r27
    fmr     f1,f31
    lfs     f2,16664(r10)
    mr      r8,r30
    addi    r4,r1,24
    addi    r6,r1,8
    addi    r7,r1,12
    li      r9,1
    bl      ext_020352b4
    clrlwi. r0,r26,31
    beq-    L02035bb4
    lfs     f13,8(r1)
    stfs    f13,32(r28)
L02035bb4:
    rlwinm. r0,r26,0,30,30
    beq-    L02035bd4
    lwz     r11,20(r28)
    lwz     r12,12(r1)
    cmpw    r12,r11
    ble-    L02035bd0
    mr      r11,r12
L02035bd0:
    stw     r11,20(r28)
L02035bd4:
    rlwinm. r6,r26,0,28,29
    beq-    L02035c20
    lwz     r3,20(r29)
    fmr     f1,f31
    li      r9,1
    addi    r7,r1,20
    addi    r6,r1,16
    addi    r4,r1,68
    mr      r8,r30
    mr      r5,r27
    bl      ext_0203552c
    rlwinm. r10,r26,0,29,29
    beq-    L02035c10
    lfs     f8,16(r1)
    stfs    f8,36(r28)
L02035c10:
    rlwinm. r5,r26,0,28,28
    beq-    L02035c20
    lfs     f10,20(r1)
    stfs    f10,40(r28)
L02035c20:
    lmw     r25,84(r1)
    lfs     f31,120(r1)
    lfd     f31,112(r1)
    isync
    lwz     r0,132(r1)
    mtlr    r0
    addi    r1,r1,128
    blr
