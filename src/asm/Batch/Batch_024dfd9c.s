# Converted from the disassembly of 0x024dfd9c (252 bytes). Name is a placeholder.
    .text
    .globl Batch_024dfd9c
Batch_024dfd9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,200(r31)
    li      r4,0
    bl      ext_02480634
    lwz     r3,204(r31)
    li      r4,0
    bl      ext_02480634
    lwz     r3,208(r31)
    li      r4,0
    bl      ext_02480634
    lwz     r0,212(r31)
    cmplwi  r0,2
    ble-    L024dfdf8
    cmplwi  r0,4
    blt-    L024dfe1c
    cmplwi  r0,6
    ble-    L024dfdf8
    cmplwi  r0,9
    bne-    L024dfe1c
L024dfdf8:
    lwz     r3,200(r31)
    li      r4,1
    bl      ext_02480634
    lwz     r3,200(r31)
    lwz     r11,84(r3)
    lwz     r12,100(r11)
    mtctr   r12
    bctrl
    lwz     r0,212(r31)
L024dfe1c:
    cmplwi  r0,1
    ble-    L024dfe44
    cmplwi  r0,3
    blt-    L024dfe68
    cmplwi  r0,5
    ble-    L024dfe44
    cmplwi  r0,7
    beq-    L024dfe44
    cmplwi  r0,9
    bne-    L024dfe68
L024dfe44:
    lwz     r3,204(r31)
    li      r4,1
    bl      ext_02480634
    lwz     r3,204(r31)
    lwz     r9,84(r3)
    lwz     r10,100(r9)
    mtctr   r10
    bctrl
    lwz     r0,212(r31)
L024dfe68:
    cmpwi   r0,8
    bne-    L024dfe84
    lwz     r3,208(r31)
    li      r4,1
    bl      ext_02480634
    lwz     r3,208(r31)
    bl      ext_024c542c
L024dfe84:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
