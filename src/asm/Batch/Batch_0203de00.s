# Converted from the disassembly of 0x0203de00 (440 bytes). Name is a placeholder.
    .text
    .globl Batch_0203de00
Batch_0203de00:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    li      r3,0
    addi    r5,r29,92
    mr      r11,r3
L0203de28:
    li      r8,-1
    mr      r7,r11
    add     r4,r5,r11
L0203de34:
    stw     r8,0(r4)
    cmplwi  r3,4
    lwz     r9,0(r4)
    bge-    L0203de60
    add     r6,r5,r7
    stw     r8,8(r6)
    lwz     r0,228(r29)
    cmplwi  r3,4
    lwz     r10,8(r6)
    blt-    L0203de74
    b       L0203dea0
L0203de60:
    stw     r8,8(r5)
    lwz     r0,228(r29)
    cmplwi  r3,4
    lwz     r10,8(r5)
    bge-    L0203dea0
L0203de74:
    add     r12,r5,r7
    addi    r3,r3,1
    addi    r7,r7,12
    cmpwi   r3,4
    addi    r11,r11,12
    stw     r0,4(r12)
    bge-    L0203deb8
L0203de90:
    cmplwi  r3,4
    blt+    L0203de28
    mr      r4,r5
    b       L0203de34
L0203dea0:
    addi    r3,r3,1
    addi    r7,r7,12
    cmpwi   r3,4
    addi    r11,r11,12
    stw     r0,4(r5)
    blt+    L0203de90
L0203deb8:
    lis     r12,4117
    lwz     r12,-5364(r12)
    lwz     r4,64(r12)
    lwz     r0,20(r4)
    cmpwi   r0,0
    lwz     r5,228(r29)
    beq-    L0203df2c
    lwz     r8,60(r4)
    cmpwi   r8,0
    beq-    L0203df2c
    cmpwi   r5,0
    blt-    L0203df2c
    lhz     r6,118(r4)
    cmpw    r5,r6
    bge-    L0203df2c
    mulli   r7,r5,24
    add     r12,r8,r7
    lbz     r0,20(r12)
    mr      r3,r29
    xori    r8,r0,255
    rlwinm  r0,r0,0,31,29
    rlwimi  r31,r8,0,24,31
    rlwimi  r30,r0,0,24,31
    rlwinm  r31,r31,0,31,29
    bl      ext_0203d410
    lwz     r6,108(r3)
    cmpwi   r6,11
    bne-    L0203df58
    b       L0203df64
L0203df2c:
    lbz     r0,392(r4)
    mr      r3,r29
    xori    r8,r0,255
    rlwinm  r0,r0,0,31,29
    rlwimi  r31,r8,0,24,31
    rlwimi  r30,r0,0,24,31
    rlwinm  r31,r31,0,31,29
    bl      ext_0203d410
    lwz     r6,108(r3)
    cmpwi   r6,11
    beq-    L0203df64
L0203df58:
    lwz     r0,108(r3)
    cmpwi   r0,14
    bne-    L0203df6c
L0203df64:
    ori     r31,r31,1
    clrrwi  r30,r30,1
L0203df6c:
    lis     r11,4096
    clrlwi  r4,r30,24
    lfs     f1,19508(r11)
    mr      r3,r29
    li      r5,0
    bl      ext_0203ace4
    lis     r9,4096
    clrlwi  r4,r31,24
    lfs     f1,19504(r9)
    mr      r3,r29
    li      r5,0
    bl      ext_0203ace4
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
