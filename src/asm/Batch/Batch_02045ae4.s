# Converted from the disassembly of 0x02045ae4 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02045ae4
Batch_02045ae4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    li      r3,-1
    stw     r0,20(r1)
    beq-    L02045b0c
    bl      ext_02045abc
    mr      r4,r31
    bl      ext_02592294
L02045b0c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
