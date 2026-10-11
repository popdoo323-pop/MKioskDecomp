# Converted from the disassembly of 0x02027d98 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02027d98
Batch_02027d98:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,4(r31)
    cmpwi   r0,2
    blt-    L02027e04
    bgt-    L02027dd8
    lwz     r12,12(r31)
    lwz     r4,0(r12)
    lwz     r5,4(r12)
    mr      r3,r31
    bl      ext_020275f4
    b       L02027e04
L02027dd8:
    li      r4,0
    mr      r3,r31
    bl      ext_02027468
    mr      r30,r3
    mr      r3,r31
    mr      r4,r30
    bl      ext_02027468
    mr      r5,r3
    mr      r3,r31
    mr      r4,r30
    bl      ext_020275f4
L02027e04:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
