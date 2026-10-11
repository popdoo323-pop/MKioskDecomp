# Converted from the disassembly of 0x02043e80 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02043e80
Batch_02043e80:
    mflr    r0
    stw     r0,4(r1)
    mr.     r3,r4
    stwu    r1,-8(r1)
    bne-    L02043ea4
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02043eac
L02043ea4:
    li      r0,8
    stw     r0,0(r3)
L02043eac:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
