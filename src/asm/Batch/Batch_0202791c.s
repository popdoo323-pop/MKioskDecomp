# Converted from the disassembly of 0x0202791c (92 bytes). Name is a placeholder.
    .text
    .globl Batch_0202791c
Batch_0202791c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    lis     r12,4120
    stw     r0,20(r1)
    lwz     r12,-13224(r12)
    lwz     r10,52(r31)
    mulli   r0,r12,60
    cmpw    r10,r0
    ble-    L0202795c
    li      r12,0
    mr      r3,r31
    stw     r12,52(r31)
    bl      ext_020276f0
    lwz     r10,52(r31)
L0202795c:
    addi    r0,r10,1
    stw     r0,52(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
