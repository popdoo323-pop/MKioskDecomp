# Converted from the disassembly of 0x020267c8 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_020267c8
Batch_020267c8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r3
    stw     r28,8(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r12,44(r30)
    lwz     r11,56(r30)
    lwz     r28,0(r12)
    lhz     r4,132(r11)
    mr      r3,r28
    lhz     r5,134(r11)
    li      r31,0
    bl      ext_020062f0
    lwz     r9,52(r30)
    mr      r29,r3
    lhz     r5,134(r9)
    lhz     r4,132(r9)
    mr      r3,r28
    bl      ext_020062f0
    lwz     r11,48(r30)
    lhz     r4,132(r11)
    mr      r30,r3
    lhz     r5,134(r11)
    mr      r3,r28
    bl      ext_020062f0
    lha     r0,824(r30)
    lha     r10,824(r3)
    xori    r12,r0,2
    lha     r0,824(r29)
    cntlzw  r9,r12
    xori    r11,r10,2
    srwi    r10,r9,5
    cntlzw  r12,r11
    cmpwi   r0,2
    srwi    r0,r12,5
    beq-    L0202686c
    or.     r9,r10,r0
    beq-    L02026870
L0202686c:
    li      r31,1
L02026870:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
