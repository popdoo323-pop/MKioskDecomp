# Converted from the disassembly of 0x0202ccac (104 bytes). Name is a placeholder.
    .text
    .globl Batch_0202ccac
Batch_0202ccac:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4120
    stw     r0,20(r1)
    lwz     r12,-12856(r12)
    mr      r30,r3
    li      r31,0
    cmpwi   r12,-1
    lwz     r3,8(r30)
    beq-    L0202cce0
    stw     r12,316(r30)
L0202cce0:
    li      r4,100
    bl      ext_02008eb0
    lwz     r0,316(r30)
    cmpw    r3,r0
    bge-    L0202ccf8
    li      r31,1
L0202ccf8:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
