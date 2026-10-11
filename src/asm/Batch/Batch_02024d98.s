# Converted from the disassembly of 0x02024d98 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02024d98
Batch_02024d98:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r12,0(r3)
    mr      r3,r4
    lhz     r4,132(r12)
    bl      ext_020fecf4
    lwz     r0,32(r3)
    cmpwi   r0,0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
