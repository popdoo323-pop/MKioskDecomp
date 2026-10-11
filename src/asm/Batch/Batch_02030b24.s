# Converted from the disassembly of 0x02030b24 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02030b24
Batch_02030b24:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,84(r31)
    bl      ext_02185bf0
    cmpwi   r3,0
    beq-    L02030b50
    lwz     r3,60(r31)
    bl      ext_0202e7c0
L02030b50:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
