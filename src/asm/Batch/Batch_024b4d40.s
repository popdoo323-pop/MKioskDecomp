# Converted from the disassembly of 0x024b4d40 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024b4d40
Batch_024b4d40:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r5,196(r31)
    cmpwi   r5,0
    beq-    L024b4d98
    lis     r4,4107
    addi    r3,r31,248
    addi    r4,r4,-32164
    bl      ext_020db610
    lis     r4,4107
    addi    r3,r31,292
    lwz     r5,196(r31)
    addi    r4,r4,-32152
    bl      ext_020db610
    lis     r4,4107
    addi    r3,r31,336
    lwz     r5,196(r31)
    addi    r4,r4,-32136
    bl      ext_020db610
L024b4d98:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
