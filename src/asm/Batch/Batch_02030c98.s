# Converted from the disassembly of 0x02030c98 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02030c98
Batch_02030c98:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    li      r12,0
    stw     r0,20(r1)
    mr      r30,r4
    stb     r12,132(r3)
    bl      ext_02030568
    lwz     r3,68(r31)
    bl      ext_0201eef4
    lwz     r3,64(r31)
    bl      ext_0200713c
    lwz     r3,84(r31)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L02030cf4
    lbz     r0,101(r31)
    cmpwi   r0,0
    bne-    L02030cf4
    mr      r3,r31
    bl      ext_02030c58
L02030cf4:
    cmpwi   r30,0
    beq-    L02030d04
    lwz     r3,88(r31)
    bl      ext_021b50f4
L02030d04:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
