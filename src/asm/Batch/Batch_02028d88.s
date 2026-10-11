# Converted from the disassembly of 0x02028d88 (228 bytes). Name is a placeholder.
    .text
    .globl Batch_02028d88
Batch_02028d88:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    li      r31,0
    mr      r30,r4
    stw     r29,12(r1)
    addi    r5,r1,8
    stw     r0,28(r1)
    lwz     r0,0(r30)
    mr      r29,r3
    mr      r4,r31
    stw     r0,8(r1)
    bl      ext_02028d34
    mr.     r4,r3
    bne-    L02028de8
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L02028de8:
    lwz     r3,80(r29)
    bl      ext_02008eb0
    lwz     r7,280(r29)
    cmpwi   r7,0
    li      r11,0
    ble-    L02028e4c
    lwz     r9,0(r30)
    mtctr   r7
    addi    r10,r29,76
L02028e0c:
    cmpwi   r9,2
    lwzu    r8,8(r10)
    beq-    L02028e28
    lwz     r12,8(r8)
    lwz     r0,104(r12)
    cmplw   r0,r9
    bne-    L02028e48
L02028e28:
    lwz     r0,12(r8)
    cmpwi   r0,0
    bne-    L02028e48
    cmplw   r3,r11
    bne-    L02028e44
    mr      r31,r8
    b       L02028e4c
L02028e44:
    addi    r11,r11,1
L02028e48:
    bdnz+   L02028e0c
L02028e4c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
