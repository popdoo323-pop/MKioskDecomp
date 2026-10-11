# Converted from the disassembly of 0x024c5e30 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5e30
Batch_024c5e30:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    cmpwi   r4,0
    stb     r4,16(r31)
    bne-    L024c5e94
    lwz     r9,4(r31)
    lwz     r11,28(r9)
    mtctr   r11
    mr      r3,r31
    bctrl
    cmpwi   r3,6
    beq-    L024c5e88
    lwz     r12,4(r31)
    lwz     r0,28(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,7
    bne-    L024c5e94
L024c5e88:
    li      r0,1
    stb     r0,3(r31)
    stb     r0,0(r31)
L024c5e94:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
