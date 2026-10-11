# Converted from the disassembly of 0x0202134c (276 bytes). Name is a placeholder.
    .text
    .globl Batch_0202134c
Batch_0202134c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    mr      r31,r6
    mr      r30,r5
    mr      r28,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_020150ac
    cmpwi   r31,0
    beq-    L020213b0
    mr      r5,r30
    li      r4,11
    mr      r3,r28
    bl      ext_02021334
    mr      r31,r3
    mr      r3,r28
    mr      r4,r29
    bl      ext_02021260
    cmpwi   r3,0
    beq-    L02021424
    b       L020213e8
L020213b0:
    lwz     r9,172(r3)
    cmpwi   r9,0
    bgt-    L020213c0
    li      r9,1
L020213c0:
    mr      r5,r30
    addi    r4,r9,-1
    mr      r3,r28
    bl      ext_02021334
    mr      r31,r3
    mr      r3,r28
    mr      r4,r29
    bl      ext_02021260
    cmpwi   r3,0
    beq-    L02021424
L020213e8:
    lwz     r10,96(r28)
    cmplw   r31,r10
    li      r3,0
    bge-    L02021404
    lwz     r12,104(r28)
    slwi    r11,r31,2
    lwzx    r3,r11,r12
L02021404:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L02021424:
    lwz     r0,36(r28)
    cmplw   r31,r0
    li      r3,0
    bge-    L02021440
    lwz     r0,44(r28)
    slwi    r12,r31,2
    lwzx    r3,r12,r0
L02021440:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
