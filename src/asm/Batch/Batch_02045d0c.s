# Converted from the disassembly of 0x02045d0c (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02045d0c
Batch_02045d0c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02041f68
    bl      ext_020428f4
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
