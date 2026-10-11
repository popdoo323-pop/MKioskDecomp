# Converted from the disassembly of 0x0203c958 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c958
Batch_0203c958:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    addi    r3,r31,36
    stw     r0,20(r1)
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203c9c0
    addi    r3,r1,8
    addi    r4,r31,36
    bl      ext_025a136c
    lwz     r3,8(r1)
    cmpwi   r3,0
    li      r31,-1
    beq-    L0203c9a0
    bl      ext_0259e530
    mr      r31,r3
L0203c9a0:
    addi    r3,r1,8
    bl      ext_025a1488
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L0203c9c0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,-1
    blr
