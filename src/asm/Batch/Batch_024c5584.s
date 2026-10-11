# Converted from the disassembly of 0x024c5584 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5584
Batch_024c5584:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r10,88(r31)
    cmpwi   r10,0
    bne-    L024c55fc
    lwz     r9,32(r31)
    lwz     r10,0(r9)
    lwz     r0,4(r10)
    cmpwi   r0,0
    bne-    L024c55fc
    lwz     r3,0(r9)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024c55fc
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024c55e0
    addi    r12,r12,4
L024c55e0:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-24276(r11)
    li      r4,0
    bl      ext_0247f854
    li      r0,1
    stb     r0,88(r31)
L024c55fc:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
