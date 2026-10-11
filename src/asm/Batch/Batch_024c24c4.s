# Converted from the disassembly of 0x024c24c4 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c24c4
Batch_024c24c4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    li      r31,0
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_024804d0
    cmpwi   r3,0
    beq-    L024c2504
    lwz     r4,96(r30)
    mr      r3,r30
    bl      ext_024804f8
    cmpwi   r3,0
    beq-    L024c2504
    li      r31,1
L024c2504:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
