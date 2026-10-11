# Converted from the disassembly of 0x02015f24 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02015f24
Batch_02015f24:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-16(r1)
    lwz     r12,104(r3)
    lwz     r9,80(r12)
    li      r10,1
    cmpwi   r9,1
    li      r0,0
    beq-    L02015f54
    cmpwi   r9,2
    beq-    L02015f54
    li      r10,0
L02015f54:
    clrlwi. r10,r10,24
    beq-    L02015f74
    lwz     r8,76(r12)
    addi    r4,r1,8
    stw     r8,8(r1)
    bl      ext_02015ea8
    mr      r0,r3
    b       L02015f94
L02015f74:
    lwz     r11,68(r12)
    cmpwi   r11,-1
    beq-    L02015f94
    lwz     r9,68(r12)
    addi    r4,r1,12
    stw     r9,12(r1)
    bl      ext_02015ea8
    mr      r0,r3
L02015f94:
    mr      r3,r0
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
