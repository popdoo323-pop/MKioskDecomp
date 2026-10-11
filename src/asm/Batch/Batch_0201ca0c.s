# Converted from the disassembly of 0x0201ca0c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_0201ca0c
Batch_0201ca0c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    mr.     r3,r4
    stw     r5,0(r31)
    bne-    L0201ca3c
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0201ca44
L0201ca3c:
    lwz     r0,0(r31)
    stw     r0,0(r3)
L0201ca44:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
