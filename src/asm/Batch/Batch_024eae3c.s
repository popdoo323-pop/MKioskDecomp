# Converted from the disassembly of 0x024eae3c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024eae3c
Batch_024eae3c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lbz     r0,664(r3)
    cmpwi   r0,0
    mr      r31,r4
    beq-    L024eae74
    bl      ext_024ae948
    bl      ext_024fb49c
    cmpwi   r3,0
    beq-    L024eae74
    mr      r3,r31
    bl      ext_024dca50
L024eae74:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
