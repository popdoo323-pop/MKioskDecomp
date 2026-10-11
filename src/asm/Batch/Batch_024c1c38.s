# Converted from the disassembly of 0x024c1c38 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1c38
Batch_024c1c38:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r9,32(r31)
    lwz     r3,0(r9)
    bl      ext_0247fda0
    cmpwi   r3,0
    beq-    L024c1c7c
    lwz     r12,32(r31)
    lwz     r8,0(r12)
    lwz     r10,4(r8)
    cmpwi   r10,1
    bne-    L024c1c7c
    li      r0,0
    stb     r0,96(r31)
L024c1c7c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
