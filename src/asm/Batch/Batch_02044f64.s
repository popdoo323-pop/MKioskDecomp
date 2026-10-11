# Converted from the disassembly of 0x02044f64 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_02044f64
Batch_02044f64:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r3
    stw     r31,20(r1)
    stw     r0,28(r1)
    bl      ext_02044ec0
    bl      ext_02044f40
    bl      ext_02044f4c
    bl      ext_02044f58
    lwz     r4,60(r30)
    li      r31,1
    cmpwi   r4,0
    lis     r29,4117
    beq-    L02044fb0
    lwz     r3,9820(r29)
    bl      ext_0261c940
    mr      r31,r3
L02044fb0:
    lwz     r3,28(r30)
    li      r4,1
    lwz     r5,36(r30)
    li      r6,0
    bl      ext_020446a0
    lwz     r3,32(r30)
    li      r4,2
    lwz     r5,40(r30)
    li      r6,0
    bl      ext_020446a0
    lwz     r3,44(r30)
    li      r4,1
    lwz     r5,52(r30)
    li      r6,0
    bl      ext_020446a0
    lwz     r3,48(r30)
    li      r4,2
    lwz     r5,56(r30)
    li      r6,0
    bl      ext_020446a0
    cmpwi   r31,1
    beq-    L02045014
    lwz     r3,9820(r29)
    mr      r4,r31
    bl      ext_0261c940
L02045014:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
