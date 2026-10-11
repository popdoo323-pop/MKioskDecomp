# Converted from the disassembly of 0x02038c40 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02038c40
Batch_02038c40:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r12,548(r31)
    cmpwi   r12,0
    bne-    L02038c74
    lwz     r0,28(r31)
    cmpwi   r0,0
    beq-    L02038cd8
    mr      r3,r31
    bl      ext_02038994
L02038c74:
    lbz     r0,551(r31)
    cmpwi   r0,0
    beq-    L02038c9c
    li      r0,0
    stb     r0,551(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02038c9c:
    mr      r3,r31
    bl      ext_026327d0
    bl      ext_02041f68
    bl      ext_02042c94
    bl      ext_02041f68
    bl      ext_020427dc
    bl      ext_02035290
    bl      ext_02041f68
    bl      ext_020428ec
    bl      ext_0203c7f8
    bl      ext_02041f68
    bl      ext_020428f4
    bl      ext_02033210
    mr      r3,r31
    bl      ext_02038ad4
L02038cd8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
