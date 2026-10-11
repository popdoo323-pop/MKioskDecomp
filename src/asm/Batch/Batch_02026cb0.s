# Converted from the disassembly of 0x02026cb0 (408 bytes). Name is a placeholder.
    .text
    .globl Batch_02026cb0
Batch_02026cb0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r12,8(r29)
    lwz     r3,0(r12)
    li      r30,0
    bl      ext_02030888
    lwz     r8,0(r29)
    cmplwi  r3,12
    addi    r11,r8,296
    bge-    L02026cf8
    slwi    r9,r3,2
    add     r11,r11,r9
L02026cf8:
    cmplwi  r3,12
    lwz     r28,0(r11)
    addi    r12,r8,344
    bge-    L02026d10
    slwi    r0,r3,2
    add     r12,r12,r0
L02026d10:
    lwz     r3,12(r29)
    li      r4,100
    lwz     r31,0(r12)
    bl      ext_02008eb0
    cmpw    r3,r28
    bge-    L02026df8
    lwz     r11,20(r29)
    lwz     r10,12(r11)
    lwz     r3,12(r29)
    cmpwi   r10,0
    lwz     r31,184(r3)
    beq-    L02026d80
    lwz     r11,0(r10)
    lwz     r12,44(r11)
    mtctr   r12
    mr      r3,r10
    bctrl
    mr      r0,r3
    lwz     r3,12(r29)
    cntlzw  r0,r0
    li      r4,3
    srwi    r29,r0,5
    bl      ext_02008eb0
    cmplwi  r31,1
    clrlwi  r3,r3,24
    blt-    L02026db0
    beq-    L02026dc8
    b       L02026d9c
L02026d80:
    li      r4,3
    li      r29,0
    bl      ext_02008eb0
    cmplwi  r31,1
    clrlwi  r3,r3,24
    blt-    L02026db0
    beq-    L02026dc8
L02026d9c:
    cmplwi  r31,2
    beq-    L02026de0
    cmpwi   r30,0
    blt-    L02026e10
    b       L02026e18
L02026db0:
    cmpwi   r29,0
    li      r30,3
    bne-    L02026e08
    addic.  r30,r3,1
    blt-    L02026e10
    b       L02026e18
L02026dc8:
    cmpwi   r29,0
    li      r30,4
    bne-    L02026e08
    addic.  r30,r3,2
    blt-    L02026e10
    b       L02026e18
L02026de0:
    cmpwi   r29,0
    li      r30,5
    bne-    L02026e08
    addic.  r30,r3,3
    blt-    L02026e10
    b       L02026e18
L02026df8:
    add     r0,r28,r31
    cmpw    r3,r0
    bge-    L02026e08
    li      r30,6
L02026e08:
    cmpwi   r30,0
    bge-    L02026e18
L02026e10:
    li      r3,0
    b       L02026e28
L02026e18:
    cmpwi   r30,6
    ble-    L02026e24
    li      r30,6
L02026e24:
    mr      r3,r30
L02026e28:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
