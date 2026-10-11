# Converted from the disassembly of 0x0203c7f8 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c7f8
Batch_0203c7f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02041f68
    lwz     r0,344(r3)
    cmpwi   r0,0
    bne-    L0203c860
    mr      r3,r31
    bl      ext_0203c63c
    mr      r3,r31
    bl      ext_0203c710
    addi    r3,r31,36
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203c860
    addi    r3,r1,8
    addi    r4,r31,36
    bl      ext_025a136c
    lwz     r3,8(r1)
    cmpwi   r3,0
    beq-    L0203c858
    bl      ext_0259e404
L0203c858:
    addi    r3,r1,8
    bl      ext_025a1488
L0203c860:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
