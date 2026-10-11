# Converted from the disassembly of 0x020271d0 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_020271d0
Batch_020271d0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L02027200
    li      r3,60
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02027278
L02027200:
    lis     r0,4096
    addic.  r29,r31,4
    addic   r0,r0,11140
    li      r30,0
    stw     r0,0(r31)
    bne-    L02027228
    li      r3,36
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0202725c
L02027228:
    mr.     r3,r29
    bne-    L02027240
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202724c
L02027240:
    stw     r30,4(r3)
    stw     r30,0(r3)
    stw     r30,8(r3)
L0202724c:
    li      r4,6
    addi    r5,r29,12
    mr      r3,r29
    bl      ext_02601ad4
L0202725c:
    stw     r30,48(r31)
    mr      r3,r31
    stw     r30,40(r31)
    stw     r30,44(r31)
    stw     r30,56(r31)
    stw     r30,52(r31)
    bl      ext_020271c4
L02027278:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
