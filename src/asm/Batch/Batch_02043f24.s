# Converted from the disassembly of 0x02043f24 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_02043f24
Batch_02043f24:
    mflr    r0
    stw     r0,4(r1)
    li      r3,112
    stwu    r1,-8(r1)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02043f44
    bl      ext_02055438
L02043f44:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
