# Converted from the disassembly of 0x024dc030 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc030
Batch_024dc030:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_024dbfc0
    lwz     r0,0(r4)
    stw     r5,24(r3)
    stw     r0,12(r3)
    stw     r6,16(r3)
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
