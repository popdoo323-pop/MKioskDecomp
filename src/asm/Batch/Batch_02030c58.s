# Converted from the disassembly of 0x02030c58 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02030c58
Batch_02030c58:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,84(r31)
    bl      ext_02185c90
    cmpwi   r3,0
    bne-    L02030c84
    lwz     r3,60(r31)
    bl      ext_0202e89c
L02030c84:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
