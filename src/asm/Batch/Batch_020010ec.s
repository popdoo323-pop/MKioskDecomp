# Converted from the disassembly of 0x020010ec (136 bytes). Name is a placeholder.
    .text
    .globl Batch_020010ec
Batch_020010ec:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,128(r31)
    cmpwi   r3,0
    li      r30,0
    beq-    L02001158
    bl      ext_0225f5a0
    bl      ext_020152b0
    cmpwi   r3,0
    beq-    L02001158
    lwz     r3,100(r31)
    lwz     r0,68(r3)
    cmpwi   r0,-1
    bne-    L02001154
    lwz     r0,80(r3)
    cmpwi   r0,1
    beq-    L02001154
    cmpwi   r0,2
    beq-    L02001154
    bl      ext_02158e84
    cmpwi   r3,0
    beq-    L02001158
L02001154:
    li      r30,1
L02001158:
    lwz     r0,20(r1)
    clrlwi  r3,r30,24
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
