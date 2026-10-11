# Converted from the disassembly of 0x024d22d4 (344 bytes). Name is a placeholder.
    .text
    .globl Batch_024d22d4
Batch_024d22d4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02480510
    lwz     r3,184(r31)
    cmpwi   r3,0
    beq-    L024d2370
    lbz     r12,2(r3)
    cmpwi   r12,0
    beq-    L024d2370
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r12,32(r31)
    ble-    L024d2328
    lwz     r11,8(r12)
    lwz     r11,4(r11)
    cmpwi   r11,1
    bne-    L024d2358
    b       L024d2338
L024d2328:
    lwz     r11,0(r12)
    lwz     r11,4(r11)
    cmpwi   r11,1
    bne-    L024d2358
L024d2338:
    cmplwi  r0,2
    ble-    L024d2344
    addi    r12,r12,8
L024d2344:
    li      r4,0
    lwz     r3,0(r12)
    li      r6,1
    mr      r5,r4
    bl      ext_0247faa4
L024d2358:
    lwz     r12,92(r31)
    cmpwi   r12,0
    beq-    L024d23d8
    li      r0,0
    stb     r0,7(r12)
    b       L024d23d8
L024d2370:
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r12,32(r31)
    ble-    L024d2394
    lwz     r11,8(r12)
    lwz     r11,4(r11)
    cmpwi   r11,0
    bne-    L024d23c4
    b       L024d23a4
L024d2394:
    lwz     r11,0(r12)
    lwz     r11,4(r11)
    cmpwi   r11,0
    bne-    L024d23c4
L024d23a4:
    cmplwi  r0,2
    ble-    L024d23b0
    addi    r12,r12,8
L024d23b0:
    li      r4,1
    lwz     r3,0(r12)
    li      r5,0
    mr      r6,r4
    bl      ext_0247faa4
L024d23c4:
    lwz     r12,92(r31)
    cmpwi   r12,0
    beq-    L024d23d8
    li      r0,1
    stb     r0,7(r12)
L024d23d8:
    lwz     r3,184(r31)
    cmpwi   r3,0
    beq-    L024d2418
    lbz     r0,3(r3)
    cmpwi   r0,0
    beq-    L024d2418
    lwz     r12,4(r3)
    lwz     r0,52(r12)
    mtctr   r0
    bctrl
    mr      r4,r3
    lwz     r3,176(r31)
    bl      ext_02480bb0
    lwz     r12,184(r31)
    li      r0,0
    stb     r0,3(r12)
L024d2418:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
