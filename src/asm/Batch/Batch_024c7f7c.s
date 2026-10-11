# Converted from the disassembly of 0x024c7f7c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7f7c
Batch_024c7f7c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-16(r1)
    lwz     r3,184(r3)
    cmpwi   r3,0
    beq-    L024c7fbc
    lwz     r12,0(r4)
    lwz     r11,4(r3)
    stw     r12,8(r1)
    lwz     r0,60(r11)
    mtctr   r0
    addi    r4,r1,8
    bctrl
    lis     r3,4107
    addi    r3,r3,-22864
    bl      ext_02045d30
L024c7fbc:
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
