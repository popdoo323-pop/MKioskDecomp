# Converted from the disassembly of 0x02044010 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02044010
Batch_02044010:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,0(r31)
    lwz     r0,20(r12)
    slwi    r11,r0,2
    li      r5,4
    lwzx    r4,r11,r12
    li      r3,208
    bl      ext_026015cc
    cmpwi   r3,0
    beq-    L02044050
    mr      r4,r31
    bl      ext_0262dc44
L02044050:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
