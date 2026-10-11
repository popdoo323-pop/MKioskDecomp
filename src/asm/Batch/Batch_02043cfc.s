# Converted from the disassembly of 0x02043cfc (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02043cfc
Batch_02043cfc:
    mflr    r0
    stw     r0,4(r1)
    mr.     r3,r4
    stwu    r1,-8(r1)
    bne-    L02043d20
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02043d28
L02043d20:
    li      r0,8
    stw     r0,0(r3)
L02043d28:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
