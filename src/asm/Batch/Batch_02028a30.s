# Converted from the disassembly of 0x02028a30 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02028a30
Batch_02028a30:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    lwz     r12,12(r12)
    lwz     r0,0(r12)
    cmplwi  r0,3
    lwz     r11,4(r12)
    ble-    L02028a60
    addi    r11,r11,12
L02028a60:
    lis     r12,4119
    lwzu    r10,4616(r12)
    lis     r4,4119
    lwz     r31,0(r11)
    cmpwi   r10,0
    addi    r4,r4,4620
    bne-    L02028a90
    lis     r0,4096
    li      r11,1
    addic   r0,r0,11476
    stw     r11,0(r12)
    stw     r0,0(r4)
L02028a90:
    cmpwi   r31,0
    beq-    L02028ab4
    lwz     r9,36(r31)
    lwz     r10,12(r9)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L02028ab8
L02028ab4:
    li      r31,0
L02028ab8:
    lwz     r10,40(r31)
    lwz     r0,3476(r10)
    cntlzw  r9,r0
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    srwi    r3,r9,5
    addi    r1,r1,16
    blr
