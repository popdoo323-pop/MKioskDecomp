# Converted from the disassembly of 0x02008780 (268 bytes). Name is a placeholder.
    .text
    .globl Batch_02008780
Batch_02008780:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    lis     r11,4119
    lwz     r11,3892(r11)
    lis     r29,4119
    mr      r28,r3
    li      r26,0
    cmpwi   r11,0
    addi    r29,r29,4548
    bne-    L0200883c
    lis     r31,4096
    lis     r12,4119
    lis     r30,4119
    addi    r31,r31,2176
    lwz     r12,3888(r12)
    li      r11,1
    addi    r30,r30,4564
    lis     r10,4119
    cmpwi   r12,0
    lis     r27,4117
    stw     r11,3892(r10)
    bne-    L02008814
    lwz     r8,1768(r27)
    stw     r26,0(r30)
    stw     r26,4(r30)
    addi    r0,r8,1
    stw     r8,12(r30)
    li      r12,1
    stw     r31,8(r30)
    lis     r3,4117
    lis     r9,4119
    stw     r0,1768(r27)
    addi    r3,r3,-31104
    stw     r12,3888(r9)
    bl      ext_0292e734
L02008814:
    lwz     r7,1768(r27)
    lis     r3,4117
    stw     r26,4(r29)
    addi    r0,r7,1
    stw     r31,8(r29)
    addi    r3,r3,-31092
    stw     r0,1768(r27)
    stw     r30,0(r29)
    stw     r7,12(r29)
    bl      ext_0292e734
L0200883c:
    lwz     r9,0(r28)
    lwz     r0,28(r9)
    mtctr   r0
    mr      r3,r28
    bctrl
    cmpwi   r3,0
    beq-    L02008874
L02008858:
    cmplw   r3,r29
    bne-    L02008868
    li      r3,1
    b       L02008878
L02008868:
    lwz     r3,0(r3)
    cmpwi   r3,0
    bne+    L02008858
L02008874:
    li      r3,0
L02008878:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
