# Converted from the disassembly of 0x020453d0 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_020453d0
Batch_020453d0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r4
    stw     r31,12(r1)
    mr      r5,r30
    li      r4,0
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020453a4
    mr      r3,r31
    mr      r5,r30
    li      r4,1
    bl      ext_020453a4
    mr      r3,r31
    mr      r5,r30
    li      r4,3
    bl      ext_020453a4
    mr      r3,r31
    mr      r5,r30
    li      r4,4
    bl      ext_020453a4
    li      r4,2
    addi    r3,r31,90
    bl      ext_029a9a78
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
