# Converted from the disassembly of 0x0200dc74 (356 bytes). Name is a placeholder.
    .text
    .globl Batch_0200dc74
Batch_0200dc74:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mr      r28,r3
    mflr    r0
    addi    r31,r28,204
    mr      r3,r31
    stw     r0,36(r1)
    bl      ext_0262b790
    li      r27,0
    li      r5,253
    stb     r27,20(r28)
    stb     r27,96(r28)
    li      r0,-1
    stw     r5,16(r28)
    stb     r0,12(r28)
    stw     r5,4(r28)
    lwz     r3,104(r28)
    stb     r27,97(r28)
    stb     r0,24(r28)
    stb     r27,8(r28)
    bl      ext_0200aa10
    lwz     r29,112(r28)
    addi    r26,r28,108
    cmplw   r29,r26
    beq-    L0200dd0c
L0200dcd8:
    mr      r3,r29
    lwz     r30,4(r29)
    bl      ext_026017e4
    lwz     r11,8(r26)
    lwz     r0,12(r26)
    addi    r11,r11,-1
    stw     r11,8(r26)
    addi    r6,r29,-24
    stw     r0,-24(r29)
    mr      r29,r30
    cmplw   r29,r26
    stw     r6,12(r26)
    bne+    L0200dcd8
L0200dd0c:
    lwz     r29,136(r28)
    addi    r26,r28,132
    cmplw   r29,r26
    beq-    L0200dd50
L0200dd1c:
    mr      r3,r29
    lwz     r30,4(r29)
    bl      ext_026017e4
    lwz     r6,8(r26)
    lwz     r8,12(r26)
    addi    r6,r6,-1
    stw     r6,8(r26)
    addi    r0,r29,-24
    stw     r8,-24(r29)
    mr      r29,r30
    cmplw   r29,r26
    stw     r0,12(r26)
    bne+    L0200dd1c
L0200dd50:
    lwz     r29,160(r28)
    addi    r26,r28,156
    cmplw   r29,r26
    beq-    L0200dd94
L0200dd60:
    mr      r3,r29
    lwz     r30,4(r29)
    bl      ext_026017e4
    lwz     r9,8(r26)
    lwz     r10,12(r26)
    addi    r9,r9,-1
    stw     r9,8(r26)
    addi    r7,r29,-24
    stw     r10,-24(r29)
    mr      r29,r30
    cmplw   r29,r26
    stw     r7,12(r26)
    bne+    L0200dd60
L0200dd94:
    stb     r27,268(r28)
    li      r0,253
    stw     r27,280(r28)
    li      r11,8
    stw     r0,180(r28)
    mr      r3,r31
    stb     r27,196(r28)
    stb     r27,184(r28)
    stb     r27,284(r28)
    stw     r11,188(r28)
    lwz     r12,188(r28)
    bl      ext_0262b7c4
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
