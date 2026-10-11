# Converted from the disassembly of 0x024cdec0 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_024cdec0
Batch_024cdec0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,88(r31)
    lwz     r0,460(r11)
    cmpwi   r0,0
    mr      r30,r4
    beq-    L024cdf1c
    lwz     r3,460(r11)
    lwz     r4,168(r11)
    bl      ext_0248df08
    cmpwi   r3,0
    beq-    L024cdf1c
    lwz     r3,88(r31)
    lwz     r12,84(r3)
    lwz     r0,124(r12)
    mtctr   r0
    mr      r4,r30
    mr      r5,r31
    bctrl
L024cdf1c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
