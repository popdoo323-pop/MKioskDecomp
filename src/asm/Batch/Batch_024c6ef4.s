# Converted from the disassembly of 0x024c6ef4 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6ef4
Batch_024c6ef4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    cmpwi   r4,0
    stb     r4,16(r31)
    beq-    L024c6f4c
    lwz     r11,4(r31)
    lwz     r12,28(r11)
    mtctr   r12
    mr      r3,r31
    bctrl
    mr      r4,r3
    mr      r3,r31
    bl      ext_024c6e74
    cmpwi   r3,0
    beq-    L024c6f4c
    li      r0,2
    li      r10,1
    stb     r0,0(r31)
    stb     r10,3(r31)
L024c6f4c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
