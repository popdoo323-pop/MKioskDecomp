# Converted from the disassembly of 0x020327ac (196 bytes). Name is a placeholder.
    .text
    .globl Batch_020327ac
Batch_020327ac:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r5
    stw     r6,8(r1)
    stw     r30,16(r1)
    mr      r30,r4
    li      r5,0
    addi    r6,r1,8
    stw     r0,28(r1)
    lwz     r3,4(r3)
    mr      r4,r31
    bl      ext_02052e2c
    lwz     r12,8(r1)
    rlwinm. r10,r12,0,22,22
    beq-    L02032814
    lwz     r0,0(r30)
    cmpwi   r0,0
    beq-    L02032858
    lwz     r3,0(r30)
    li      r4,32
    bl      ext_02587e90
    lwz     r0,0(r30)
    cmpwi   r0,0
    bne-    L02032844
    b       L02032858
L02032814:
    bl      ext_02041f68
    bl      ext_02042904
    mr      r4,r31
    bl      ext_02052d4c
    bl      ext_02045bd4
    cmpwi   r3,0
    beq-    L02032838
    cmpwi   r3,3
    bne-    L02032858
L02032838:
    lwz     r0,0(r30)
    cmpwi   r0,0
    beq-    L02032858
L02032844:
    lis     r9,4096
    lwz     r3,0(r30)
    lfs     f1,16512(r9)
    li      r4,1
    bl      ext_02588170
L02032858:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
