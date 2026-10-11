# Converted from the disassembly of 0x024c59a0 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_024c59a0
Batch_024c59a0:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024c59c4
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024c59e8
L024c59c4:
    lis     r0,4107
    li      r12,0
    addic   r0,r0,-22776
    stb     r12,0(r3)
    li      r10,1
    stw     r0,4(r3)
    stb     r10,2(r3)
    stb     r10,1(r3)
    stb     r12,3(r3)
L024c59e8:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
