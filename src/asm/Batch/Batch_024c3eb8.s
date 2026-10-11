# Converted from the disassembly of 0x024c3eb8 (416 bytes). Name is a placeholder.
    .text
    .globl Batch_024c3eb8
Batch_024c3eb8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,120(r30)
    lwz     r31,0(r12)
    cmpwi   r31,0
    beq-    L024c3f2c
    lwz     r9,28(r31)
    lwz     r11,4(r12)
    cmplw   r9,r11
    bne-    L024c3f2c
    lwz     r3,32(r31)
    cmpwi   r3,0
    beq-    L024c3f1c
    lwz     r0,36(r31)
    lwz     r10,464(r3)
    cmplw   r0,r10
    bne-    L024c3f1c
    lwz     r11,476(r3)
    cmpwi   r11,0
    ble-    L024c3f1c
    bl      ext_027741c0
L024c3f1c:
    lwz     r12,108(r31)
    rlwinm  r10,r12,0,30,28
    ori     r0,r10,8
    stw     r0,108(r31)
L024c3f2c:
    lwz     r10,124(r30)
    lwz     r31,0(r10)
    cmpwi   r31,0
    beq-    L024c3f88
    lwz     r9,28(r31)
    lwz     r10,4(r10)
    cmplw   r9,r10
    bne-    L024c3f88
    lwz     r3,32(r31)
    cmpwi   r3,0
    beq-    L024c3f78
    lwz     r11,36(r31)
    lwz     r12,464(r3)
    cmplw   r11,r12
    bne-    L024c3f78
    lwz     r0,476(r3)
    cmpwi   r0,0
    ble-    L024c3f78
    bl      ext_027741c0
L024c3f78:
    lwz     r9,108(r31)
    rlwinm  r11,r9,0,30,28
    ori     r10,r11,8
    stw     r10,108(r31)
L024c3f88:
    lwz     r12,128(r30)
    lwz     r31,0(r12)
    cmpwi   r31,0
    beq-    L024c3fe4
    lwz     r11,28(r31)
    lwz     r12,4(r12)
    cmplw   r11,r12
    bne-    L024c3fe4
    lwz     r3,32(r31)
    cmpwi   r3,0
    beq-    L024c3fd4
    lwz     r0,36(r31)
    lwz     r9,464(r3)
    cmplw   r0,r9
    bne-    L024c3fd4
    lwz     r10,476(r3)
    cmpwi   r10,0
    ble-    L024c3fd4
    bl      ext_027741c0
L024c3fd4:
    lwz     r11,108(r31)
    rlwinm  r12,r11,0,30,28
    ori     r12,r12,8
    stw     r12,108(r31)
L024c3fe4:
    lwz     r9,132(r30)
    lwz     r31,0(r9)
    cmpwi   r31,0
    beq-    L024c4040
    lwz     r0,28(r31)
    lwz     r9,4(r9)
    cmplw   r0,r9
    bne-    L024c4040
    lwz     r3,32(r31)
    cmpwi   r3,0
    beq-    L024c4030
    lwz     r10,36(r31)
    lwz     r11,464(r3)
    cmplw   r10,r11
    bne-    L024c4030
    lwz     r12,476(r3)
    cmpwi   r12,0
    ble-    L024c4030
    bl      ext_027741c0
L024c4030:
    lwz     r0,108(r31)
    rlwinm  r0,r0,0,30,28
    ori     r9,r0,8
    stw     r9,108(r31)
L024c4040:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
