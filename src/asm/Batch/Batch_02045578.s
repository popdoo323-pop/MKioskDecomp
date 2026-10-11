# Converted from the disassembly of 0x02045578 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02045578
Batch_02045578:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r4,0
    stwu    r1,-8(r1)
    stw     r4,84(r3)
    beq-    L020455bc
    lwz     r5,40(r3)
    bl      ext_02045554
    lwz     r5,56(r3)
    bl      ext_02045554
    li      r4,1
    bl      ext_020454e8
    li      r4,4
    bl      ext_020454e8
    addi    r3,r3,88
    li      r4,2
    bl      ext_029a9a78
L020455bc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
