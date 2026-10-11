# Converted from the disassembly of 0x020212e4 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_020212e4
Batch_020212e4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02021260
    cmpwi   r3,0
    beq-    L0202131c
    lwz     r0,20(r1)
    lwz     r3,14320(r31)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0202131c:
    lwz     r0,20(r1)
    lwz     r3,14316(r31)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
