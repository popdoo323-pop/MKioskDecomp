# Converted from the disassembly of 0x0202fc20 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0202fc20
Batch_0202fc20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0202f7b4
    cmpwi   r3,0
    beq-    L0202fc48
    mr      r3,r31
    bl      ext_0202f8ec
L0202fc48:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
