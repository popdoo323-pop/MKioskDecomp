# Converted from the disassembly of 0x02016050 (144 bytes). Name is a placeholder.
    .text
    .globl Batch_02016050
Batch_02016050:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,84(r30)
    li      r31,0
    bl      ext_020071d4
    cmpwi   r3,0
    bne-    L020160c4
    lwz     r0,112(r30)
    cmpwi   r0,0
    beq-    L02016090
    cmpwi   r0,3
    bne-    L020160c4
L02016090:
    mr      r3,r30
    bl      ext_02015fa8
    cmpwi   r3,0
    bne-    L020160c4
    mr      r3,r30
    bl      ext_02015fe0
    cmpwi   r3,0
    bne-    L020160c4
    mr      r3,r30
    bl      ext_0201601c
    cmpwi   r3,0
    bne-    L020160c4
    li      r31,1
L020160c4:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
