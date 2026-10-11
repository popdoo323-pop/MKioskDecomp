# Converted from the disassembly of 0x020007b4 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_020007b4
Batch_020007b4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,68(r31)
    lwz     r3,84(r12)
    bl      ext_02186104
    cmpwi   r3,0
    li      r30,0
    lwz     r12,68(r31)
    beq-    L0200080c
    lbz     r0,37(r31)
    cmpwi   r0,4
    beq-    L0200080c
    stb     r0,38(r31)
    li      r10,1
    stw     r30,40(r31)
    li      r9,4
    stb     r10,39(r31)
    stb     r9,37(r31)
L0200080c:
    lwz     r3,84(r12)
    bl      ext_02186104
    cmpwi   r3,0
    bne-    L02000840
    lbz     r11,37(r31)
    cmpwi   r11,4
    bne-    L02000840
    stb     r30,37(r31)
    li      r0,1
    stw     r30,40(r31)
    li      r12,4
    stb     r0,39(r31)
    stb     r12,38(r31)
L02000840:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
