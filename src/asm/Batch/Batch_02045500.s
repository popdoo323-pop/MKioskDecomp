# Converted from the disassembly of 0x02045500 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02045500
Batch_02045500:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r4,0
    stwu    r1,-8(r1)
    stw     r4,80(r3)
    beq-    L02045544
    lwz     r5,36(r3)
    bl      ext_0204549c
    lwz     r5,52(r3)
    bl      ext_0204549c
    li      r4,0
    bl      ext_020454e8
    li      r4,3
    bl      ext_020454e8
    addi    r3,r3,88
    li      r4,2
    bl      ext_029a9a78
L02045544:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
