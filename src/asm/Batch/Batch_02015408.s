# Converted from the disassembly of 0x02015408 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_02015408
Batch_02015408:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,-3296(r12)
    lbz     r0,441(r12)
    cmpwi   r0,0
    li      r30,1
    bne-    L020154c0
    lis     r11,4117
    lwz     r11,3660(r11)
    lwz     r12,12(r11)
    lwz     r0,0(r12)
    cmplwi  r0,3
    lwz     r12,4(r12)
    ble-    L02015454
    addi    r12,r12,12
L02015454:
    lis     r9,4119
    lwzu    r0,4616(r9)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r0,0
    addi    r4,r4,4620
    bne-    L02015484
    lis     r10,4096
    li      r0,1
    addi    r10,r10,4716
    stw     r0,0(r9)
    stw     r10,0(r4)
L02015484:
    cmpwi   r31,0
    beq-    L020154a8
    lwz     r12,36(r31)
    lwz     r10,12(r12)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L020154ac
L020154a8:
    li      r31,0
L020154ac:
    lwz     r10,40(r31)
    lbz     r0,3472(r10)
    cmpwi   r0,0
    bne-    L020154c0
    li      r30,0
L020154c0:
    lwz     r0,20(r1)
    clrlwi  r3,r30,24
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
