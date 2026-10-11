# Converted from the disassembly of 0x0203e59c (184 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e59c
Batch_0203e59c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203d410
    lis     r12,4117
    lwz     r12,-5364(r12)
    lwz     r7,64(r12)
    lwz     r8,20(r7)
    cmpwi   r8,0
    lwz     r10,192(r3)
    beq-    L0203e608
    lwz     r12,64(r7)
    cmpwi   r12,0
    beq-    L0203e608
    cmpwi   r10,0
    blt-    L0203e608
    lhz     r9,120(r7)
    cmpw    r10,r9
    bge-    L0203e608
    lwz     r0,224(r31)
    mulli   r10,r10,20
    cmpwi   r0,0
    add     r6,r12,r10
    beq-    L0203e640
    b       L0203e618
L0203e608:
    lwz     r0,224(r31)
    cmpwi   r0,0
    addi    r6,r7,396
    beq-    L0203e640
L0203e618:
    lwz     r4,0(r6)
    lwz     r3,40(r31)
    bl      ext_02051068
    li      r0,-1
    mr      r4,r3
    lwz     r3,224(r31)
    li      r5,0
    addi    r6,r1,8
    stw     r0,8(r1)
    bl      ext_0204040c
L0203e640:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
