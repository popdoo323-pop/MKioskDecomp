# Converted from the disassembly of 0x024b7aec (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024b7aec
Batch_024b7aec:
    mflr    r0
    stwu    r1,-72(r1)
    lis     r4,4107
    stw     r31,68(r1)
    mr      r31,r3
    addi    r4,r4,-32044
    stw     r30,64(r1)
    addi    r3,r1,12
    stw     r29,60(r1)
    stw     r0,76(r1)
    crclr   4*cr1+eq
    bl      ext_024bb708
    mr      r4,r3
    lwz     r3,0(r31)
    bl      ext_0272fe8c
    stw     r3,8(r1)
    li      r29,5
    li      r30,0
    stw     r3,56(r31)
L024b7b38:
    lwz     r3,0(r31)
    mr      r5,r30
    li      r4,0
    bl      ext_0272fc84
    addic.  r29,r29,-1
    addi    r30,r30,1
    bne+    L024b7b38
    lwz     r5,64(r31)
    cmpwi   r5,0
    beq-    L024b7b70
    lis     r4,4107
    addi    r3,r31,116
    addi    r4,r4,-32036
    bl      ext_020db610
L024b7b70:
    lwz     r29,60(r1)
    lwz     r0,76(r1)
    lwz     r30,64(r1)
    mtlr    r0
    lwz     r31,68(r1)
    addi    r1,r1,72
    blr
