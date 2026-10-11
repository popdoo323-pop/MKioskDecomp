# Converted from the disassembly of 0x0200e274 (368 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e274
Batch_0200e274:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mr      r28,r3
    addi    r26,r28,204
    mr      r3,r26
    mflr    r0
    mr      r30,r4
    stw     r0,36(r1)
    bl      ext_0262b790
    lwz     r11,152(r28)
    lwz     r9,140(r28)
    cmpw    r9,r11
    li      r27,0
    blt-    L0200e2e4
    lwz     r10,0(r30)
    li      r31,0
    stw     r10,0(r31)
    lwz     r12,4(r30)
    stw     r12,4(r31)
    lwz     r5,8(r30)
    stw     r5,8(r31)
    lwz     r6,12(r30)
    stw     r6,12(r31)
    lbz     r7,16(r30)
    mr      r3,r26
    stb     r7,16(r31)
    bl      ext_0262b7c4
    b       L0200e3d0
L0200e2e4:
    lwz     r31,144(r28)
    cmpwi   r31,0
    beq-    L0200e2f8
    lwz     r0,0(r31)
    stw     r0,144(r28)
L0200e2f8:
    cmpwi   r31,0
    beq-    L0200e384
    mr.     r29,r31
    bne-    L0200e318
    li      r3,24
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0200e360
L0200e318:
    lis     r8,4096
    addi    r8,r8,2584
    mr.     r3,r29
    stw     r8,20(r29)
    bne-    L0200e33c
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0200e34c
L0200e33c:
    stb     r27,5(r3)
    li      r9,253
    stb     r27,4(r3)
    stw     r9,0(r3)
L0200e34c:
    li      r0,-1
    stb     r27,16(r29)
    li      r10,8
    stw     r0,12(r29)
    stw     r10,8(r29)
L0200e360:
    stw     r27,24(r31)
    addi    r4,r31,24
    addi    r3,r28,132
    stw     r27,28(r31)
    bl      ext_026017c4
    lwz     r12,140(r28)
    addi    r12,r12,1
    stw     r12,140(r28)
    b       L0200e3a0
L0200e384:
    li      r4,24
    addi    r3,r28,132
    li      r31,0
    bl      ext_026017c4
    lwz     r12,140(r28)
    addi    r12,r12,1
    stw     r12,140(r28)
L0200e3a0:
    lwz     r10,0(r30)
    stw     r10,0(r31)
    lwz     r12,4(r30)
    stw     r12,4(r31)
    lwz     r5,8(r30)
    stw     r5,8(r31)
    lwz     r6,12(r30)
    stw     r6,12(r31)
    lbz     r7,16(r30)
    mr      r3,r26
    stb     r7,16(r31)
    bl      ext_0262b7c4
L0200e3d0:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
