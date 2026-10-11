# Converted from the disassembly of 0x0200122c (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0200122c
Batch_0200122c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r4
    stw     r0,20(r1)
    lwz     r3,84(r30)
    li      r31,1
    bl      ext_02185e5c
    cmpwi   r3,0
    bne-    L020012a8
    lbz     r0,132(r30)
    cmpwi   r0,0
    bne-    L020012a8
    lwz     r3,84(r30)
    bl      ext_021860b8
    cmpwi   r3,0
    bne-    L020012a8
    lwz     r3,84(r30)
    bl      ext_0218611c
    cmpwi   r3,0
    bne-    L020012a8
    lwz     r3,84(r30)
    bl      ext_02186138
    cmpwi   r3,0
    bne-    L020012a8
    lwz     r3,84(r30)
    bl      ext_021861fc
    cmpwi   r3,0
    bne-    L020012a8
    li      r31,0
L020012a8:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
