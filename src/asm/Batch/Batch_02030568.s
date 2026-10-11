# Converted from the disassembly of 0x02030568 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_02030568
Batch_02030568:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r12,80(r29)
    cmpwi   r12,0
    beq-    L02030644
    lbz     r0,132(r29)
    cmpwi   r0,0
    mr      r3,r29
    beq-    L020305ac
    bl      ext_02015194
    stw     r3,80(r29)
    b       L02030644
L020305ac:
    bl      ext_020304e0
    not     r12,r3
    addic   r0,r12,-1
    subfe.  r0,r0,r12
    lwz     r30,56(r29)
    bne-    L020305d0
    lbz     r12,188(r30)
    cmpwi   r12,0
    beq-    L020305f4
L020305d0:
    mr      r3,r29
    bl      ext_0203052c
    mr      r5,r3
    lwz     r3,56(r30)
    mr      r4,r29
    li      r6,1
    bl      ext_0202134c
    stw     r3,80(r29)
    b       L02030644
L020305f4:
    lbz     r11,100(r29)
    cmpwi   r11,0
    li      r31,0
    beq-    L02030624
    lwz     r3,84(r29)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L02030620
    lbz     r11,101(r29)
    cmpwi   r11,0
    beq-    L02030624
L02030620:
    li      r31,1
L02030624:
    mr      r3,r29
    bl      ext_0203052c
    mr      r5,r3
    lwz     r3,56(r30)
    clrlwi  r6,r31,24
    mr      r4,r29
    bl      ext_0202134c
    stw     r3,80(r29)
L02030644:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
