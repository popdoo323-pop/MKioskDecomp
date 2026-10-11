# Converted from the disassembly of 0x0200a3dc (48 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a3dc
Batch_0200a3dc:
    mflr    r0
    stw     r0,4(r1)
    li      r3,14324
    stwu    r1,-8(r1)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0200a3fc
    bl      ext_0201f918
L0200a3fc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
