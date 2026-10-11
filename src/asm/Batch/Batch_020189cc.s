# Converted from the disassembly of 0x020189cc (188 bytes). Name is a placeholder.
    .text
    .globl Batch_020189cc
Batch_020189cc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r3,72(r30)
    bl      ext_02030888
    cmpwi   r3,0
    bne-    L020189fc
    li      r3,2
    b       L02018a70
L020189fc:
    lwz     r12,164(r30)
    addi    r0,r12,-1
    cmplw   r3,r0
    bne-    L02018a14
    li      r3,1
    b       L02018a70
L02018a14:
    lwz     r3,88(r30)
    li      r4,100
    bl      ext_02008eb0
    mr      r3,r30
    bl      ext_020161b8
    cmpwi   r3,0
    bne-    L02018a68
    li      r6,0
    mr      r3,r30
    addi    r4,r1,8
    li      r5,1
    stw     r6,8(r1)
    bl      ext_020164c0
    mr      r31,r3
    lwz     r3,88(r30)
    li      r4,100
    bl      ext_02008eb0
    lwz     r12,92(r30)
    lwz     r0,284(r12)
    cmpw    r3,r0
    blt-    L02018a6c
L02018a68:
    li      r31,0
L02018a6c:
    mr      r3,r31
L02018a70:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
