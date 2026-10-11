# Converted from the disassembly of 0x024ebff8 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024ebff8
Batch_024ebff8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r12,128(r31)
    cmpwi   r12,0
    beq-    L024ec05c
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024ec02c
    addi    r12,r12,4
L024ec02c:
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024ec05c
    lwz     r10,32(r31)
    li      r5,0
    li      r4,1
    stb     r5,128(r31)
    lwz     r3,0(r10)
    mr      r6,r4
    bl      ext_0247faa4
L024ec05c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
