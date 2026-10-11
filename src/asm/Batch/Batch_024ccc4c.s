# Converted from the disassembly of 0x024ccc4c (208 bytes). Name is a placeholder.
    .text
    .globl Batch_024ccc4c
Batch_024ccc4c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,104(r31)
    cmpwi   r0,0
    mr      r30,r4
    beq-    L024ccd04
    lwz     r10,108(r31)
    cmpwi   r10,0
    beq-    L024ccd04
    lwz     r3,460(r31)
    cmpwi   r3,0
    beq-    L024ccd04
    lwz     r4,168(r31)
    bl      ext_0248df08
    cmpwi   r3,0
    beq-    L024ccd04
    lwz     r0,0(r30)
    addi    r11,r31,348
    cmplw   r0,r11
    bne-    L024cccdc
    lwz     r12,84(r31)
    lwz     r0,116(r12)
    mtctr   r0
    mr      r3,r31
    mr      r4,r30
    bctrl
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024cccdc:
    addi    r10,r31,396
    cmplw   r0,r10
    bne-    L024ccd04
    lwz     r12,84(r31)
    lwz     r0,124(r12)
    mtctr   r0
    mr      r3,r31
    mr      r4,r30
    li      r5,0
    bctrl
L024ccd04:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
