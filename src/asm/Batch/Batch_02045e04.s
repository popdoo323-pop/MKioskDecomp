# Converted from the disassembly of 0x02045e04 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_02045e04
Batch_02045e04:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_02045d0c
    mr      r4,r30
    bl      ext_02032a28
    cmpwi   r3,0
    beq-    L02045e58
    mr      r4,r31
    bl      ext_02045da8
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,1
    blr
L02045e58:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
