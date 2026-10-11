# Converted from the disassembly of 0x02016dc4 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_02016dc4
Batch_02016dc4:
    mflr    r0
    stw     r0,4(r1)
    mr      r10,r3
    stwu    r1,-8(r1)
    bl      ext_0201601c
    cmpwi   r3,0
    bne-    L02016e24
    lwz     r11,104(r10)
    lwz     r12,80(r11)
    cmpwi   r12,2
    bne-    L02016e14
    lbz     r0,116(r10)
    cmpwi   r0,0
    beq-    L02016e24
    mr      r3,r10
    bl      ext_02016ae4
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016e14:
    li      r12,0
    li      r0,1
    stb     r12,64(r10)
    stb     r0,39(r10)
L02016e24:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
