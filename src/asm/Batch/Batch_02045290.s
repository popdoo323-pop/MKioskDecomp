# Converted from the disassembly of 0x02045290 (276 bytes). Name is a placeholder.
    .text
    .globl Batch_02045290
Batch_02045290:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    mr      r0,r4
    mr.     r4,r5
    stw     r29,12(r1)
    blt-    L02045388
    cmpwi   r4,2
    beq-    L02045388
    li      r6,0
    li      r29,-1
    cmplwi  r4,1
    mr      r31,r6
    blt-    L020452e4
    beq-    L020452fc
    cmplwi  r0,1
    beq-    L02045334
    b       L02045310
L020452e4:
    lwz     r6,64(r30)
    li      r29,3
    cmplwi  r0,1
    lwz     r31,68(r30)
    beq-    L02045334
    b       L02045310
L020452fc:
    lwz     r6,72(r30)
    li      r29,4
    cmplwi  r0,1
    lwz     r31,76(r30)
    beq-    L02045334
L02045310:
    cmplwi  r0,2
    beq-    L02045360
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L02045334:
    lwz     r5,28(r30)
    mr      r3,r30
    bl      ext_02630fc8
    cmpwi   r29,0
    blt-    L02045388
    lwz     r5,44(r30)
    mr      r6,r31
    mr      r4,r29
    mr      r3,r30
    bl      ext_02630fc8
    b       L02045388
L02045360:
    lwz     r5,32(r30)
    mr      r3,r30
    bl      ext_02630fc8
    cmpwi   r29,0
    blt-    L02045388
    lwz     r5,48(r30)
    mr      r6,r31
    mr      r4,r29
    mr      r3,r30
    bl      ext_02630fc8
L02045388:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
