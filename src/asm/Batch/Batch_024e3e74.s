# Converted from the disassembly of 0x024e3e74 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_024e3e74
Batch_024e3e74:
    stwu    r1,-104(r1)
    stmw    r27,84(r1)
    mflr    r0
    mr      r30,r4
    stw     r0,108(r1)
    mr      r29,r3
    bl      ext_0233b990
    mr      r28,r3
    lwz     r31,1220(r28)
    cmpwi   r31,0
    li      r27,0
    bne-    L024e3edc
    mr      r3,r28
    bl      ext_0233d858
    cmpwi   r3,0
    bne-    L024e3ec4
    mr      r3,r28
    bl      ext_0233d8dc
    cmpwi   r3,0
    beq-    L024e3ee8
L024e3ec4:
    lwz     r31,1220(r28)
    cmpwi   r31,0
    bne-    L024e3edc
    mr      r3,r28
    bl      ext_0233d7f0
    mr      r31,r3
L024e3edc:
    cmpwi   r31,0
    stw     r27,1220(r28)
    bne-    L024e3f38
L024e3ee8:
    stw     r27,76(r1)
    addi    r3,r1,16
    stw     r27,28(r1)
    stw     r27,72(r1)
    stw     r27,20(r1)
    stw     r27,64(r1)
    bl      ext_024dbfc0
    addi    r3,r1,16
    addi    r4,r1,8
    li      r6,7001
    li      r5,5006
    stw     r27,8(r1)
    bl      ext_024dc030
    li      r10,1
    addi    r5,r1,16
    mr      r4,r30
    mr      r3,r29
    stw     r10,24(r1)
    bl      ext_0248e498
    b       L024e3f98
L024e3f38:
    stw     r27,64(r1)
    addi    r3,r1,16
    stw     r27,20(r1)
    stw     r27,28(r1)
    stw     r27,76(r1)
    stw     r27,72(r1)
    bl      ext_024dbfc0
    li      r11,9
    addi    r3,r1,16
    addi    r4,r1,12
    li      r6,7001
    li      r5,-1
    stw     r11,12(r1)
    bl      ext_024dc030
    li      r12,1
    li      r0,3
    stw     r12,24(r1)
    addi    r5,r1,16
    mr      r4,r30
    stw     r0,64(r1)
    lwz     r0,64(r1)
    mr      r3,r29
    stw     r31,68(r1)
    bl      ext_0248e498
L024e3f98:
    lmw     r27,84(r1)
    lwz     r0,108(r1)
    mtlr    r0
    addi    r1,r1,104
    blr
