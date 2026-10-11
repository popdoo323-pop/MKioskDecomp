# Converted from the disassembly of 0x02033fa4 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_02033fa4
Batch_02033fa4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr.     r29,r3
    mr      r30,r4
    beq-    L0203405c
    lwz     r3,56(r29)
    lis     r0,4096
    li      r31,0
    addic   r0,r0,16912
    cmpwi   r3,0
    stw     r0,0(r29)
    beq-    L02034004
    lis     r6,611
    li      r4,-1
    li      r5,136
    addi    r6,r6,20596
    li      r7,1
    li      r8,0
    bl      ext_0292e5dc
    stw     r31,56(r29)
L02034004:
    lwz     r3,60(r29)
    cmpwi   r3,0
    beq-    L0203401c
    li      r4,3
    bl      ext_0263527c
    stw     r31,60(r29)
L0203401c:
    lwz     r3,64(r29)
    cmpwi   r3,0
    beq-    L02034040
    lwz     r10,0(r3)
    lwz     r11,12(r10)
    mtctr   r11
    li      r4,3
    bctrl
    stw     r31,64(r29)
L02034040:
    mr      r3,r29
    li      r4,0
    bl      ext_02634668
    clrlwi. r0,r30,31
    beq-    L0203405c
    mr      r3,r29
    bl      ext_026014bc
L0203405c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
