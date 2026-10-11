# Converted from the disassembly of 0x024dbc14 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024dbc14
Batch_024dbc14:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    addi    r31,r3,200
    li      r30,4
    stw     r0,20(r1)
L024dbc30:
    lwz     r3,0(r31)
    bl      ext_024804d0
    cmpwi   r3,0
    beq-    L024dbc5c
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,1
    blr
L024dbc5c:
    addic.  r30,r30,-1
    addi    r31,r31,4
    bne+    L024dbc30
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
