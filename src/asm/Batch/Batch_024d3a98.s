# Converted from the disassembly of 0x024d3a98 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_024d3a98
Batch_024d3a98:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    lwz     r10,16(r12)
    lwz     r7,0(r10)
    cmplwi  r7,12
    lwz     r12,4(r10)
    ble-    L024d3ac8
    addi    r12,r12,48
L024d3ac8:
    lis     r11,4119
    lwzu    r8,3856(r11)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r8,0
    addi    r4,r4,26576
    bne-    L024d3af8
    lis     r0,4107
    li      r9,1
    addic   r0,r0,-18680
    stw     r9,0(r11)
    stw     r0,0(r4)
L024d3af8:
    cmpwi   r31,0
    beq-    L024d3b34
    lwz     r11,196(r31)
    lwz     r0,12(r11)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L024d3b34
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024d3b34:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
