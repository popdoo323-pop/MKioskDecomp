# Converted from the disassembly of 0x024bc240 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc240
Batch_024bc240:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bc26c
    addi    r12,r12,4
L024bc26c:
    lwz     r30,0(r12)
    mr      r3,r30
    bl      ext_0247fda0
    cmpwi   r3,0
    beq-    L024bc2a0
    lwz     r10,4(r30)
    cmpwi   r10,0
    bne-    L024bc2a0
    lwz     r11,84(r31)
    lwz     r12,228(r11)
    mtctr   r12
    mr      r3,r31
    bctrl
L024bc2a0:
    lhz     r11,220(r31)
    cmpwi   r11,0
    beq-    L024bc2c0
    lhz     r0,222(r31)
    cmpwi   r0,0
    beq-    L024bc2c0
    addi    r0,r11,-1
    sth     r0,220(r31)
L024bc2c0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
