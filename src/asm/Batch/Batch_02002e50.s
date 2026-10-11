# Converted from the disassembly of 0x02002e50 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_02002e50
Batch_02002e50:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,68(r31)
    lwz     r3,84(r11)
    mr      r30,r4
    bl      ext_02185c14
    cmpwi   r3,0
    beq-    L02002e88
    cmpwi   r30,0
    beq-    L02002eb0
L02002e88:
    lwz     r3,68(r31)
    li      r4,1
    bl      ext_02030c98
    li      r0,0
    lbz     r12,37(r31)
    stb     r0,37(r31)
    stb     r12,38(r31)
    li      r12,1
    stw     r0,40(r31)
    stb     r12,39(r31)
L02002eb0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
