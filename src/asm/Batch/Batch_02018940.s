# Converted from the disassembly of 0x02018940 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02018940
Batch_02018940:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r11,84(r30)
    lwz     r9,92(r11)
    cmpwi   r9,0
    li      r31,0
    beq-    L020189b0
    lwz     r3,12(r9)
    cmpwi   r3,0
    beq-    L020189b0
    lwz     r11,0(r3)
    lwz     r0,44(r11)
    mtctr   r0
    bctrl
    cmpwi   r3,0
    bne-    L020189b0
    lwz     r3,88(r30)
    li      r4,100
    bl      ext_02008eb0
    lwz     r12,92(r30)
    lwz     r0,280(r12)
    cmpw    r3,r0
    mfcr    r0
    srwi    r31,r0,31
L020189b0:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
