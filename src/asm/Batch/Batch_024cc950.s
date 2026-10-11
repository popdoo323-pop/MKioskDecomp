# Converted from the disassembly of 0x024cc950 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_024cc950
Batch_024cc950:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r30,r5
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    beq-    L024cc998
    stw     r30,324(r31)
    mr      r3,r30
    addi    r4,r30,180
    stw     r31,152(r30)
    bl      ext_02484db0
    addi    r4,r30,244
    mr      r3,r30
    bl      ext_02484db0
L024cc998:
    cmpwi   r29,0
    beq-    L024cc9b8
    addi    r3,r31,396
    mr      r4,r29
    bl      ext_024812b4
    mr      r3,r31
    addi    r4,r31,396
    bl      ext_02484db0
L024cc9b8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
