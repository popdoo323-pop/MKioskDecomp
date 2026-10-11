# Converted from the disassembly of 0x02043ebc (48 bytes). Name is a placeholder.
    .text
    .globl Batch_02043ebc
Batch_02043ebc:
    mflr    r0
    stw     r0,4(r1)
    li      r3,116
    stwu    r1,-8(r1)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02043edc
    bl      ext_02056c48
L02043edc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
