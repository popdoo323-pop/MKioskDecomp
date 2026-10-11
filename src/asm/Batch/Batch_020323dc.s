# Converted from the disassembly of 0x020323dc (144 bytes). Name is a placeholder.
    .text
    .globl Batch_020323dc
Batch_020323dc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr.     r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bne-    L02032410
    li      r3,120
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203244c
L02032410:
    mr      r3,r31
    addi    r4,r31,12
    bl      ext_02054620
    li      r30,0
    addi    r3,r31,12
    stw     r30,8(r31)
    bl      ext_02591e24
    mr      r3,r30
    li      r4,5
    mr      r5,r3
    bl      ext_0205d108
    stw     r3,8(r31)
    addi    r3,r31,12
    mr      r4,r29
    bl      ext_02591cb8
L0203244c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
