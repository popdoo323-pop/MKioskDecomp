# Converted from the disassembly of 0x020212a4 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_020212a4
Batch_020212a4:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02021260
    cmpwi   r3,0
    beq-    L020212d0
    bl      ext_020fe430
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L020212d0:
    bl      ext_020fe084
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
