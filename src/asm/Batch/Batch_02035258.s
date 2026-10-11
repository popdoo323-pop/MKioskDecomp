# Converted from the disassembly of 0x02035258 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02035258
Batch_02035258:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02634808
    lwz     r4,64(r31)
    lwz     r3,12(r31)
    bl      ext_02591bf8
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
