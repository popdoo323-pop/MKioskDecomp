# Converted from the disassembly of 0x0202e95c (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e95c
Batch_0202e95c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r31,80(r30)
    lwz     r3,84(r31)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L0202e994
    lbz     r12,101(r31)
    cmpwi   r12,0
    beq-    L0202e9b4
L0202e994:
    bl      ext_02015614
    cmpwi   r3,0
    beq-    L0202e9b4
    bl      ext_02398bd8
    cmpwi   r3,0
    beq-    L0202e9b4
    lwz     r3,88(r30)
    bl      ext_02007040
L0202e9b4:
    li      r0,0
    stw     r0,108(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
