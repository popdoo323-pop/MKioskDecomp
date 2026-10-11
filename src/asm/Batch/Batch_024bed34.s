# Converted from the disassembly of 0x024bed34 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024bed34
Batch_024bed34:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r0,28(r3)
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024bed58
    addi    r12,r12,4
L024bed58:
    lwz     r31,0(r12)
    li      r4,0
    mr      r3,r31
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r31
    bl      ext_0247f968
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
