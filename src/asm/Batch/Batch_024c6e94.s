# Converted from the disassembly of 0x024c6e94 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6e94
Batch_024c6e94:
    mflr    r0
    stw     r0,4(r1)
    mr      r10,r3
    stwu    r1,-8(r1)
    bl      ext_024c5bdc
    cmpwi   r3,0
    bne-    L024c6ecc
    lbz     r0,16(r10)
    cmpwi   r0,0
    beq-    L024c6ee0
    mr      r3,r10
    bl      ext_024c6e74
    cmpwi   r3,0
    beq-    L024c6ee0
L024c6ecc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,1
    blr
L024c6ee0:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
