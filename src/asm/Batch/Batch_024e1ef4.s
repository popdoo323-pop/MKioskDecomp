# Converted from the disassembly of 0x024e1ef4 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024e1ef4
Batch_024e1ef4:
L024e1ef4:
    mflr    r0
    stw     r0,4(r1)
    lis     r8,4119
    stwu    r1,-8(r1)
    lwzu    r9,27208(r8)
    lis     r12,4119
    cmpwi   r9,0
    addi    r12,r12,28424
    bne-    L024e1f2c
    lis     r10,4107
    li      r0,1
    addi    r10,r10,-12216
    stw     r0,0(r8)
    stw     r10,0(r12)
L024e1f2c:
    cmplw   r3,r12
    li      r0,1
    beq-    L024e1f40
    bl      L024e1ef4
    mr      r0,r3
L024e1f40:
    clrlwi  r3,r0,24
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
