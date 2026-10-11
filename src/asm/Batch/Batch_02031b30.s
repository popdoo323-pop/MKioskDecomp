# Converted from the disassembly of 0x02031b30 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_02031b30
Batch_02031b30:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lbz     r12,132(r29)
    cmpwi   r12,0
    li      r3,0
    beq-    L02031ba8
    mr      r3,r29
    bl      ext_02031a88
    mr      r30,r3
    lwz     r3,84(r29)
    li      r31,1
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02031b90
    lwz     r3,84(r29)
    bl      ext_02186020
    cmpwi   r3,0
    bne-    L02031b90
    li      r31,0
L02031b90:
    clrlwi  r31,r31,24
    or.     r0,r30,r31
    li      r3,1
    bne-    L02031ba4
    mr      r3,r31
L02031ba4:
    clrlwi  r3,r3,24
L02031ba8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
