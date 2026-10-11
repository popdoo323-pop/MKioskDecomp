# Converted from the disassembly of 0x02044170 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02044170
Batch_02044170:
    mflr    r0
    stw     r0,4(r1)
    mr      r7,r3
    stwu    r1,-8(r1)
    bl      ext_020440a8
    cmpwi   r3,0
    beq-    L020441a8
    lwz     r12,12(r7)
    cmpwi   r12,0
    beq-    L020441a0
    li      r10,1
    stb     r10,0(r12)
L020441a0:
    li      r0,1
    stb     r0,8(r7)
L020441a8:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
