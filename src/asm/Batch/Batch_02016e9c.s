# Converted from the disassembly of 0x02016e9c (112 bytes). Name is a placeholder.
    .text
    .globl Batch_02016e9c
Batch_02016e9c:
    mflr    r0
    stw     r0,4(r1)
    mr      r11,r3
    stwu    r1,-8(r1)
    bl      ext_02015fa8
    cmpwi   r3,0
    bne-    L02016efc
    lwz     r12,104(r11)
    lwz     r12,68(r12)
    cmpwi   r12,-1
    beq-    L02016eec
    lbz     r0,116(r11)
    cmpwi   r0,0
    beq-    L02016efc
    mr      r3,r11
    bl      ext_02016ae4
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L02016eec:
    li      r0,0
    li      r12,1
    stb     r0,64(r11)
    stb     r12,39(r11)
L02016efc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
