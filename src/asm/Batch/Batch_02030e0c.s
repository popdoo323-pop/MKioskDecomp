# Converted from the disassembly of 0x02030e0c (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02030e0c
Batch_02030e0c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r3,84(r30)
    mr      r31,r4
    bl      ext_02185c90
    cmpwi   r3,0
    beq-    L02030e74
    lwz     r3,84(r31)
    bl      ext_02185c90
    cmpwi   r3,0
    beq-    L02030e74
    mr      r3,r30
    bl      ext_02030378
    mr      r29,r3
    mr      r3,r31
    bl      ext_02030378
    cmpw    r29,r3
    blt-    L02030e6c
    mr      r31,r30
L02030e6c:
    li      r0,0
    stw     r0,140(r31)
L02030e74:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
