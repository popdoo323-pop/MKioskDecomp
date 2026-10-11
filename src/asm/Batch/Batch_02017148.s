# Converted from the disassembly of 0x02017148 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02017148
Batch_02017148:
    mflr    r0
    stw     r0,4(r1)
    mr      r6,r3
    stwu    r1,-8(r1)
    bl      ext_02015fa8
    cmpwi   r3,0
    bne-    L020171bc
    mr      r3,r6
    bl      ext_02015c0c
    bl      ext_02015fe0
    cmpwi   r3,0
    bne-    L020171bc
    lwz     r9,104(r6)
    lwz     r0,80(r9)
    cmpwi   r0,1
    bne-    L020171ac
    lbz     r11,116(r6)
    cmpwi   r11,0
    beq-    L020171bc
    mr      r3,r6
    bl      ext_02016ae4
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L020171ac:
    li      r12,10
    li      r0,1
    stb     r12,64(r6)
    stb     r0,39(r6)
L020171bc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
