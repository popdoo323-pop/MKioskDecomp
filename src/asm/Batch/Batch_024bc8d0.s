# Converted from the disassembly of 0x024bc8d0 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc8d0
Batch_024bc8d0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,64(r31)
    cmpwi   r3,0
    beq-    L024bc8fc
    cmpwi   r4,-1
    beq-    L024bc8fc
    bl      ext_02487350
L024bc8fc:
    lwz     r11,84(r31)
    lwz     r0,252(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    addi    r3,r31,152
    bl      ext_0248ab50
    li      r0,0
    li      r10,2
    sth     r0,220(r31)
    mr      r3,r31
    addi    r4,r1,8
    stw     r10,8(r1)
    bl      ext_024bc5cc
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
