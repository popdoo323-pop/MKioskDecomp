# Converted from the disassembly of 0x020283ac (80 bytes). Name is a placeholder.
    .text
    .globl Batch_020283ac
Batch_020283ac:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,20(r31)
    cmpwi   r12,0
    beq-    L020283e8
    lbz     r0,62(r12)
    cmpwi   r0,0
    beq-    L020283e8
    lwz     r3,8(r31)
    bl      ext_02030888
    stw     r3,28(r31)
    stw     r3,24(r31)
L020283e8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
