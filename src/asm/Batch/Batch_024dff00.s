# Converted from the disassembly of 0x024dff00 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_024dff00
Batch_024dff00:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,212(r31)
    cmplwi  r0,2
    ble-    L024dff38
    cmplwi  r0,4
    blt-    L024dff50
    cmplwi  r0,6
    ble-    L024dff38
    cmplwi  r0,9
    bne-    L024dff50
L024dff38:
    lwz     r3,200(r31)
    lwz     r10,84(r3)
    lwz     r11,108(r10)
    mtctr   r11
    bctrl
    lwz     r0,212(r31)
L024dff50:
    cmplwi  r0,1
    ble-    L024dff78
    cmplwi  r0,3
    blt-    L024dff90
    cmplwi  r0,5
    ble-    L024dff78
    cmplwi  r0,7
    beq-    L024dff78
    cmplwi  r0,9
    bne-    L024dff90
L024dff78:
    lwz     r3,204(r31)
    lwz     r12,84(r3)
    lwz     r9,108(r12)
    mtctr   r9
    bctrl
    lwz     r0,212(r31)
L024dff90:
    cmpwi   r0,8
    bne-    L024dffa0
    lwz     r3,208(r31)
    bl      ext_024c549c
L024dffa0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
