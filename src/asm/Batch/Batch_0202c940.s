# Converted from the disassembly of 0x0202c940 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c940
Batch_0202c940:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r5
    mr      r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_029aaf98
    lis     r12,4124
    slwi    r0,r3,2
    addi    r12,r12,27408
    cmpwi   r29,0
    lwzx    r6,r12,r0
    beq-    L0202c9bc
    lwz     r3,64(r29)
    li      r5,13
    mr      r4,r29
    bl      ext_02080ad0
    cmpwi   r3,0
    beq-    L0202c9bc
    lis     r10,4120
    lfs     f0,-12888(r10)
    mr      r5,r30
    mr      r4,r29
    mr      r3,r31
    stfs    f0,16(r30)
    bl      ext_0202c8ac
    stw     r3,12(r30)
    b       L0202c9c4
L0202c9bc:
    li      r3,0
    stw     r3,12(r30)
L0202c9c4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
