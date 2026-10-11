# Converted from the disassembly of 0x02007fbc (212 bytes). Name is a placeholder.
    .text
    .globl Batch_02007fbc
Batch_02007fbc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r31,60(r29)
    lwz     r12,60(r31)
    lbz     r0,53(r12)
    cmpwi   r0,2
    li      r30,0
    bne-    L02008070
    lwz     r3,84(r31)
    bl      ext_02185e5c
    cmpwi   r3,0
    bne-    L02008070
    lwz     r31,60(r29)
    lbz     r11,132(r31)
    cmpwi   r11,0
    bne-    L02008070
    lwz     r3,84(r31)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02008070
    lwz     r3,84(r31)
    bl      ext_02186020
    cmpwi   r3,0
    bne-    L02008070
    lwz     r9,60(r29)
    lwz     r3,84(r9)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L02008070
    lwz     r10,60(r29)
    lwz     r3,84(r10)
    bl      ext_02185db4
    cmpwi   r3,0
    beq-    L02008070
    lwz     r11,64(r29)
    lwz     r12,72(r11)
    lbz     r0,18(r12)
    cmpwi   r0,0
    beq-    L02008070
    li      r30,1
L02008070:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    clrlwi  r3,r30,24
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
