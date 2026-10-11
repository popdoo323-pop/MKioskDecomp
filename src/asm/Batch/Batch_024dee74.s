# Converted from the disassembly of 0x024dee74 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_024dee74
Batch_024dee74:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r0,1472(r31)
    cmpwi   r0,0
    li      r30,0
    beq-    L024deeb8
    stb     r30,1472(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024deeb8:
    lwz     r12,212(r31)
    cmpwi   r12,6
    bne-    L024deecc
    lwz     r3,1400(r31)
    bl      ext_024c3eb8
L024deecc:
    lwz     r0,256(r31)
    cmpwi   r0,6
    bne-    L024deef4
    stw     r30,128(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024deef4:
    addi    r3,r31,200
    bl      ext_024dc060
    cmpwi   r3,0
    beq-    L024def28
    mr      r4,r31
    bl      ext_0248e338
    addi    r3,r31,200
    bl      ext_024dc060
    lwz     r12,196(r3)
    lwz     r11,212(r12)
    mtctr   r11
    mr      r4,r31
    bctrl
L024def28:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
