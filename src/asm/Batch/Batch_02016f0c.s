# Converted from the disassembly of 0x02016f0c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_02016f0c
Batch_02016f0c:
    mflr    r0
    stw     r0,4(r1)
    mr      r9,r3
    stwu    r1,-16(r1)
    lwz     r10,104(r9)
    lwz     r11,68(r10)
    cmpwi   r11,-1
    beq-    L02016f68
    lbz     r12,116(r9)
    cmpwi   r12,0
    beq-    L02016f78
    mr      r3,r9
    bl      ext_02015c0c
    lwz     r12,104(r9)
    lwz     r0,68(r12)
    addi    r3,r1,8
    stw     r0,8(r1)
    bl      ext_02016110
    cmpwi   r3,0
    bne-    L02016f78
    lwz     r0,72(r12)
    cmpwi   r0,1
    bne-    L02016f78
L02016f68:
    li      r8,0
    li      r10,1
    stb     r8,64(r9)
    stb     r10,39(r9)
L02016f78:
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
