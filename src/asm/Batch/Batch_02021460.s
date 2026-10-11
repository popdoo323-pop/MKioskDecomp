# Converted from the disassembly of 0x02021460 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_02021460
Batch_02021460:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02021260
    cmpwi   r3,0
    beq-    L02021498
    lwz     r0,20(r1)
    addi    r3,r31,14236
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02021498:
    lwz     r0,20(r1)
    addi    r3,r31,14156
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
