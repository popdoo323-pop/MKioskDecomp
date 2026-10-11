# Converted from the disassembly of 0x0202c22c (316 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c22c
Batch_0202c22c:
    stwu    r1,-40(r1)
    stmw    r26,16(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r3
    lwz     r11,4(r29)
    lwz     r3,84(r11)
    mr      r30,r4
    mr      r26,r5
    li      r31,0
    bl      ext_021860b8
    cmpwi   r3,0
    beq-    L0202c278
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    li      r3,0
    blr
L0202c278:
    cmpwi   r30,0
    beq-    L0202c350
    lwz     r5,56(r30)
    rlwinm. r0,r5,0,16,16
    beq-    L0202c350
    bl      ext_029aaf98
    slwi    r6,r3,2
    addis   r12,r6,4124
    mr      r4,r30
    lwz     r28,27408(r12)
    li      r5,2
    lwz     r3,64(r30)
    mr      r6,r28
    bl      ext_02080b84
    mr.     r27,r3
    beq-    L0202c350
L0202c2b8:
    lwz     r9,4(r29)
    lwz     r3,84(r9)
    bl      ext_02185b9c
    mr      r4,r3
    li      r8,1
    addi    r7,r30,72
    mr      r6,r26
    mr      r5,r27
    mr      r3,r29
    bl      ext_0202c0cc
    cmpwi   r3,0
    bne-    L0202c334
    lis     r12,4120
    lfs     f0,-12892(r12)
    addi    r4,r1,8
    mr      r3,r27
    stfs    f0,16(r26)
    bl      ext_0215a1c8
    lwz     r10,8(r1)
    cmplwi  r10,2
    ble-    L0202c31c
    cmplwi  r10,9
    blt-    L0202c334
    cmplwi  r10,10
    bgt-    L0202c334
L0202c31c:
    mr      r3,r27
    bl      ext_0215a290
    cmpwi   r3,0
    beq-    L0202c334
    li      r31,1
    stw     r27,4(r26)
L0202c334:
    lwz     r3,64(r30)
    li      r5,2
    mr      r6,r28
    mr      r4,r30
    bl      ext_02080b84
    mr.     r27,r3
    bne+    L0202c2b8
L0202c350:
    mr      r3,r31
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
