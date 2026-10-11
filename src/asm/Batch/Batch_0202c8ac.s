# Converted from the disassembly of 0x0202c8ac (148 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c8ac
Batch_0202c8ac:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r5
    li      r31,0
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r3
    bl      ext_0202c6bc
    cmpwi   r3,0
    beq-    L0202c8e4
    li      r3,1
    b       L0202c924
L0202c8e4:
    lwz     r0,36(r29)
    cmpwi   r0,0
    beq-    L0202c904
    mr      r3,r29
    mr      r4,r30
    bl      ext_0202c754
    li      r3,2
    b       L0202c924
L0202c904:
    lwz     r0,176(r29)
    cmpwi   r0,0
    beq-    L0202c920
    mr      r3,r29
    mr      r4,r30
    bl      ext_0202c808
    li      r31,2
L0202c920:
    mr      r3,r31
L0202c924:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
